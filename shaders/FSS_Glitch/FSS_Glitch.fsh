varying vec2 v_vTexcoord;
varying vec4 v_vColour;
void main()
{
	vec2 t1 = vec2(v_vTexcoord.x+10.0,v_vTexcoord.y+10.0);
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, t1 );
}
