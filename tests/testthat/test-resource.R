describe("Test all is ready", {
  it("Return one", {
    datos <- read_csv("../data/outout_morelia.csv", show_col_types = FALSE)
    expected <- rjson::fromJSON(file = "../data/resource.json")
    obtained <- infer_resource(datos)
    expect_equal(obtained, expected)
  })
})
