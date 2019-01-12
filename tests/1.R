#!/usr/bin/env Rscript

test_factorial = function() {
    checkEquals(factorial(3L), 6L)
    checkEqualsNumeric(factorial(4L), 24L)
    checkIdentical(factorial(5L), 120L)
    checkIdentical(factorial(c(6L)), factorial(6L))

    excepts = list(TRUE, c(1L, 2L), list(1L), "a", 1.0)
    for (e in excepts) {
        checkException(factorial(e))
    }
}
