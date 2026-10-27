#' Extract codons
#' @param sequence The string of the DNA sequence.
#' @param start An integer indicating the reading frame start position.
#'
#' @returns A character vector of codons.
#' @export
#'
#' @examples
#' extract_codons("ATGCGTACG", start = 1)
#' extract_codons("ATGCGTACG", start = 2)
extract_codons <- function(sequence, start = 1){
  seq_length <- nchar(sequence)
  codons <- substring(sequence,
                      first = seq(from = start, to = seq_length-3+1, by = 3),
                      last = seq(from = 3+start-1, to = seq_length, by = 3))
  return(codons)
}
