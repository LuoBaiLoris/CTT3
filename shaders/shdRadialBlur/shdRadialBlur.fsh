//
// Simple passthrough fragment shader
//
varying vec4 v_vColour;
varying vec2 v_vTexcoord;

uniform float bufferRadius;
uniform float rd;
float saturate(float x)
{
    return clamp(x, 0.0, 1.0);
}

void main()
{
//----------------------------------------------------------
    vec2 center = vec2(0.5, 0.5); //模糊中心
    vec2 uv = v_vTexcoord - center;
    vec3 tempColor = vec3(0.0);
    float blurParams = distance(v_vTexcoord, center); 
	//float bufferRadius = 0.6; //缓冲距离（0-1）
    int level = 15; //模糊程度
    
    for (int j = 0; j < level; j++)
    {
        float factor = 1.0 - 0.01 * float(j) * saturate(blurParams / bufferRadius);
        vec2 offset = uv * factor;
        tempColor += texture2D(gm_BaseTexture, center + offset).rgb;
    }
    
    vec3 finalColor = tempColor / float(level);
//----------------------------------------------------------
	
	float rdCull = 20.0;
	vec3 maskC = vec3(0.0, 0.0, 0.0);
	//屏幕晕影
	if (blurParams > rd)
	{
		finalColor = maskC;
	}
	else if (blurParams < rd && blurParams > rd / rdCull)
	{
		float k = 1.0 - (blurParams - rd / rdCull) / (rd * (1.0 - 1.0 / rdCull));
		finalColor = mix(maskC, finalColor, k);
	}
	else 
	{
		finalColor = finalColor;
	}
    gl_FragColor = vec4(finalColor, 1.0);
}
