//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float radius;
uniform vec2 size;
uniform bool bm_add;
float PI = 3.1415;
float sigma = radius / 3.0;
float for_range = radius;
float for_add = ceil(radius / 5.0);
//uniform float gap;

void main() {
	vec2 tex = v_vTexcoord;
	vec2 pos = tex * size;
	vec4 color = vec4(0.0);//texture2D(gm_BaseTexture, tex);
	float gause_sum = 0.0;
	for(float i = -for_range; i <= for_range; i += for_add) {
		for(float j = -for_range; j <= for_range; j += for_add) {
			float gause = 1.0 / (2.0 * PI * sigma * sigma) * exp(-(i * i + j * j) / (2.0 * sigma * sigma));
			vec2 pos_tmp = pos + vec2(i, j);
			vec2 tex_tmp = pos_tmp / size;
			color += texture2D(gm_BaseTexture, tex_tmp) * gause;
			gause_sum += gause;
			//color = mix(color, texture2D(gm_BaseTexture, v_vTexcoord + vec2(i, j) / vec2(640.0, 480.0)), 0.5);
		}
	}
	if(bm_add) color.rgb *= radius / 10.0 + 1.0;
	color /= gause_sum;
    gl_FragColor = v_vColour * color;
	//gl_FragColor.rgb *= gl_FragColor.a;
	//gl_FragColor.a = 1.0;
}
