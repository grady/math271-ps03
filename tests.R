## execute all code in the solution file
try(knitr::knit(text=readLines('PS03_solution.Rmd')))

test_that("Basic syntax questions",{
  expect_equal(nrow(dallas_sub), 24)
  expect_vector(dallas_sub$prct_sold, numeric())
  expect_equal(dim(dallas_summary), c(12,2))
})