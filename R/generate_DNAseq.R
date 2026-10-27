#' Generate DNA sequence
#'
#' @param length Desired length of the DNA sequence
#'
#' @returns Randomized DNA sequence of the desired length
#' @export
#'
#' @examples generate_DNAseq(22)

generate_DNAseq <- function(length){
  bases <- sample(c("A", "T", "G", "C"), size = length, replace = TRUE)
  sequence <- paste0(bases, collapse = "")
  return(sequence)
}

