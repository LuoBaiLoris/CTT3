// vertex shader (流光高光拖尾的顶点着色器)
attribute vec2 in_Position;
attribute vec2 in_TextureCoord;

varying vec2 v_vTexcoord;

void main() {
    gl_Position = vec4(in_Position, 0.0, 1.0);
    v_vTexcoord = in_TextureCoord;
}