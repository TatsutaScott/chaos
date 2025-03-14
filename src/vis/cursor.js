/**Draws the cursor as a target along with its position
 * @param {P5} p5 - p5 isntance
 * @param {{fg: p5.color, bg: p5.color, i: p5.color}} colors - color palette for the program
 */

function cursor(p5, colors) {
  p5.push();

  p5.stroke(colors.fg);
  p5.noFill();
  p5.translate(p5.mouseX, p5.mouseY);
  p5.textAlign(p5.LEFT, p5.TOP);

  //Cursor icon
  p5.line(-10, 0, 10, 0);
  p5.line(0, -10, 0, 10);
  p5.circle(0, 0, 10);

  //Mouse Position
  p5.noStroke();
  p5.fill(colors.fg);
  const x = (p5.mouseX / p5.width).toFixed(8);
  const y = (p5.mouseY / p5.height).toFixed(8);
  p5.text(`x: ${x}\ny: ${y}`, 10, 15);

  p5.pop();
}

export default cursor;
