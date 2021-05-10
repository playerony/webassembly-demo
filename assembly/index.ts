declare function log(valueA: i32, valueB: i32): void;

export function add(valueA: i32, valueB: i32): i32 {
  log(valueA, valueB);

  return valueA + valueB;
}
