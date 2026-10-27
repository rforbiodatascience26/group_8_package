test_that("get_codon function 4 gets a codon", {
  result <- get_codon(3)

  expect_type(result, "character")

})
