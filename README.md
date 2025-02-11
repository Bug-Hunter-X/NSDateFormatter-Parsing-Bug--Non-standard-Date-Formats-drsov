# NSDateFormatter Parsing Bug: Non-standard Date Formats

This repository demonstrates a common bug encountered when using `NSDateFormatter` in Objective-C to parse dates with non-standard formats. Incorrect date formats lead to unexpected results, often returning `nil` or an incorrect `NSDate`. 

The `bug.m` file shows an example of the buggy code, while `bugSolution.m` presents the corrected version with robust error handling and format validation. 

## Problem

The core issue lies in the precision required when specifying the `dateFormat` string. It must precisely match the input date string, including separators, casing and locale. Any deviation may result in incorrect date parsing. 

## Solution

To mitigate this bug, rigorously validate the input date string against the expected format.  Use explicit locale settings and carefully crafted `dateFormat` strings. Handle parsing failures gracefully by checking for `nil` results and incorporating error handling mechanisms.  Consider using more modern and flexible date parsing options for improved resilience and clarity. 