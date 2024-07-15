varying vec2 v_vTexcoord;
varying vec4 v_vColour;

bool is_black(vec4 clr){
	return ((clr.r==0.0&&clr.b==0.0&&clr.g==0.0)||(clr.a==0.0));
}

void main(){
    vec4 self_clr = texture2D(gm_BaseTexture, v_vTexcoord);
	if (!is_black(self_clr)){gl_FragColor = vec4(self_clr.r*self_clr.a,self_clr.g*self_clr.a,self_clr.b*self_clr.a,1.0);}
	else discard;
}