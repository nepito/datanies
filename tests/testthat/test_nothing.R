library(tidyverse)

describe("Test all is ready", {
  it("Return one", {
    datos <- read_csv("../data/outout_morelia.csv", show_col_types = FALSE)
    expected <- jsonlite::read_json("../data/fiels_schema.json")
    obtained <- infer_fields(datos)
    expect_equal(expected, obtained)
  })
})

describe("Get version of the module", {
  it("The version is 0.1.0", {
    expected_version <- c("0.1.0")
    obtained_version <- packageVersion("datanies")
    version_are_equal <- expected_version == obtained_version
    expect_true(version_are_equal)
  })
})
