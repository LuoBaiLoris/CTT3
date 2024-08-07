//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float offset;
uniform float size;
uniform float spd;


void main()
{
	vec2 pos = v_vTexcoord + sin(v_vTexcoord.y * spd + offset) * size;
	vec4 Color = texture2D( gm_BaseTexture, pos);
	if(pos.x < 0.0 || pos.x > 1.0){
		Color = vec4(0.0, 0.0, 0.0, Color.a);
	}
    gl_FragColor = Color;
}
