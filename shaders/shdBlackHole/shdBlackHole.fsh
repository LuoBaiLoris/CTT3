precision mediump float;

varying vec2 v_vTexcoord;
varying vec4 v_vColour;


uniform float lensRadius; 
uniform float lensStrength; 
const float maxColorReduction = 1.3;

void main() {
    vec2 lensCenter = vec2(0.5, 0.5);
    vec2 toCurrent = v_vTexcoord - lensCenter;

    float distanceSquared = dot(toCurrent, toCurrent);
    if (distanceSquared < lensRadius * lensRadius) {
        float distance = sqrt(distanceSquared);
        vec2 normDist = normalize(toCurrent);
        float factor = (lensRadius - distance) * lensStrength;
        vec2 newTexCoord = v_vTexcoord + factor * normDist;

        vec4 sampledColor = texture2D(gm_BaseTexture, newTexCoord);

        // 根据扭曲强度调整颜色
		float reductionFactor;
		if (lensStrength != 0.0) {
		    reductionFactor = factor / (lensRadius * lensStrength);
		} else {
		    reductionFactor = 0.0;  // 或者您可以选择其他合适的默认值
		}
        gl_FragColor = mix(sampledColor, vec4(0.0, 0.0, 0.0, sampledColor.a), reductionFactor * lensStrength * maxColorReduction);
    } else {
        gl_FragColor = texture2D(gm_BaseTexture, v_vTexcoord);
    }
}
