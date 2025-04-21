// Code borrowed from Jon Froehlich
// http://makeabilitylab.io/

import Rectangle from "./Rectangle";

class SoundVisualizer extends Rectangle {
  constructor(p, x, y, w, h, b_color, f_color, length) {
    super(x, y, w, h);
    this.p = p;
    this.b_color = b_color;
    this.f_color = f_color;

    this.samplingRate = this.p.sampleRate();
    this.length = length;

    this.bDrawAxes = true;

    this.xTicks = [];
    this.tickLength = 3; // in pixels
    this.axisLabelsTextSize = 10;
    let numXAxisTicks = 4;
    this.xTickEveryNSec = length / numXAxisTicks;
    for (
      let xTickInSecs = 0;
      xTickInSecs < length;
      xTickInSecs += this.xTickEveryNSec
    ) {
      this.xTicks.push(xTickInSecs);
    }

    this.hasUpdateEverBeenCalled = false;
    this.bufferIndex = 0;
    this.curBuffer = null;
  }

  update(buffer) {
    this.curBuffer = buffer;

    if (this.hasUpdateEverBeenCalled == false) {
      // Helpful to understand length of fft buffer for debugging purposes
      let bufferLengthInXPixels = this.convertBufferLengthToXPixels(
        buffer.length
      );
      this.p.print(
        "The buffer segment is " +
          buffer.length +
          " samples, which is " +
          this.p.nfc(buffer.length / this.samplingRate, 2) +
          " secs and " +
          this.p.nfc(bufferLengthInXPixels, 2) +
          " x pixels"
      );
      this.hasUpdateEverBeenCalled = true;
    }

    this.bufferIndex += buffer.length;
  }

  getXAxisLengthInSeconds() {
    return this.length;
  }

  getXAxisLengthInSamples() {
    return this.length * this.samplingRate;
  }

  getNumSamplesInOnePixel() {
    return this.p.int(this.getXAxisLengthInSamples() / this.w);
  }

  getNumSecondsInOnePixel() {
    return this.getXAxisLengthInSeconds() / this.w;
  }

  getMinXAsTimeInSecs() {
    return this.convertBufferIndexToTime(this.getMinXAsSampleIndex());
  }

  getMaxXAsTimeInSecs() {
    return this.convertBufferIndexToTime(this.getMaxXAsSampleIndex());
  }

  getMinXAsSampleIndex() {
    if (this.bufferIndex < this.getXAxisLengthInSamples()) {
      return 0;
    }
    return this.bufferIndex - this.getXAxisLengthInSamples();
  }

  getMaxXAsSampleIndex() {
    if (this.bufferIndex < this.getXAxisLengthInSamples()) {
      return this.getXAxisLengthInSamples();
    }
    return this.bufferIndex;
  }

  convertBufferLengthToXPixels(bufferLength) {
    return (bufferLength / this.getXAxisLengthInSamples()) * this.w;
  }

  convertBufferIndexToTime(bufferIndex) {
    return bufferIndex / this.samplingRate;
  }

  getXPixelFromSampleIndex(sampleIndex) {
    let xVal = this.p.map(
      sampleIndex,
      this.getMinXAsSampleIndex(),
      this.getMaxXAsSampleIndex(),
      this.x,
      this.w
    );
    return xVal;
  }

  getXPixelFromTimeInSecs(timeInSecs) {
    let xVal = this.p.map(
      timeInSecs,
      this.getMinXAsTimeInSecs(),
      this.getMaxXAsTimeInSecs(),
      this.x,
      this.w
    );
    //print("xVal", xVal, "timeInSecs", timeInSecs, "minX", this.getMinXAsTimeInSecs(), "maxX", this.getMaxXAsTimeInSecs());
    return xVal;
  }

  drawXAxisTicksAndLabels() {
    this.p.push();

    // ** Draw x axis ticks and labels **
    let xTickBufferInPixels = 15;
    this.p.textSize(this.axisLabelsTextSize);
    for (let i = this.xTicks.length - 1; i >= 0; i--) {
      let xTickInSecs = this.xTicks[i];
      let xTick = this.getXPixelFromTimeInSecs(xTickInSecs);
      let y1 = this.getBottom() - this.tickLength;
      let y2 = this.getBottom();
      //print(xTick, y1, xTick, y2);

      this.p.stroke(this.f_color);
      this.p.noFill();
      this.p.line(xTick, y1, xTick, y2);

      this.p.noStroke();
      this.p.fill(this.f_color);
      let xTickStr = xTickInSecs + "s";
      let xTickStrWidth = this.p.textWidth(xTickStr);
      let xTickStrPos = xTick - xTickStrWidth / 2;
      this.p.text(
        xTickStr,
        xTickStrPos,
        this.getBottom() - (this.tickLength + 2)
      );

      if (xTick < this.x) {
        this.xTicks.push(
          this.xTicks[this.xTicks.length - 1] + this.xTickEveryNSec
        );
      }
    }

    this.p.pop();
  }
}

export default SoundVisualizer;
