const text_offset = 15;

class DataVisCollection {
  constructor(p5, colors, padding) {
    this.p5 = p5;
    this.colors = colors;
    this.mouse = this.p5.createVector(0, 0);
    this.padding = padding;
  }

  /**
   * @param {[Number]} points - array containing points
   * @param {[Number]} dists - array containing distances from point to cursor
   */
  update(points, dists) {
    if ((points, dists)) {
      this.points = points;
      this.dists = dists;
    }
    this.mouse.set(this.p5.mouseX, this.p5.mouseY);
  }

  draw() {
    this.cursor();
    this.pointPlot(0, 0, this.p5.width * 0.2, this.p5.width * 0.2);
    this.distGraph(
      0,
      this.p5.width * 0.2,
      this.p5.width * 0.5,
      this.p5.width * 0.1
    );
    this.pointDetails(
      0,
      this.p5.width * 0.2,
      this.p5.width,
      this.p5.height * 0.2
    );
  }

  /**Draws the cursor as a target along with its position*/
  cursor() {
    this.p5.push();

    this.p5.stroke(this.colors.fg);
    this.p5.noFill();
    this.p5.translate(this.mouse.x, this.mouse.y);
    this.p5.textAlign(this.p5.LEFT, this.p5.TOP);

    //Cursor icon
    this.p5.line(-10, 0, 10, 0);
    this.p5.line(0, -10, 0, 10);
    this.p5.circle(0, 0, 10);

    //Mouse Position
    const x = (this.mouse.x / this.p5.width).toFixed(8);
    const y = (this.mouse.y / this.p5.height).toFixed(8);
    this.p5.text(`x: ${x}\ny: ${y}`, 10, 15);

    this.p5.pop();
  }

  /**Creates a point plot of all of the control points
   * @param {Number} x - x value of topleft corner
   * @param {Number} y - y value of topleft corner
   * @param {Number} w - width
   * @param {Number} h - height
   */
  pointPlot(x, y, w, h) {
    this.p5.push();

    // this.p5.stroke(this.colors.fg);

    //Title
    this.p5.stroke(this.colors.fg);
    this.p5.fill(this.colors.fg);
    this.p5.textAlign(this.p5.LEFT, this.p5.TOP);
    this.p5.translate(x + this.padding, y + this.padding);
    this.p5.text("plot___", 0, 0);

    //Plot structure
    this.p5.noFill();

    this.p5.translate(0, text_offset);
    const plot_h = h - this.padding * 2 - text_offset;
    const plot_w = w - this.padding * 2;
    this.p5.rect(0, 0, plot_w, plot_h, 4); // outline
    this.p5.line(0, plot_h / 2, plot_w, plot_h / 2); // x-axis
    this.p5.line(plot_w / 2, 0, plot_w / 2, plot_h); // y-axis
    let idx = 0;
    //Plot points
    this.p5.fill(this.colors.fg);
    if (this.points) {
      for (let i = 0; i < this.points.length; i += 2) {
        const point_x = this.points[i];
        const point_y = this.points[i + 1];
        this.p5.circle(point_x * plot_w, point_y * plot_h, 2);
        this.p5.text(idx, point_x * plot_w + 5, point_y * plot_h + 2);
        idx++;
      }
    }

    this.p5.pop();
  }

  /**Plots a bar graph of the distances
   * @param {Number} x - x value of topleft corner
   * @param {Number} y - y value of topleft corner
   * @param {Number} w - width
   * @param {Number} h - height
   */
  distGraph(x, y, w, h) {
    this.p5.push();
    this.p5.noFill();
    this.p5.stroke(this.colors.fg);

    //title
    this.p5.translate(x + this.padding, y + this.padding);
    this.p5.textAlign(this.p5.LEFT, this.p5.TOP);
    this.p5.text("distances___", 0, 0);

    if (this.dists) {
      //plot
      this.p5.translate(0, text_offset);
      const plot_w = w - this.padding * 2;
      const plot_h = h - this.padding * 2 - 10;

      this.p5.fill(this.colors.fg);
      this.p5.stroke(this.colors.bg);
      const step_size = plot_w / this.dists.length;
      for (let i = 0; i < this.dists.length; i++) {
        this.p5.rect(step_size * i, 0, step_size, this.dists[i] * plot_h);
      }
    }
    this.p5.pop();
  }

  /**Writes out all of the points, their coordinates, and the cursors distance to the point
   * @param {Number} x - x value of topleft corner
   * @param {Number} y - y value of topleft corner
   * @param {Number} w - width
   * @param {Number} h - height
   */
  pointDetails(x, y, w, h) {
    this.p5.push();
    this.p5.stroke(this.colors.fg);
    this.p5.noFill();

    //For positioning test purpose
    // if (dev) p5.rect(x, y, w, h);

    //title
    this.p5.translate(x + this.padding, y + this.padding);
    this.p5.textAlign(this.p5.LEFT, this.p5.TOP);
    this.p5.text("points___     #: [x, y] distance", 0, 0);
    // const cols = 12;

    // write out points and distances
    if (this.dists) {
      this.p5.translate(0, text_offset);
      const yspacing = 10 * 1.333; // converts font size from points to pixels
      const xspacing = yspacing * (3 / 5) * 17;
      let cols = Math.floor(w / xspacing);
      let rows = Math.floor(h / yspacing);
      let idx = 0;
      for (let i = 0; i < cols; i++) {
        for (let q = 0; q < rows; q++) {
          if (i * rows + q >= this.points.length / 2) continue;
          const coord_x = this.points[idx * 2].toFixed(2);
          const coord_y = this.points[idx * 2 + 1].toFixed(2);
          const string = `${pad(idx, 3)}: [${coord_x}, ${coord_y}] ${this.dists[
            idx
          ].toFixed(2)}`;
          this.p5.text(string, xspacing * i, yspacing * q);
          idx++;
        }
      }
    }
    this.p5.pop();
  }

