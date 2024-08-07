uniform float iGlobalTime; 
uniform vec3 iResolution; 
varying vec2 fragCoord; 
vec3 drawImage(vec2 uv,float speed){
    float ang=iGlobalTime+(speed*-(sin(iGlobalTime)*.5+.5));
    mat2 rot=mat2(cos(ang),-sin(ang),sin(ang),cos(ang));
    uv=rot*uv;
    
    vec3 col=vec3(.5);
    vec2 w=uv-vec2(-.1,-.25);
    vec2 b=uv-vec2(.1,.25);
    
    float m=uv.x*7.-sin(uv.y*3.14*2.-3.14);
    m=smoothstep(-.2,.2,m);
    
    col*=mix(2.-smoothstep(.1+.35*(sin(iGlobalTime)*.5+.5),.5,length(uv)),smoothstep(.1+.35*(sin(iGlobalTime)*.5+.5),.5,length(uv)),m);
    
    col+=vec3(.001/dot(b,b));
    col+=vec3(.001/dot(w,w))*vec3(-1.);
    return col;
}

vec2 fixUV(vec2 st){
    if(iResolution.x>iResolution.y){
        st.x*=iResolution.x/iResolution.y;
    }
    else{
        st.y*=iResolution.y/iResolution.x;
    }
    return st;
}

void main( void )
{
    vec2 uv = fragCoord/iResolution.xy;
    uv-=0.5;
    uv=fixUV(uv);
    
    vec3 col = vec3(0.0);
    float a=.5;
    for(float i=0.;i<40.;i++){
        col+=drawImage(uv,(float(i)+1.)*.1)*a;
        a*=.5;
    }
   
    gl_FragColor = vec4(col,1.0);
}