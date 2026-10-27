test_that("extract_codons splits sequences correctly", {
  # Test reading frame 1 (default)
  expect_equal(extract_codons("ATGCGTACG"), c("ATG", "CGT", "ACG"))

  # Test reading frame 2
  expect_equal(extract_codons("ATGCGTACG", start = 2), c("TGC", "GTA"))
})
