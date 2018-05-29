//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float brightness;

void main()
{
	float height = v_vTexcoord.y;
	float left = -v_vTexcoord.x;
	vec4 brightnessColour = v_vColour + vec4(brightness - left*0.05 - height*0.05, brightness - left*0.05 - height*0.05, brightness - left*0.05 - height*0.05, 0);
    gl_FragColor = brightnessColour * texture2D( gm_BaseTexture, v_vTexcoord );
}
