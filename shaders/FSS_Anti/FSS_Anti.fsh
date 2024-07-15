//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec4 clr = texture2D( gm_BaseTexture, v_vTexcoord );
    gl_FragColor = vec4(1.0-clr.r,1.0-clr.g,1.0-clr.b,1.0);
}
