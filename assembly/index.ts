// growing wasm memory by 64KB
memory.grow(1);

// (r, g, b, a)
const PIXEL_PROPERTIES = 4;

export const CHECKERBOARD_SIZE: i32 = 50;
export const CHECKERBOARD_BUFFER_POINTER: i32 = 0;
export const CHECKERBOARD_BUFFER_SIZE: i32 =
  CHECKERBOARD_SIZE * CHECKERBOARD_SIZE * PIXEL_PROPERTIES;

export function generateCheckerBoard(
  darkValueRed: i32,
  darkValueGreen: i32,
  darkValueBlue: i32,
  lightValueRed: i32,
  lightValueGreen: i32,
  lightValueBlue: i32
): void {
  for (let x: i32 = 0; x < CHECKERBOARD_SIZE; x++) {
    for (let y: i32 = 0; y < CHECKERBOARD_SIZE; y++) {
      let isDarkSquare: boolean = true;

      if (y % 2 === 0) {
        isDarkSquare = false;
      }

      if (x % 2 === 0) {
        isDarkSquare = !isDarkSquare;
      }

      let squareValueRed = darkValueRed;
      let squareValueGreen = darkValueGreen;
      let squareValueBlue = darkValueBlue;

      if (!isDarkSquare) {
        squareValueRed = lightValueRed;
        squareValueGreen = lightValueGreen;
        squareValueBlue = lightValueBlue;
      }

      let squareNumber = y * CHECKERBOARD_SIZE + x;
      let squareRgbaIndex = squareNumber * PIXEL_PROPERTIES;

      store<u8>(
        CHECKERBOARD_BUFFER_POINTER + squareRgbaIndex + 0,
        squareValueRed
      );

      store<u8>(
        CHECKERBOARD_BUFFER_POINTER + squareRgbaIndex + 1,
        squareValueGreen
      );

      store<u8>(
        CHECKERBOARD_BUFFER_POINTER + squareRgbaIndex + 2,
        squareValueBlue
      );

      store<u8>(CHECKERBOARD_BUFFER_POINTER + squareRgbaIndex + 3, 255);
    }
  }
}
