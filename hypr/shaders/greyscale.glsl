
uniform sampler2D textureUnit;

// Range from 0.0f to 1.0
uniform float intensity = 1.0;

in vec2 texCoord;

out vec4 fragColour;

const vec3 GREY_WEIGHTS = vec3(0.299, 0.587, 0.114);

void main()
{
	vec4 pixel = texture(textureUnit, texCoord);

	// Convert pixel colour to greyscale
	vec3 greyResult = vec3(dot(pixel.rgb, GREY_WEIGHTS));

	fragColour.rgb = mix(pixel.rgb, greyResult, intensity);
	fragColour.a = pixel.a;
}
