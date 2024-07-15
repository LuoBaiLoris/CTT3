uniform float value;
varying vec2 fragCoord; 
void main()
{
	vec3 iResolution = vec3(640.0,480.0,1.0);

	vec2 uv = fragCoord.xy / iResolution.xy;
    float aspectRatio = iResolution.x / iResolution.y;
    float strength = value;
    
    vec2 intensity = vec2(strength*aspectRatio,strength*aspectRatio);

    vec2 coords = uv;
    coords = (coords - 0.5) * 2.0;		
		
    vec2 realCoordOffs;
    realCoordOffs.x = (1.0 - coords.y * coords.y) * intensity.y * (coords.x); 
    realCoordOffs.y = (1.0 - coords.x * coords.x) * intensity.x * (coords.y);
	
    vec2 fuv = (uv - realCoordOffs);
    //fuv.y = 1.0 - fuv.y;
    
    if(fuv.x < 0.0 || fuv.x > 1.0 || fuv.y < 0.0 || fuv.y > 1.0){
        gl_FragColor = vec4(0.0, 0.0, 0.0, 1.0);
    }else{
        vec4 color = texture2D(gm_BaseTexture, fuv);	 
    
        gl_FragColor = vec4(color);
    }
}