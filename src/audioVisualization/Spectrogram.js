import SoundVisualizer from "./SoundVis";

class Spectrogram extends SoundVisualizer {
  constructor(p, x, y, w, h, palette, length, padding = 20) {
    super(
      p,
      x + padding,
      y + padding,
      w - padding * 2,
      h - padding * 2,
      palette.bg,
      palette.fg,
      length
    );

    // the spectrogram works by drawing on offscreen graphics
    // which is crucial to performance! the idea here is that we
    // draw each spectrum buffer once and only once to the offscreen
    // buffer and then just "paint" this image to the screen (which is fast)
    // we need two offscreen buffers to support our scrolling effect.
    this.offscreenGfxBuffer1 = this.p.createGraphics(
      w - padding * 2,
      h - padding * 2
    );
    this.offscreenGfxBuffer2 = this.p.createGraphics(
      w - padding * 2,
      h - padding * 2
    );

    this.offscreenGfxBuffer1.x = 0;
    this.offscreenGfxBuffer2.x = this.offscreenGfxBuffer1.width;

    this.resetGraphicsBuffer(this.offscreenGfxBuffer1);
    this.resetGraphicsBuffer(this.offscreenGfxBuffer2);
    this.spectrum = null;
  }

  resetGraphicsBuffer(gfxBuffer) {
    gfxBuffer.push();
    gfxBuffer.background(this.b_color);
    gfxBuffer.pop();
  }

  update(spectrum) {
    this.spectrum = spectrum; // grab cur ref to spectrum

    // convert buffer index to x pixel position in offscreen buffer
    let xBufferVal = this.p.map(
      this.bufferIndex,
      0,
      this.getXAxisLengthInSamples(),
      0,
      this.w
    );
    let xVal = xBufferVal - this.p.int(xBufferVal / this.w) * this.w;

    let selectOffscreenBuffer = this.p.int(xBufferVal / this.w) % 2;
    let offScreenBuffer = this.offscreenGfxBuffer1;

    // TODO: add in a clear for the offscreen background?
    if (xBufferVal > this.w) {
      if (selectOffscreenBuffer == 0) {
        offScreenBuffer = this.offscreenGfxBuffer1;
        this.offscreenGfxBuffer1.x = this.w - xVal;
        this.offscreenGfxBuffer2.x = this.w - (xVal + this.w);
      } else {
        offScreenBuffer = this.offscreenGfxBuffer2;
        this.offscreenGfxBuffer1.x = this.w - (xVal + this.w);
        this.offscreenGfxBuffer2.x = this.w - xVal;
      }
    }

    offScreenBuffer.push();
    offScreenBuffer.strokeWeight(1);
    offScreenBuffer.noFill();

    let bufferLengthInXPixels = this.convertBufferLengthToXPixels(
      spectrum.length
    );
    for (let i = 0; i < spectrum.length; i++) {
      let y = this.p.map(i, 0, spectrum.length, this.h, 0);
      let col = this.p.map(
        spectrum[i],
        0,
        255,
        this.p.blue(this.b_color),
        this.p.blue(this.f_color)
      );

      offScreenBuffer.stroke(col);

      if (bufferLengthInXPixels <= 1) {
        offScreenBuffer.point(xVal, y);
      } else {
        offScreenBuffer.line(xVal, y, xVal + bufferLengthInXPixels, y);
      }
    }

    offScreenBuffer.pop();
    super.update(spectrum);
  }

  draw() {
    this.p.push();
    this.p.clip(() => {
      this.p.rect(this.x, this.y, this.w, this.h, 4);
    });
    this.p.translate(this.x, this.y);
    // draw our offscreen buffers to the screen!
    this.p.image(this.offscreenGfxBuffer1, this.offscreenGfxBuffer1.x, 0);
    this.p.image(this.offscreenGfxBuffer2, this.offscreenGfxBuffer2.x, 0);
    this.p.pop();

    this.p.noFill();
    this.p.stroke(this.f_color);
    this.p.rect(this.x, this.y, this.w, this.h, 4);
  }
}

export default Spectrogram;
