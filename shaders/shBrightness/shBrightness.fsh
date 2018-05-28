//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float brightness;

void main()
{
	float height = v_vTexcoord.y;
	vec4 brightnessColour = v_vColour + vec4(brightness - height*0.05, brightness - height*0.05, brightness - height*0.05, 0);
    gl_FragColor = brightnessColour * texture2D( gm_BaseTexture, v_vTexcoord );
}
