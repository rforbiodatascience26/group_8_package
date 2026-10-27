codon <- function(codons){
  fetch_codons <- paste0(data/codon_table[codons], collapse = "")
  return(fetch_codons)
}