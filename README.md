# Image to GCode

Convert jpg, jpeg, png, gif to gcode with NodeJS.

- Generate GCode with absolute coordinates, finds a black pixel if you follow the trail.
- This version is faster previous versions.
- Find the shortest path to the next black pixel.

![img2gcode with CNC-ino](https://github.com/MaraniMatias/img2gcode/blob/master/ej-img2gcode.png)

### Installation

```bash
$ npm install img2gcode
```

## Quick Start

Depending on the configuration between tool and image height generates better code.

```Javascript
var img2gcode = require("img2gcode");

img2gcode
  .start({
    // It is mm
    toolDiameter: 2,
    scaleAxes: 700,
    deepStep: -1,
    whiteZ: 0,
    blackZ: -2,
    safeZ: 2,
    gcodeFile: 'output', // Name of gcode output file. If not provided, will not save the output, only returning the array when completed.
    image: __dirname + '/img-and-gcode/test.jpeg' // Or Buffer from base64 -> https://github.com/oliver-moran/jimp/issues/231
  }).then((data) => {
    console.log(data.config);
    console.log(data.dirgcode);
    console.log(data.gcode[0]);
  });
```

### Options

- `toolDiameter` (number) Tool diameter. **default:** 1
- `sensitivity` (number) Intensity sensitivity. 0 to 1. **default:** 0.95
- `scaleAxes` (number) Image height in mm. **default:** image.height equal mm
- `deepStep` (number) Depth per pass. **default:** -1
- `invest` { x: (boolean), y: (boolean) } **default:** {x: false, y: true}.
- `image` (string | Buffer) Image path, accepts JPEG JPG PNG GIF formats.
- `gcodeFile` {string} GCode file output name. Must be provided for Buffered images. On file images, if not provided, the name will be {image_name}.gcode
- `whiteZ` (number) White pixels. **default:** 0
- `blackZ` (number) Maximum depth (Black pixels).
- `safeZ` (number) Safe distance.
- `info` (string) Displays information. ["none" | "console" | "emitter"] **default:** none
- `feedrate` { work: (number), idle: (number) } Only the corresponding line is added. **default:** ''
- `laser` { commandPowerOn: (string), commandPowerOff: (string) } Is you set this options, Z command is will be ignore

### Events

Only if Options.info it is "emitter"

- `log` Displays information.
- `tick` Percentage of black pixels processed. 0 (0%) to 1 (100%).
- `error` Displays error.
- `complete` Emits at the end with "then".

### Method

- `then` This function is called to finish saving the file GCode and receives an object: { config , dirgcode }

### Examples

```javascript
var img2gcode = require("img2gcode");
var ProgressBar = require("progress"); // npm install progress
var bar = new ProgressBar("Analyze: [:bar] :percent :etas", { total: 100 });

img2gcode
  .start({
    // It is mm
    toolDiameter: 1,
    scaleAxes: 700,
    deepStep: -1,
    feedrate: { work: 1200, idle: 3000 },
    whiteZ: 0,
    blackZ: -2,
    safeZ: 1,
    info: "emitter", // "none" or "console" or "emitter"
    image: __dirname + "/img-and-gcode/test.png",
  })
  .on("log", (str) => {
    console.log(str);
  })
  .on("tick", (perc) => {
    bar.update(perc);
  })
  .then((data) => {
    console.log(data.dirgcode);
  });
```

**Config for laser options**

```javascript
const options = {
  // It is mm
  toolDiameter: 3,
  sensitivity: 0.9,
  scaleAxes: 128,
  feedrate: { work: 1200, idle: 3000 },
  deepStep: -1,
  laser: {
    commandPowerOn: "M04",
    commandPowerOff: "M05",
  },
  whiteZ: 0,
  blackZ: -3,
  safeZ: 1,
  info: "emitter",
  image: path.normalize(__dirname + imgFile),
};
```

### License.

I hope someone else will serve ([MIT](http://opensource.org/licenses/mit-license.php)).

Author: Marani Matias Ezequiel.

---

### Buy Me A Coffee ☕️

<p><img src="https://simpleicons.org/icons/bitcoin.svg" height="12" /> <b>Bitcoin</b></p>
<p>
  1N7dWTf1JcvYG2QwviyjwYMw6qY5agx9Qm
</p>
<p><img src="https://simpleicons.org/icons/ethereum.svg" height="12" /> <b>Ethereum</b></p>
  0x555d4510b4b3db02d81be5114919e7c8c4156b77
<p>
</p>