  /**Adds controls and piece information
   * @param {Number} x - x value of topleft corner
   * @param {Number} y - y value of topleft corner
   * @param {Number} w - width
   * @param {Number} h - height
   */
  controls(x, y, w, h) {
    this.p5.push();
    this.p5.noFill();
    this.p5.stroke(this.colors.fg);

    //For positioning test purpose
    // if (dev) p5.rect(x, y, w, h);

    this.p5.translate(x + this.padding, y + this.padding);

    this.p5.textAlign(this.p5.RIGHT);
    this.p5.text("controls___", w - this.padding * 2, 0);
    this.p5.text("scramble + new impulse: [click]", w - this.padding * 2, 15);
    this.p5.text("mute / unmute: [space]", w - this.padding * 2, 30);
    this.p5.text("reset: [r]", w - this.padding * 2, 45);

    this.p5.text(
      "'a handful of sand' developer: Scott Tatsuta version: 1 date: March 23, 2024",
      w - this.padding * 2,
      h - this.padding * 2
    );

    this.p5.pop();
  }
}

// /**write out extra info derived from all of the
//  * @param {{p5: Object, dark: Number, light: Number}} settings - settings for sketch including p5 drawing context, and colors
//  * @param {[Number]} points - array containing points
//  * @param {[Number]} dists - array containing distances from point to cursor
//  * @param {[Number]} amps - array containing amplitudes
//  * @param {Number} x - x value of topleft corner
//  * @param {Number} y - y value of topleft corner
//  * @param {Number} w - width
//  * @param {Number} h - height
//  * @param {Number} pad - inner padding
//  */
// export function extra_info(
//   settings,
//   points,
//   dists,
//   amps,
//   x,
//   y,
//   w,
//   h,
//   pad = 20
// ) {
//   const { p5, dark, light, dev } = settings;

//   const sorted_dists = [...dists];
//   sorted_dists.sort((a, b) => a - b);

//   const middleIndex = dists.findIndex(
//     (d) => d == sorted_dists[Math.floor(sorted_dists.length / 2)]
//   );
//   const lowIndex = dists.findIndex((d) => d == sorted_dists[0]);
//   const highIndex = dists.findIndex(
//     (d) => d == sorted_dists[sorted_dists.length - 1]
//   );

//   const low_string = `closest point: #${lowIndex} (${points[
//     lowIndex * 2
//   ].toFixed(4)},${points[lowIndex * 2 + 1].toFixed(4)}) dist: ${dists[
//     lowIndex
//   ].toFixed(4)}`;

//   const median_string = `median point: #${middleIndex} (${points[
//     middleIndex * 2
//   ].toFixed(4)},${points[middleIndex * 2 + 1].toFixed(4)}) dist: ${dists[
//     middleIndex
//   ].toFixed(4)}`;

//   const high_string = `furthest point: #${highIndex} (${points[
//     highIndex * 2
//   ].toFixed(4)},${points[highIndex * 2 + 1].toFixed(4)}) dist: ${dists[
//     highIndex
//   ].toFixed(4)}`;

//   const avg_dist = dists.reduce((acc, c) => acc + c, 0) / dists.length;
//   const mean_dist_string = `mean point distance: ${avg_dist.toFixed(8)}`;
//   const delta_x = ((p5.pmouseX - p5.mouseX) / p5.width).toFixed(4);
//   const delta_y = ((p5.pmouseY - p5.mouseY) / p5.height).toFixed(4);
//   const mouse_string = `mouse position: (${(p5.mouseX / p5.width).toFixed(
//     4
//   )}, ${(p5.mouseY / p5.height).toFixed(
//     4
//   )}) mouse delta: (${delta_x}, ${delta_y})`;

//   const amp_string = `left channel: ${amps[0].toFixed(
//     8
//   )} right channel: ${amps[1].toFixed(8)}`;

//   p5.push();
//   p5.translate(x + pad, y + pad);
//   p5.text(low_string, 0, 0);
//   p5.text(median_string, 0, 15);
//   p5.text(high_string, 0, 30);
//   p5.text(mean_dist_string, 0, 45);
//   p5.text(mouse_string, 0, 60);
//   p5.text(amp_string, 0, 75);
//   p5.pop();
// }

function pad(num, size) {
  num = num.toString();
  while (num.length < size) num = "0" + num;
  return num;
}

export default DataVisCollection;
