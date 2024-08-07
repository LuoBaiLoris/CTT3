uniform vec2 iResolution;
uniform float iTime;
float dist(vec2 p0, vec2 pf){
	return sqrt((pf.x-p0.x)*(pf.x-p0.x)+(pf.y-p0.y)*(pf.y-p0.y));
}

void main()
{
    float d = dist(iResolution.xy*0.5,gl_FragCoord.xy)*(sin(iTime)+1.5)*0.003;
	gl_FragColor = mix(vec4(1.0, 1.0, 1.0, 1.0), vec4(0.0, 0.0, 0.0, 1.0), d);
}