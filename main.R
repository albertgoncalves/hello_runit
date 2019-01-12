#!/usr/bin/env Rscript

# via http://www.johnmyleswhite.com/notebook/2010/08/17/unit-testing-in-r-the-bare-minimum/

factorial = function(n) {
    error_msg = function(must, fail) {
        return(sprintf("input must be %s, failed with %s", must, fail))
    }

    type = typeof(n)
    if  (type != "integer") {
        stop(error_msg("of type 'integer'", sprintf("'%s'", type)))
    }

    len = length(n)
    if (len > 1) {
        stop(error_msg("a vector of length 1", len))
    }

    value = 1L
    while (n > 0L) {
        value = value * n
        n = n - 1L
    }

    return(value)
}

if (sys.nframe() == 0) {
    print(factorial(5L))
}
