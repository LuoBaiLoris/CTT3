varying vec2 v_vTexcoord;
varying vec2 v_vPosition;
varying vec4 v_vColour;

const vec2 s_pos = vec2(0.5, 0.5); // 中心位置
const float s_radius = 0.7; // 半径
const vec4 s_col = vec4(0.0, 0.0, 0.0, 1.0); // 颜色
const float s_rd = 20.0; // 模糊程度

void main() {
    float dis = distance(v_vTexcoord, s_pos); // 计算当前位置到中心的距离
    if(dis > s_radius) {
        gl_FragColor = s_col; // 超过半径范围，显示s_col颜色
    } else if(dis > s_radius / s_rd) {
        float k = 1.0 - (dis - s_radius / s_rd) / (s_radius * (1.0 - 1.0 / s_rd));
        gl_FragColor = mix(s_col, v_vColour * texture2D(gm_BaseTexture, v_vTexcoord), k); // 混合颜色
    } else {
        gl_FragColor = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord); // 纹理颜色
    }
}