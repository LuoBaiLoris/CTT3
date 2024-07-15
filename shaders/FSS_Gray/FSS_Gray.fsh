varying vec2 v_vTexcoord;
varying vec4 uSampler;

void main(void) {
    vec4 color = texture2D(gm_BaseTexture, v_vTexcoord);
    float gray = (color.r + color.g + color.b) *color.a / 3.0;
    gl_FragColor = vec4(gray, gray, gray, 1.0);
}