// prereqs: arrays, methods, conditional logic
// Write a method that returns the first even element in a array of integers
// This is an old todo we did in Ruby, please rewrite your answer in javascript

describe( "#firstEven", function() {
  it("should return the first even when there is one even", function() {
    expect(firstEven([3, 4, 5])).toBe(4);
  });      
  it("should return the first even when there is more than one even", function() {
    expect(firstEven([3, 5, 6, 7, 2])).toBe(6);
  }); 
  it("should return undefined when there are no evens", function() {
    expect(firstEven[3, 5, 7]).toBe(undefined);
  }); 
});
