varying vec4 v_vColour;
varying vec2 v_vTexcoord;
uniform float iTime;
uniform vec2 iResolution;
vec2 iMouse=vec2(0.,0.);
void main()
{
	vec2 uv = v_vTexcoord;
	
	float w = (0.5 - (uv.x)) * (iResolution.x / iResolution.y);
    float h = 0.5 - uv.y;
	float distanceFromCenter = sqrt(w * w + h * h);
	
	float sinArg = distanceFromCenter * 10.0 - iTime * 10.0;
	float slope = cos(sinArg) ;
	vec4 color = texture2D(gm_BaseTexture, uv + normalize(vec2(w, h)) * slope * 0.05);
	
	gl_FragColor = v_vColour * color;
}