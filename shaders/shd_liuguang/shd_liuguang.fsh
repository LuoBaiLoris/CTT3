// fragment shader (流光高光拖尾的片段着色器)
precision mediump float;

varying vec2 v_vTexcoord;
uniform float u_time;
uniform vec2 u_resolution;
uniform vec4 u_color; // 基础颜色

// 产生一个简单的2D伪随机数
float random(vec2 st) {
    return fract(sin(dot(st.xy, vec2(12.9898, 78.233))) * 43758.5453123);
}

// 生成噪声
float noise(vec2 st) {
    vec2 i = floor(st);
    vec2 f = fract(st);

    float a = random(i);
    float b = random(i + vec2(1.0, 0.0));
    float c = random(i + vec2(0.0, 1.0));
    float d = random(i + vec2(1.0, 1.0));

    vec2 u = f * f * (3.0 - 2.0 * f);

    return mix(a, b, u.x) + (c - a) * u.y * (1.0 - u.x) + (d - b) * u.x * u.y;
}

// 生成流光高光拖尾效果
void main() {
    vec2 st = v_vTexcoord * u_resolution.xy / min(u_resolution.x, u_resolution.y);
    float t = u_time * 0.1;

    // 流光效果
    float n = noise(st * 3.0 + t);
    n += 0.5 * noise(st * 6.0 + t * 2.0);
    n += 0.25 * noise(st * 12.0 + t * 4.0);
    n = pow(n, 3.0);

    // 颜色渐变
    vec3 color = mix(vec3(u_color), vec3(1.0, 1.0, 1.0), n);

    gl_FragColor = vec4(color, n * u_color.a);
}