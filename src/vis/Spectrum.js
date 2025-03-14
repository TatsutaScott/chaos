// Code borrowed from Jon Froehlich
// http://makeabilitylab.io/

import Rectangle from "./Rectangle";

class InstantSpectrum extends Rectangle {
  // see: https://p5js.org/reference/#/p5.FFT
  constructor(p, palette) {
    super(0, 0, p.width, p.height);
    this.p = p;

    this.spectrum = null;
    this.samplingRate = this.p.sampleRate();

    // in secs, amount of spectrum history to save
    // this is used to calculate the average spectrum
    this.spectrumHistoryTime = 0.01;
    this.spectrumHistory = [];
    this.spectrumAvg = [];

    this.f_color = palette.fg;
    this.b_color = palette.bg;
    this.i_color = palette.i;
  }

  update(spectrum) {
    this.spectrum = spectrum;

    let bufferLengthInSecs = spectrum.length / this.samplingRate;
    let numOfHistoricalRecords = Math.floor(
      this.spectrumHistoryTime / bufferLengthInSecs
    );
    this.spectrumHistory.push(this.spectrum);

    if (this.spectrumHistory.length > numOfHistoricalRecords) {
      const deleteCount = this.spectrumHistory.length - numOfHistoricalRecords;
      this.spectrumHistory.splice(0, deleteCount);
    }

    // calculate average for each index

    let calculateVerticalSum = (r, a) => r.map((b, i) => a[i] + b);
    let spectrumSums = this.spectrumHistory.reduce(calculateVerticalSum);

    for (let i = 0; i < spectrumSums.length; i++) {
      this.spectrumAvg[i] = spectrumSums[i] / numOfHistoricalRecords;
    }
  }

  draw() {
    if (this.spectrum) {
      this.p.clear();

      this.draw_grid(10);
      this.drawSpectrum(this.spectrumAvg, this.f_color, this.f_color);
    }
  }

  drawSpectrum(spectrum, fillColor, strokeColor) {
    this.p.fill(fillColor);
    this.p.stroke(strokeColor);

    this.p.beginShape();
    this.p.vertex(this.getLeft(), this.getBottom());
    for (let i = 0; i < spectrum.length; i++) {
      let x = this.p.map(i, 0, spectrum.length, this.x, this.getRight());
      let y = this.p.map(spectrum[i], 0, 255, this.getBottom(), this.y);
      this.p.vertex(x, y);
    }
    this.p.vertex(this.getRight(), this.getBottom());
    this.p.endShape();
  }

  draw_grid(n) {
    this.p.push();
    this.p.drawingContext.setLineDash([1, 2]);
    this.p.stroke(this.i_color);
    for (let i = 0; i <= n; i++) {
      const x = this.p.map(i / n, 0, 1, 0, this.w) + this.x;
      this.p.line(x, this.y, x, this.y + this.h);
    }
    this.p.pop();
  }
}

export default InstantSpectrum;
