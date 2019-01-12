#!/usr/bin/env bash

R -e 'source("tests.R"); printHTMLProtocol(test_result)' > results.html
