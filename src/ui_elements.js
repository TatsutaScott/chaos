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
    p5.vertex(pos_x, p5.map(amps[i], -1, 1, 10, 10 + plot_h, true));
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
export function details(settings, points, dists, cols, x, y, w, h, pad = 20) {
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
  const step_y = (h - pad * 2 - 10) / (dists.length / cols);

  for (let i = 0; i < dists.length; i++) {
    const r = i % Math.ceil(dists.length / cols); //row
    const c = Math.floor((i * cols) / dists.length); //column

    const coord_x = points[i * 2].toFixed(4);
    const coord_y = points[i * 2 + 1].toFixed(4);
    const string = `${i}: [${coord_x}, ${coord_y}] ${dists[i].toFixed(4)}`;
    p5.text(string, c * step_x, r * step_y);
  }

  p5.pop();
}

/**Plots a bar graph of the distances
 * @param {{p5: Object, dark: Number, light: Number}} settings - settings for sketch including p5 drawing context, and colors
 * @param {[Number]} dists - array containing distances from point to cursor
 * @param {Number} x - x value of topleft corner
 * @param {Number} y - y value of topleft corner
 * @param {Number} w - width
 * @param {Number} h - height
 * @param {Number} pad - inner padding
 */
export function dist_plot(settings, dists, x, y, w, h, pad = 20) {
  const { p5, dark, light, dev } = settings;
  p5.push();
  p5.noFill();
  p5.stroke(dark);

  //For positioning test purpose
  if (dev) p5.rect(x, y, w, h);

  //title
  p5.translate(x + pad, y + pad);
  p5.text("distances___", 0, 0);

  //plot
  p5.translate(0, 10);
  const plot_w = w - pad * 2;
  const plot_h = h - pad * 2 - 10;
  if (dev) p5.rect(0, 0, plot_w, plot_h);

  p5.fill(dark);
  p5.stroke(light);
  const step_size = plot_w / dists.length;
  for (let i = 0; i < dists.length; i++) {
    p5.rect(step_size * i, 0, step_size, dists[i] * plot_h);
  }

  p5.pop();
}

/**Adds controls and piece information
 * @param {{p5: Object, dark: Number, light: Number}} settings - settings for sketch including p5 drawing context, and colors
 * @param {Number} x - x value of topleft corner
 * @param {Number} y - y value of topleft corner
 * @param {Number} w - width
 * @param {Number} h - height
 * @param {Number} pad - inner padding
 */
export function info(settings, x, y, w, h, pad = 20) {
  const { p5, dark, light, dev } = settings;
  p5.push();
  p5.noFill();
  p5.stroke(dark);

  //For positioning test purpose
  if (dev) p5.rect(x, y, w, h);

  p5.translate(x + pad, y + pad);

  p5.textAlign(p5.RIGHT);
  p5.text("controls___", w - pad * 2, 0);
  p5.text("scramble + new impulse: [click]", w - pad * 2, 15);
  p5.text("mute / unmute: [space]", w - pad * 2, 30);
  p5.text("reset: [r]", w - pad * 2, 45);

  p5.text(
    "'a handful of sand' developer: Scott Tatsuta  date: 2024",
    w - pad * 2,
    h - pad * 2
  );

  p5.pop();
}

/**write out extra info derived from all of the
 * @param {{p5: Object, dark: Number, light: Number}} settings - settings for sketch including p5 drawing context, and colors
 * @param {[Number]} points - array containing points
 * @param {[Number]} dists - array containing distances from point to cursor
 * @param {[Number]} amps - array containing amplitudes
 * @param {Number} x - x value of topleft corner
 * @param {Number} y - y value of topleft corner
 * @param {Number} w - width
 * @param {Number} h - height
 * @param {Number} pad - inner padding
 */
export function extra_info(
  settings,
  points,
  dists,
  amps,
  x,
  y,
  w,
  h,
  pad = 20
) {
  const { p5, dark, light, dev } = settings;

  const sorted_dists = [...dists];
  sorted_dists.sort((a, b) => a - b);

  const middleIndex = dists.findIndex(
    (d) => d == sorted_dists[Math.floor(sorted_dists.length / 2)]
  );
  const lowIndex = dists.findIndex((d) => d == sorted_dists[0]);
  const highIndex = dists.findIndex(
    (d) => d == sorted_dists[sorted_dists.length - 1]
  );

  const low_string = `closest point: #${lowIndex} (${points[
    lowIndex * 2
  ].toFixed(4)},${points[lowIndex * 2 + 1].toFixed(4)}) dist: ${dists[
    lowIndex
  ].toFixed(4)}`;

  const median_string = `median point: #${middleIndex} (${points[
    middleIndex * 2
  ].toFixed(4)},${points[middleIndex * 2 + 1].toFixed(4)}) dist: ${dists[
    middleIndex
  ].toFixed(4)}`;

  const high_string = `furthest point: #${highIndex} (${points[
    highIndex * 2
  ].toFixed(4)},${points[highIndex * 2 + 1].toFixed(4)}) dist: ${dists[
    highIndex
  ].toFixed(4)}`;

  const avg_dist = dists.reduce((acc, c) => acc + c, 0) / dists.length;
  const mean_dist_string = `mean point distance: ${avg_dist.toFixed(8)}`;

  const delta_x = ((p5.pmouseX - p5.mouseX) / p5.width).toFixed(4);
  const delta_y = ((p5.pmouseY - p5.mouseY) / p5.height).toFixed(4);
  const mouse_string = `mouse position: (${(p5.mouseX / p5.width).toFixed(
    4
  )}, ${(p5.mouseY / p5.height).toFixed(
    4
  )}) mouse delta: (${delta_x}, ${delta_y})`;

  const amp_string = `left channel: ${amps[0].toFixed(
    8
  )} right channel: ${amps[1].toFixed(8)}`;

  p5.push();
  p5.translate(x + pad, y + pad);
  p5.text(low_string, 0, 0);
  p5.text(median_string, 0, 15);
  p5.text(high_string, 0, 30);
  p5.text(mean_dist_string, 0, 45);
  p5.text(mouse_string, 0, 60);
  p5.text(amp_string, 0, 75);
  p5.pop();
}
