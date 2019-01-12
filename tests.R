#!/usr/bin/env python3

library(RUnit)

source("main.R")

test_suite = defineTestSuite( "factorial"
                            , dirs=file.path("tests")
                            , testFileRegexp="^\\d+\\.R"
                            )

test_result = runTestSuite(test_suite)
