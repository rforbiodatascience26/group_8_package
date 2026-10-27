test_that("multiplication works", {
  result <- get_codon(3)

  expect_type(result, "character")

})
