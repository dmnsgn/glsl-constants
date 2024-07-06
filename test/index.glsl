#pragma glslify: GAMMA = require(../GAMMA)
#pragma glslify: TAU = require(../TAU)
#pragma glslify: PI = require(../PI)
#pragma glslify: HALF_PI = require(../HALF_PI)
#pragma glslify: QUARTER_PI = require(../QUARTER_PI)
#pragma glslify: PHI = require(../PHI)
#pragma glslify: RECIPROCAL_PI = require(../RECIPROCAL_PI)
#pragma glslify: RECIPROCAL_TAU = require(../RECIPROCAL_TAU)
#pragma glslify: TO_RADIANS = require(../TO_RADIANS)
#pragma glslify: TO_DEGREES = require(../TO_DEGREES)

// ...

vec3 toGamma(vec3 v) {
  return pow(v, vec3(RECIPROCAL_GAMMA));
}

#pragma glslify: rotate = require(glsl-rotate/rotate)

void main() {
  vec2 p2d = vec2(1.0, 0.0);
  p2d = rotate(p2d, TAU);
  p2d = rotate(p2d, PI);
  p2d = rotate(p2d, HALF_PI);
  p2d = rotate(p2d, QUARTER_PI);
  p2d = rotate(p2d, PHI);
  p2d = rotate(p2d, RECIPROCAL_PI);
  p2d = rotate(p2d, RECIPROCAL_TAU);
  p2d = rotate(p2d, 90.0 * TO_RADIANS);

  // ...
  gl_FragColor.rgb = toGamma(color.rgb);
}
