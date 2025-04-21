/**Plots a bar graph of the distances
 * @param {{p5: Object, dark: Number, light: Number}} settings - settings for sketch including p5 drawing context, and colors
 * @param {[Number]} dists - array containing distances from point to cursor
 * @param {Number} x - x value of topleft corner
 * @param {Number} y - y value of topleft corner
 * @param {Number} w - width
 * @param {Number} h - height
 * @param {Number} pad - inner padding
 */
function distGraph(p, colors, dists) {
  if (dists) {
    //plot
    p.clear();
    p.fill(colors.fg);
    p.stroke(colors.bg);
    const step_size = p.width / dists.length;
    for (let i = 0; i < dists.length; i++) {
      p.rect(step_size * i, 0, step_size, dists[i] * p.height);
    }
  }
}

export default distGraph;
