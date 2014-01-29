# Load names, remove quotes, split to lines on commas, and sort.
sed 's/"//g' ../input/22 | tr , '\n' | sort |

# Translate characters to those that represent their alphanumeric values.
# Newlines must be converted to something else because 10 is now J.
tr 'A-Z\n' '\1-\32*' |

# Get the ordinal values to do math on, splitting on the newline replacement.
# 37000 is just wide enough to prevent any names getting chopped.
od -An -td1 -w37000 | sed 's/42/\n/g' |

# MARY is now 13 1 18 25. +s need to be inserted between the numbers to feed
# into bc, but sed doesn't backtrack, so they're placed before each number,
# and then a 0 is prepended to prevent the syntax error.
sed -e 's/ \([0-9]\)/+\1/g' -e 's/^/0/' | bc |

# Print each sum with its line number to build the final sequence and do
# various things to make bc happy, then feed it.
sed -r 's/(.+)/*\1+/g;=' | head -c -2 | tr -d '\n' | sed 's/$/\n/' | bc
