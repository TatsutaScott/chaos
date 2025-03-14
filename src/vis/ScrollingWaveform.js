// Code borrowed from Jon Froehlich
// http://makeabilitylab.io/

import SoundVisualizer from "./SoundVis";

class ScrollingWaveform extends SoundVisualizer {
  constructor(p, palette, length = 1) {
    super(p, 0, 0, p.width, p.height, palette.bg, palette.fg, length);

    // the scrolling waveform works by drawing on offscreen graphics
    // which is crucial to performance! the idea here is that we
    // draw each spectrum buffer once and only once to the offscreen
    // buffer and then just "paint" this image to the screen (which is fast)
    // we need two offscreen buffers to support our scrolling effect.
    this.offscreenGfxBuffer1 = this.p.createGraphics(this.w, this.h);
    this.offscreenGfxBuffer2 = this.p.createGraphics(this.w, this.h);

    this.offscreenGfxBuffer1.x = 0;
    this.offscreenGfxBuffer2.x = this.offscreenGfxBuffer1.width;

    this.resetGraphicsBuffer(this.offscreenGfxBuffer1);
    this.resetGraphicsBuffer(this.offscreenGfxBuffer2);

    this.previousOffScreenBuffer = this.offscreenGfxBuffer1;
  }

  resetGraphicsBuffer(gfxBuffer) {
    gfxBuffer.strokeWeight(1);
    gfxBuffer.stroke(this.f_color);
    gfxBuffer.noFill();
  }

  setupAndGetOffScreenBuffer(xBufferVal) {
    let selectOffscreenBuffer = Math.floor(xBufferVal / this.w) % 2;
    let offScreenBuffer = this.offscreenGfxBuffer1;
    let xVal = xBufferVal - Math.floor(xBufferVal / this.w) * this.w;

    if (xBufferVal >= this.w) {
      // if we're here, then we need to start moving the offscreen gfx buffers
      // and swapping between them
      if (selectOffscreenBuffer == 0) {
        offScreenBuffer = this.offscreenGfxBuffer1;

        let newXPosForGfxBuffer1 = this.w - xVal;
        if (this.offscreenGfxBuffer1.x < newXPosForGfxBuffer1) {
          // if we're here, then this graphics buffer just looped around
          // and needs to be cleared
          this.resetGraphicsBuffer(this.offscreenGfxBuffer1);
        }

        this.offscreenGfxBuffer1.x = newXPosForGfxBuffer1;
        this.offscreenGfxBuffer2.x = this.w - (xVal + this.w);
      } else {
        offScreenBuffer = this.offscreenGfxBuffer2;

        let newXPosForGfxBuffer2 = this.w - xVal;
        if (this.offscreenGfxBuffer2.x < newXPosForGfxBuffer2) {
          // if we're here, then this graphics buffer just looped around
          // and needs to be cleared
          this.resetGraphicsBuffer(this.offscreenGfxBuffer2);
        }

        this.offscreenGfxBuffer1.x = this.w - (xVal + this.w);
        this.offscreenGfxBuffer2.x = newXPosForGfxBuffer2;
      }
    }

    return offScreenBuffer;
  }

  update(waveform) {
    let xAxisLengthInSamples = this.getXAxisLengthInSamples();
    let xIndex = this.bufferIndex;
    let xIndexWithinAxis =
      xIndex - Math.floor(xIndex / xAxisLengthInSamples) * xAxisLengthInSamples;
    let xBufferVal = this.p.map(xIndex, 0, xAxisLengthInSamples, 0, this.w);
    let offScreenBuffer = this.setupAndGetOffScreenBuffer(xBufferVal);
    let prevOffScreenBuffer = offScreenBuffer;

    let swappedBuffers = false;

    offScreenBuffer.stroke(this.f_color);
    offScreenBuffer.beginShape();
    for (let waveformVal of waveform) {
      xBufferVal = this.p.map(xIndex, 0, xAxisLengthInSamples, 0, this.w);
      xIndexWithinAxis =
        xIndex -
        Math.floor(xIndex / xAxisLengthInSamples) * xAxisLengthInSamples;
      offScreenBuffer = this.setupAndGetOffScreenBuffer(xBufferVal);

      if (prevOffScreenBuffer != offScreenBuffer) {
        prevOffScreenBuffer.endShape();

        offScreenBuffer.stroke(this.f_color);

        offScreenBuffer.beginShape();
        prevOffScreenBuffer = offScreenBuffer;
        swappedBuffers = true;
      } else {
        swappedBuffers = false;
      }

      let x = this.p.map(xIndexWithinAxis, 0, xAxisLengthInSamples, 0, this.w);
      let y = this.p.map(waveformVal, -1, 1, this.getBottom(), this.y);

      offScreenBuffer.vertex(x, y);

      xIndex++;
    }
    offScreenBuffer.endShape();
    this.previousOffScreenBuffer = offScreenBuffer;
    super.update(waveform);
  }

  draw() {
    this.p.image(this.offscreenGfxBuffer1, this.offscreenGfxBuffer1.x, 0);
    this.p.image(this.offscreenGfxBuffer2, this.offscreenGfxBuffer2.x, 0);
  }
}

export default ScrollingWaveform;
