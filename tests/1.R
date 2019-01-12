#!/usr/bin/env Rscript

test_factorial = function() {
    checkEquals(factorial(3L), 6L)
    checkEqualsNumeric(factorial(4L), 24L)
    checkIdentical(factorial(5L), 120L)
    checkException(factorial("a"))
    checkException(factorial(TRUE))
}
