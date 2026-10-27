test_that("transcribe converts DNA to RNA correctly", {
  expect_equal(transcribe("ATGCT"), "AUGCU")
})



