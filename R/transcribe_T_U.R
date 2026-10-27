#' Tanscribe_T_U
#'
#' @param transcribe Transcribes all T bases to U
#'
#' @returns The output is a mRNA sequence
#' @export
#'
#' @examples ATGCATTGA is transcribed to AUGCAUUGA


transcribe <- function(dna_seq) {
  rna_seq <- gsub("T", "U", dna_seq)
  return(rna_seq)
}



