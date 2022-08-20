std = "max"
include_files = {
  "**/*.lua",
  "*.rockspec",
  ".busted",
  ".luacheckrc"
}
exclude_files = {
  ".lua",
  ".luarocks",
  ".install"
}
files["**/*_spec.lua"] = {
  std = "+busted"
}
globals = {
  "SILE",
  "SU",
  "luautf8",
  "pl",
  "fluent"
}
max_line_length = false
ignore = {
  "581" -- operator order warning doesn't account for custom table metamethods
}
-- vim: ft=lua
