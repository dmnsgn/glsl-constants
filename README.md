# glsl-constants

[![npm version](https://img.shields.io/npm/v/glsl-constants)](https://www.npmjs.com/package/glsl-constants)
[![stability-stable](https://img.shields.io/badge/stability-stable-green.svg)](https://www.npmjs.com/package/glsl-constants)
[![npm minzipped size](https://img.shields.io/bundlephobia/minzip/glsl-constants)](https://bundlephobia.com/package/glsl-constants)
[![dependencies](https://img.shields.io/librariesio/release/npm/glsl-constants)](https://github.com/dmnsgn/glsl-constants/blob/main/package.json)
[![types](https://img.shields.io/npm/types/glsl-constants)](https://github.com/microsoft/TypeScript)
[![Conventional Commits](https://img.shields.io/badge/Conventional%20Commits-1.0.0-fa6673.svg)](https://conventionalcommits.org)
[![styled with prettier](https://img.shields.io/badge/styled_with-Prettier-f8bc45.svg?logo=prettier)](https://github.com/prettier/prettier)
[![linted with eslint](https://img.shields.io/badge/linted_with-ES_Lint-4B32C3.svg?logo=eslint)](https://github.com/eslint/eslint)
[![license](https://img.shields.io/github/license/dmnsgn/glsl-constants)](https://github.com/dmnsgn/glsl-constants/blob/main/LICENSE.md)

Common GLSL math constants (with 11 decimals) available both as ES modules strings and as GLSL files for use with glslify.

[![paypal](https://img.shields.io/badge/donate-paypal-informational?logo=paypal)](https://paypal.me/dmnsgn)
[![coinbase](https://img.shields.io/badge/donate-coinbase-informational?logo=coinbase)](https://commerce.coinbase.com/checkout/56cbdf28-e323-48d8-9c98-7019e72c97f3)
[![twitter](https://img.shields.io/twitter/follow/dmnsgn?style=social)](https://twitter.com/dmnsgn)

## Installation

```bash
npm install glsl-constants
```

## Usage

### ESM

```js
import * as glslConstants from "glsl-constants";
import * as glslRotate from "glsl-rotate";

const shader = /* glsl */ `
${glslConstants.GAMMA}
${glslConstants.RECIPROCAL_GAMMA}
${glslConstants.TAU}
${glslConstants.PI}
${glslConstants.HALF_PI}
${glslConstants.QUARTER_PI}
${glslConstants.RECIPROCAL_PI}
${glslConstants.RECIPROCAL_TAU}
${glslConstants.TO_RADIANS}
${glslConstants.TO_DEGREES}

// ...

vec3 toGamma(vec3 v) {
  return pow(v, vec3(RECIPROCAL_GAMMA));
}

${glslRotate.rotate}

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
`;
```

### glslify

```glsl
#pragma glslify: GAMMA = require(glsl-constants/GAMMA)
#pragma glslify: TAU = require(glsl-constants/TAU)
#pragma glslify: PI = require(glsl-constants/PI)
#pragma glslify: HALF_PI = require(glsl-constants/HALF_PI)
#pragma glslify: QUARTER_PI = require(glsl-constants/QUARTER_PI)
#pragma glslify: PHI = require(glsl-constants/PHI)
#pragma glslify: RECIPROCAL_PI = require(glsl-constants/RECIPROCAL_PI)
#pragma glslify: RECIPROCAL_TAU = require(glsl-constants/RECIPROCAL_TAU)
#pragma glslify: TO_RADIANS = require(glsl-constants/TO_RADIANS)
#pragma glslify: TO_DEGREES = require(glsl-constants/TO_DEGREES)

// ...

vec3 toGamma(vec3 v) {
  return pow(v, vec3(RECIPROCAL_GAMMA));
}

#pragma glslify: rotate = require(glsl-rotate)

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
```

## License

MIT. See [license file](https://github.com/dmnsgn/glsl-constants/blob/main/LICENSE.md).
