# glsl-constants [![frozen](http://badges.github.io/stability-badges/dist/frozen.svg)](http://github.com/badges/stability-badges)

Common GLSL math constants (with 11 decimals).

## Installation

```bash
npm install glsl-constants
```

[![NPM](https://nodei.co/npm/glsl-constants.png)](https://nodei.co/npm/glsl-constants/)

## Usage

```glsl
#pragma glslify: PI = require(glsl-constants/PI)
#pragma glslify: TWO_PI = require(glsl-constants/TWO_PI)
#pragma glslify: HALF_PI = require(glsl-constants/HALF_PI)
#pragma glslify: QUARTER_PI = require(glsl-constants/QUARTER_PI)
#pragma glslify: PHI = require(glsl-constants/PHI)

// ...

#pragma glslify: rotate = require(glsl-constants)

void main() {
	vec2 p2d = vec2(1.0, 0.0);
	p2d = rotate(p2d, PI);
	p2d = rotate(p2d, TWO_PI);
	p2d = rotate(p2d, HALF_PI);
	p2d = rotate(p2d, QUARTER_PI);
	p2d = rotate(p2d, PHI);

	// ...
}
```

## License

MIT. See [license file](https://github.com/dmnsgn/glsl-constants/blob/master/LICENSE.md).
