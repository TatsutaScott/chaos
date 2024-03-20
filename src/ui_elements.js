/**Draws the cursor as a target along with its position
 * @param {{p5: Object, dark: Number, light: Number}} settings - settings for sketch including p5 drawing context, and colors
 */
export function cursor(settings) {
  const { p5, dark } = settings;
  p5.push();

  p5.stroke(dark);
  p5.noFill();
  p5.translate(p5.mouseX, p5.mouseY);

  //Cursor icon
  p5.line(-10, 0, 10, 0);
  p5.line(0, -10, 0, 10);
  p5.circle(0, 0, 10);

  //Mouse Position
  const x = (p5.mouseX / p5.width).toFixed(8);
  const y = (p5.mouseY / p5.height).toFixed(8);
  p5.text(`x: ${x}\ny: ${y}`, 10, 15);

  p5.pop();
}

/**Creates a point plot of all of the control points
 * @param {{p5: Object, dark: Number, light: Number}} settings - settings for sketch including p5 drawing context, and colors
 * @param {[Number]} points - array containing points
 * @param {Number} x - x value of topleft corner
 * @param {Number} y - y value of topleft corner
 * @param {Number} w - width
 * @param {Number} h - height
 * @param {Number} pad - inner padding
 */
export function point_plot(settings, points, x, y, w, h, pad = 20) {
  const { p5, dark, dev } = settings;
  p5.push();
  p5.stroke(dark);
  p5.noFill();

  //For positioning test purpose
  if (dev) p5.rect(x, y, w, h);

  //Title
  p5.translate(x + pad, y + pad);
  p5.text("plot___", 0, 0);

  //Plot structure
  p5.translate(0, 10);
  const plot_h = h - 10 - pad * 2;
  const plot_w = h - pad * 2;
  p5.rect(0, 0, plot_w, plot_h, 4); // outline
  p5.line(0, plot_h / 2, plot_w, plot_h / 2); // x-axis
  p5.line(plot_w / 2, 0, plot_w / 2, plot_h); // y-axis

  //Plot points
  p5.fill(150);
  if (points) {
    for (let i = 0; i < points.length; i += 2) {
      const point_x = points[i];
      const point_y = points[i + 1];
      p5.circle(point_x * plot_w, point_y * plot_h, 2);
      p5.text(i, point_x * plot_w + 5, point_y * plot_h + 2);
    }
  }

  p5.pop();
}

/**Draws a running graph of the amplitude of the output
 * @param {{p5: Object, dark: Number, light: Number}} settings - settings for sketch including p5 drawing context, and colors
 * @param {[Number]} amps - array containing amplitudes
 * @param {Number} x - x value of topleft corner
 * @param {Number} y - y value of topleft corner
 * @param {Number} w - width
 * @param {Number} h - height
 * @param {Number} pad - inner padding
 */
export function amp_plot(settings, amps, x, y, w, h, pad = 20) {
  const { p5, dark, dev } = settings;

  p5.push();
  p5.noFill();
  p5.stroke(dark);

  //For positioning test purpose
  if (dev) p5.rect(x, y, w, h);

  //label
  p5.translate(x + pad, y + pad);
  p5.text("amplitude___", 0, 0);

  //amp plot
  const plot_w = w - 2 * pad;
  const plot_h = h - 2 * pad - 10;
  p5.rect(0, 10, plot_w, plot_h, 4);

  p5.beginShape();
  for (let i = 0; i < amps.length; i++) {
    const pos_x = (i / (amps.length - 1)) * plot_w;
    p5.vertex(pos_x, p5.map(amps[i], -1, 1, 10, 10 + plot_h));
  }
  p5.endShape();

  p5.pop();
}

/**Writes out all of the points, their coordinates, and the cursors distance to the point
 * @param {{p5: Object, dark: Number, light: Number}} settings - settings for sketch including p5 drawing context, and colors
 * @param {[Number]} points - array containing points
 * @param {[Number]} dists - array containing distances
 * @param {Number} x - x value of topleft corner
 * @param {Number} y - y value of topleft corner
 * @param {Number} w - width
 * @param {Number} h - height
 * @param {Number} pad - inner padding
 */
export function numbers(settings, points, dists, cols, x, y, w, h, pad = 20) {
  const { p5, dark, dev } = settings;
  p5.push();
  p5.stroke(dark);
  p5.noFill();

  //For positioning test purpose
  if (dev) p5.rect(x, y, w, h);

  //title
  p5.translate(x + pad, y + pad);
  p5.text("points___     #: [x, y] distance", 0, 0);

  //numbers
  p5.translate(0, 20);
  const step_x = (w - pad * 2) / cols;
  const step_y = (h - pad * 2 - 20) / (dists.length / cols);

  for (let i = 0; i < dists.length; i++) {
    const r = i % (dists.length / cols); //row
    const c = Math.floor((i * cols) / dists.length); //column

    const coord_x = points[i * 2].toFixed(4);
    const coord_y = points[i * 2 + 1].toFixed(4);
    const string = `${i}: [${coord_x}, ${coord_y}] ${dists[i].toFixed(4)}`;
    p5.text(string, c * step_x, r * step_y);
  }

  p5.pop();
}

/**
 *
 * @param {{p5: Object, dark: Number, light: Number}} settings - settings for sketch including p5 drawing context, and colors
 * @param {[Number]} dists - array containing distances from point to cursor
 * @param {Number} x - x value of topleft corner
 * @param {Number} y - y value of topleft corner
 * @param {Number} w - width
 * @param {Number} h - height
 * @param {Number} pad - inner padding
 */
export function dist_plot(settings, dists, x, y, w, h, pad = 20) {
  const { p5, dark } = settings;
  p5.push();

  p5.translate(x + pad, y + pad);
  p5.noFill();
  p5.stroke(dark);

  const step_size = w / dists.length;
  for (let i = 0; i < dists.length; i++) {
    p5.rect(step_size * i, 0, step_size, dists[i] * h);
  }

  p5.pop();
}

export function controls(p5, x, y) {
  p5.push();

  p5.translate(x, y);
  p5.fill(150);
  p5.stroke(150);

  p5.rect(0, 0, 210, 70, 2);

  p5.fill(200);
  p5.stroke(200);

  p5.text("controls___", 10, 15);
  p5.text("scramble + new impulse: [click]", 10, 30);
  p5.text("mute: [m]", 10, 45);
  p5.text("reset: [r]", 10, 60);

  p5.pop();
}
