test_that("request works", {
  tempdir <- withr::local_tempdir()
  withr::local_dir(tempdir)
  httptest::with_mock_dir("blop", {
    lala <- request()
    expect_type(lala, "list")
  })
})
