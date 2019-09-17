allowed_files = c("hw0.md",
                  "hw0.Rmd",
                  "README.md",
                  "hw0.Rproj",
                  "hw0_whitelist.R",
                  "fizzbuzz.png")

files = dir()
disallowed_files = files[!(files %in% allowed_files)]

if (length(disallowed_files != 0)) {
  cat("Disallowed files found:\n")
  cat("  (remove the following files from your repo)\n\n")

  for (file in disallowed_files)
    cat("*", file, "\n")

  quit("no", 1, FALSE)
}
