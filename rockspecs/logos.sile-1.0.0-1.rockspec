rockspec_format = "1.0"
package = "logos.sile"
version = "1.0.0-1"

local _github = "https://github.com/sile-typesetter"
local _module = package:gsub("%.sile$", "")

source = {
   url = ("git+%s/%s.git"):format(_github, package),
   tag = "v1.0.0"
}

description = {
   summary = "LaTeX logos—in SILE!",
   detailed = [[This package adds the "bumpy road" logos from the LaTeX metalogo package to SILE.]],
   license = "Apache 2",
   homepage = ("%s/%s"):format(_github, package),
}

dependencies = {
   "lua >= 5.1"
}

build = {
   type = "builtin",
   modules = {
      [("sile.packages.%s"):format(_module)] = "packages/logos/init.lua"
   },
   install = {
      lua = {
         [("sile.packages.%s.macros"):format(_module)] = "packages/logos/macros.sil"
      }
   }
}
