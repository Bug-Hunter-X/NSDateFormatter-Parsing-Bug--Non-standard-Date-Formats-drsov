This bug occurs when using `NSDateFormatter` to parse dates with non-standard formats.  The `dateFormat` string must precisely match the input date string's format, including separators, casing and locale. Failure to do so leads to unexpected results, often returning `nil` or an incorrect `NSDate`.  This can be particularly problematic when dealing with dates from external sources or different locales without careful format validation. 

Example:
```objectivec
NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
[dateFormatter setDateFormat:@