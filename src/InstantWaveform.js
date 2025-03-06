// Code borrowed from Jon Froehlich
// http://makeabilitylab.io/

import SoundVisualizer from "./SoundVis";

class InstantWaveform extends SoundVisualizer {
  constructor(p, x, y, w, h, palette, length, padding = 20) {
    super(
      p,
      x + padding,
      y + padding,
      w - 2 * padding,
      h - 2 * padding,
      palette.bg,
      palette.fg,
      length
    );
    this.i_color = palette.i;
    this.waveform = null;
  }

  update(waveform) {
    this.waveform = waveform.slice();
  }

  draw() {
    if (this.waveform) {
      this.p.push();

      // draw background
      this.p.stroke(this.f_color);
      this.p.strokeWeight(1);
      this.draw_grid(6);

      // draw waveform
      this.p.noFill();
      this.p.rect(this.x, this.y, this.w, this.h);
      this.p.beginShape();

      for (let i = 0; i < this.waveform.length; i++) {
        let x = this.p.map(i, 0, this.waveform.length, this.x, this.x + this.w);
        let y = this.p.map(this.waveform[i], -1, 1, this.getBottom(), this.y);
        this.p.vertex(x, y);
      }

      this.p.endShape();
      this.p.pop();
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
