return_one <- function() {
  return(1)
}

infer_fields <- function(datos) {
  nombres <- names(datos)
  n_col <- ncol(datos)
  tipos <- sapply(datos, typeof)
  names(tipos) <- NULL
  fields <- comprehenr::to_list(for (i in 1:n_col) get_basic_field(nombres[i], tipos[i]))
  return(fields)
}

get_basic_field <- function(nombres = "", tipos = "", nombre_estandar = "") {
  basic_field <- list("name" = nombres, "type" = tipos, "standard_name" = nombre_estandar)
  return(basic_field)
}
