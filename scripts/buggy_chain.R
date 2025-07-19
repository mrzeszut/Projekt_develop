
# buggy_chain.R
# Four small functions forming a call chain with a hidden bug.

step1 <- function(x) {
  # First processing step – just passes the data along.
  step2(x)
}

step2 <- function(x) {
  # Double the value, then continue.
  y <- x * 2
  step3(y)
}

step3 <- function(x) {
  # BUG: returns NULL when x > 5 (simulating unexpected missing value)
  if (x > 5) {
    return(NULL)  # <-- this will break downstream code
  }
  step4(x)
}

step4 <- function(x) {
  # Final calculation – will fail if x is NULL
  x + 1           # 'NULL + 1' triggers an error
}

# Helper that triggers the bug
run_chain <- function() {
  step1(4)   # Works
  step1(6)   # Fails (x > 5, becomes NULL)
}
