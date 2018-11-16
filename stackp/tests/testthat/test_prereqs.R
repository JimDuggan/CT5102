library(testthat)
library(stackp)

context("stackp tests...")

test_that("Constructor created ok ...", {
  s <- stackp()
  expect_true(class(s) == "stackp")
})

test_that("Push a value onto the stack ...", {
  s <- stackp()
  s <- push(s,"123")
  expect_true(s$stack[[1]] == "123")
})

test_that("Check that peek() works...", {
  s <- stackp()
  s <- push(s,"123")
  s <- push(s,"456")
  v <- peek(s)
  expect_true(v=="456")
})

test_that("Check the get_length() function ...", {
  s <- stackp()
  s <- push(s,"123")
  s <- push(s,"456")
  expect_true(get_length(s)==2)
})

test_that("Check the pop function ...", {
  s <- stackp()
  s <- push(s,"123")
  s <- push(s,"456")
  s <- push(s,"789")
  s <- pop(s)
  expect_true(get_length(s)==2)
})



