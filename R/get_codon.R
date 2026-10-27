codon <- function(codons){
  fetch_codon <- paste0(data/codon_table[codons], collapse = "")
  return(fetch_codon)
}