// Code borrowed from Jon Froehlich
// http://makeabilitylab.io/

class Rectangle {
  constructor(x, y, w, h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }

  /**
   * Returns the left side of the rectangle
   * @return {Number} the left side of the rectangle
   */
  getLeft() {
    return this.x;
  }

  /**
   * Returns the right side of the rectangle
   * @return {Number} the right side of the rectangle
   */
  getRight() {
    return this.x + this.w;
  }

  /**
   * Returns the top of the rectangle
   * @return {Number} the top of the rectangle
   */
  getTop() {
    return this.y;
  }

  /**
   * Returns the bottom of the rectangle
   * @return {Number} the bottom of the rectangle
   */
  getBottom() {
    return this.y + this.h;
  }

  /**
   * Scales the rectangle width and height by the given fraction
   * @param {Number} fraction the fraction used for scaling
   */
  scale(fraction) {
    this.w *= fraction;
    this.h *= fraction;
  }

  /**
   * Increments the height by the given pixel amount. If lockAspectRatio
   * is true, also scales the width a proportional amount
   *
   * @param {Number} yIncrement the amount of pixels to increment height
   * @param {Number} lockAspectRatio if true, also increments width proportional amount
   */
  incrementHeight(yIncrement, lockAspectRatio) {
    let yIncrementFraction = yIncrement / this.h;
    this.h += yIncrement;
    if (lockAspectRatio) {
      let xIncrement = yIncrementFraction * this.w;
      this.w += xIncrement;
    }
  }

  /**
   * Increments the width by the given pixel amount. If lockAspectRatio
   * is true, also scales the height a proportional amount
   *
   * @param {Number} xIncrement the amount of pixels to increment width
   * @param {Number} lockAspectRatio if true, also increments height proportional amount
   */
  incrementWidth(xIncrement, lockAspectRatio) {
    let xIncrementFraction = xIncrement / this.w;
    this.w += xIncrement;
    if (lockAspectRatio) {
      let yIncrement = xIncrementFraction * this.h;
      this.h += yIncrement;
    }
  }

  /**
   * Returns true if this rectangle overlaps the rectangle r
   *
   * @param {Rectangle} r the rectangle to check for overlap
   * @return {boolean} true if there is overlap
   */
  overlaps(r) {
    // based on https://stackoverflow.com/a/4098512
    return !(
      this.getRight() < r.x ||
      this.getBottom() < r.y ||
      this.x > r.getRight() ||
      this.y > r.getBottom()
    );
  }

  /**
   * Returns true if this rectangle contains the point x,y
   *
   * @param {Number} x the x position of the point
   * @param {Number} y the y position of the point
   * @return {boolean} true if this rectangle contains the point
   */
  contains(x, y) {
    return (
      x >= this.x && // check within left edge
      x <= this.x + this.w && // check within right edge
      y >= this.y && // check within top edge
      y <= this.y + this.h
    ); // check within bottom edge
  }
}

export default Rectangle;
