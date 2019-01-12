#!/usr/bin/env Rscript

# via http://www.johnmyleswhite.com/notebook/2010/08/17/unit-testing-in-r-the-bare-minimum/

factorial = function(n) {
    type = typeof(n)
    if (type != "integer") {
        stop(sprintf("n must be of type 'integer', failed with '%s'", type))
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
