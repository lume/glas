describe("example", (): void => {
  it("should be truthy", (): void => {
    expect<i32>(19 + 23).toBe(42, "42 is the meaning of life.");
  });
});
