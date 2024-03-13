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

export function points(p5, pointsArray) {
  p5.fill(150);
  p5.stroke(150);

  for (let i = 0; i < pointsArray.length; i += 2) {
    p5.circle(pointsArray[i] * p5.width, pointsArray[i + 1] * p5.height, 2);
    p5.text(
      `[${pointsArray[i].toFixed(4)}, ${pointsArray[i + 1].toFixed(4)}]`,

      pointsArray[i] * p5.width + 5,
      pointsArray[i + 1] * p5.height
    );
  }
}

export function distances(p5, distancesArray) {
  p5.push();
  p5.fill(150);
  p5.stroke(150);
  p5.translate(20, 20);

  p5.text("distances___", 0, 0);

  for (let i = 0; i < distancesArray.length; i++) {
    const text_x = p5.floor(i / 10) * 120;
    const text_y = (i % 10) * 15 + 20;

    p5.fill(150);
    p5.text(distancesArray[i].toFixed(16), text_x, text_y);

    const bar_x = (i / distancesArray.length) * 825;
    const bar_h = distancesArray[i] * 50;

    p5.noFill();
    p5.rect(bar_x, 180, 825 / distancesArray.length, bar_h);
  }
  p5.pop();
}

export function controls(p5) {
  p5.push();
  p5.translate(20, p5.height - 75);

  p5.fill(150);
  p5.stroke(150);
  p5.rect(0, 0, 210, 55, 2);

  p5.fill(200);
  p5.stroke(200);
  p5.text("controls___", 10, 15);
  p5.text("scramble + new impulse: [click]", 10, 30);
  p5.text("mute: [m]", 10, 45);
  p5.pop();
}
