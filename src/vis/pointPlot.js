/**Creates a point plot of all of the control points
 * @param {P5} p5 - p5 isntance
 * @param {{fg: p5.color, bg: p5.color, i: p5.color}} colors - color palette for the program
 * @param {[Number]} points - array containing points
 * @param {Number} x - x value of topleft corner
 * @param {Number} y - y value of topleft corner
 * @param {Number} w - width
 * @param {Number} h - height
 * @param {Number} pad - inner padding
 */

function pointPlot(p5, colors, points) {
  p5.clear();
  //Plot structure
  p5.stroke(colors.fg);
  p5.noFill();
  p5.line(0, p5.height / 2, p5.width, p5.height / 2); // x-axis
  p5.line(p5.width / 2, 0, p5.width / 2, p5.height); // y-axis

  //Plot points
  p5.fill(colors.fg);
  p5.noStroke();
  if (points) {
    for (let i = 0; i < points.length; i += 2) {
      const point_x = points[i];
      const point_y = points[i + 1];
      p5.circle(point_x * p5.width, point_y * p5.height, 2);
      p5.text(i, point_x * p5.width + 5, point_y * p5.height + 2);
    }
  }
}

export default pointPlot;
