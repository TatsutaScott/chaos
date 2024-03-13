class Bubble {
  constructor(x, y) {
    this.x = x;
    this.y = y;
    this.life = 255;
  }

  animate(p5) {
    p5.push();
    p5.noFill();
    p5.stroke(50, 50, 50, this.life);
    p5.translate(this.x, this.y);
    p5.circle(0, 0, 2 * (255 - this.life));
    p5.pop();
  }

  update() {
    this.life -= 4;
  }
}

class AnimationQueue {
  constructor() {
    this.queue = [];
  }

  add(anim) {
    this.queue.push(anim);
  }

  animate(p5) {
    this.queue.forEach((a) => a.animate(p5));
  }
  clean() {
    this.queue.forEach((a) => a.update());
    this.queue = this.queue.filter((a) => a.life > 0);
  }
}

export { AnimationQueue, Bubble };
