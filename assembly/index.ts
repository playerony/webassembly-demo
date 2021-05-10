declare function log(valueA: i32, valueB: i32): void;

export function add(valueA: i32, valueB: i32): i32 {
  log(valueA, valueB);

  return valueA + valueB;
}

export function toStringTest(): string {
  return "test";
}

export function abs(x: f64): f64 {
  return Math.abs(x);
}

export function acos(x: f64): f64 {
  return Math.acos(x);
}
