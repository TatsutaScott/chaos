export function pointer(p5) {
  p5.push();

  p5.stroke(50, 50, 50);
  p5.noFill();

  p5.translate(p5.mouseX, p5.mouseY);
  p5.line(-10, 0, 10, 0);
  p5.line(0, -10, 0, 10);
  p5.circle(0, 0, 10);
  const x = (p5.mouseX / p5.width).toFixed(8);
  const y = (p5.mouseY / p5.height).toFixed(8);
  p5.text(`x: ${x}\ny: ${y}`, 10, 15);
  p5.pop();
}

export function point_plot(p5, pointsArray, pos_x, pos_y, w = 400, h = 400) {
  p5.push();
  p5.stroke(150);
  p5.noFill();

  p5.translate(pos_x, pos_y);
  p5.text("points___", 0, 0);
  p5.translate(0, 10);
  p5.rect(0, 0, w, h, 4);

  p5.fill(150);
  if (pointsArray) {
    for (let i = 0; i < pointsArray.length; i += 2) {
      p5.circle(pointsArray[i] * w, pointsArray[i + 1] * h, 2);
      p5.text(i, pointsArray[i] * w + 5, pointsArray[i + 1] * h + 2);
    }
  }

  p5.pop();
}

export function dist_plot(p5, dists, x, y, w, h) {
  p5.push();

  p5.translate(x, y);
  p5.noFill();
  p5.stroke(150);

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

export function amp_plot(p5, arr, x, y, w, h) {
  p5.push();
  p5.translate(x, y);
  p5.fill(150);
  p5.stroke(150);
  p5.text("amplitude___", 0, 0);

  p5.noFill();
  p5.beginShape();
  for (let i = 0; i <= arr.length; i++) {
    const pos_x = (i / arr.length) * w;
    p5.vertex(pos_x, p5.map(arr[i], -1, 1, 0, h));
  }
  p5.endShape();

  p5.pop();
}
