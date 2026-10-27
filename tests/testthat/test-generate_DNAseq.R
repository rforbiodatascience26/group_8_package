# This creates a test to check that our function is working correctly.
# It is up to the developer to decide what functionality they want to test.

test_that("generate_DNAseq returns a sequence of the right length", {
  result <- generate_DNAseq(15)
  expect_type(result, "character")
  expect_equal(nchar(result), 15)
})
