import ScrollingWaveform from "./ScrollingWaveform";
import InstantWaveform from "./InstantWaveform";
import Spectrogram from "./Spectrogram";
import Spectrum from "./Spectrum";

const text_offset = 15;
const FFTbins = 128;

class AudioVis {
  constructor(p, x, y, width, height, padding, colors) {
    this.fft = new p5.FFT(0, FFTbins);
    this.p = p;
    this.x = x;
    this.y = y;
    this.width = width;
    this.height = height;
    this.padding = padding;
    this.colors = colors;

    this.spectrum = new Spectrum(
      p,
      this.x,
      this.y + text_offset,
      this.width * 0.25,
      this.height * 0.5 - text_offset,
      colors,
      this.padding
    );

    this.instant_wave = new InstantWaveform(
      p,
      this.x,
      this.y + this.height * 0.5 + text_offset,
      this.width * 0.25,
      this.height * 0.5 - text_offset,
      colors,
      1,
      this.padding
    );

    this.scroll_wave = new ScrollingWaveform(
      p,
      this.x + this.width * 0.25,
      this.y + text_offset,
      this.width * 0.75,
      this.height - text_offset,
      colors,
      1,
      this.padding
    );
    this.spectrogram = new Spectrogram(
      p,
      this.x + this.width * 0.25,
      this.y + text_offset,
      this.width * 0.75,
      this.height - text_offset,
      colors,
      1,
      this.padding
    );
  }

  setFFTInput(node) {
    this.fft.setInput(node);
  }

  update() {
    this.fftSpectrum = this.fft.analyze();
    this.fftWaveform = this.fft.waveform();

    this.spectrogram.update(this.fftSpectrum);
    this.spectrum.update(this.fftSpectrum);
    this.scroll_wave.update(this.fftWaveform);
    this.instant_wave.update(this.fftWaveform);
  }

  draw() {
    this.spectrogram.draw();
    this.spectrum.draw();
    this.scroll_wave.draw();
    this.instant_wave.draw();
    this.drawLabels();
  }

  drawLabels() {
    this.p.push();
    this.p.textAlign(this.p.LEFT, this.p.TOP);

    this.p.text("spectrum____", this.x + this.padding, this.y + this.padding);

    this.p.text(
      "waveform____",
      this.x + this.padding,
      this.y + this.height * 0.5 + this.padding
    );
    this.p.text(
      "waveform____",
      this.x + this.width * 0.25 + this.padding,
      this.y + this.padding
    );
    this.p.pop();
  }
}

export default AudioVis;
