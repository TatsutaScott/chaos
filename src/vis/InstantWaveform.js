// Code borrowed from Jon Froehlich
// http://makeabilitylab.io/

import SoundVisualizer from "./SoundVis";

class InstantWaveform extends SoundVisualizer {
  constructor(p, palette, length = 1) {
    super(p, 0, 0, p.width, p.height, palette.bg, palette.fg, length);
    this.i_color = palette.i;
    this.waveform = null;
  }

  update(waveform) {
    this.waveform = waveform.slice();
  }

  draw() {
    if (this.waveform) {
      // draw background
      this.p.clear();
      this.draw_grid(6);

      // draw waveform
      this.p.beginShape();
      this.p.noFill();
      this.p.stroke(this.f_color);
      for (let i = 0; i < this.waveform.length; i++) {
        let x = this.p.map(i, 0, this.waveform.length, this.x, this.x + this.w);
        let y = this.p.map(this.waveform[i], -1, 1, this.getBottom(), this.y);
        this.p.vertex(x, y);
      }

      this.p.endShape();
    }
  }

  draw_grid(n) {
    this.p.push();

    this.p.drawingContext.setLineDash([1, 2]);
    this.p.stroke(this.i_color);
    for (let i = 0; i <= n; i++) {
      const y = this.p.map(i / n, 0, 1, 0, this.h) + this.y;
      this.p.line(this.x, y, this.x + this.w, y);
    }
    this.p.pop();
  }
}

export default InstantWaveform;
