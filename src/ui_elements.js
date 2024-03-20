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
  const { p5, dark } = settings;
  p5.push();
  p5.stroke(dark);
  p5.noFill();

  //For positioning test purpose
  p5.rect(x, y, w, h);

  //Title
  p5.translate(x + pad, y + pad);
  p5.text("points___", 0, 0);

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

// export function amp_plot(settings, amps, x, y, w, h, pad) {
//   p5.push();
//   p5.translate(x, y);
//   p5.fill(150);
//   p5.stroke(150);

//   p5.text("amplitude___", 0, 0);

//   p5.noFill();
//   p5.beginShape();
//   for (let i = 0; i <= arr.length; i++) {
//     const pos_x = (i / arr.length) * w;
//     p5.vertex(pos_x, p5.map(arr[i], -1, 1, 0, h));
//   }
//   p5.endShape();

//   p5.pop();
// }

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

export function numbers(p5, points, dists, x, y, w, h) {
  p5.push();

  p5.translate(x, y);
  p5.fill(150);
  p5.stroke(150);

  for (let i = 0; i < dists.length; i++) {
    const pos_x = Math.floor((i * 4) / dists.length) * (w / 4);
    const pos_y = (i % (dists.length / 4)) * 15;
    const string = `${i}: [${points[i * 2].toFixed(6)}, ${points[
      i * 2 + 1
    ].toFixed(6)}] ${dists[i].toFixed(6)}`;
    p5.text(string, pos_x, pos_y + 20);
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
