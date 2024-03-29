-- DO NOT EDIT! Modify template logos.sile.rockspec.in and rebuild with `make logos.sile-dev-1.rockspec`
rockspec_format = "3.0"
package = "logos.sile"
version = "dev-1"

local _github = "https://github.com/sile-typesetter"
local _module = package:gsub("%.sile$", "")

source = {
   url = ("git+%s/%s.git"):format(_github, package),
   tag = "master"
}

description = {
   summary = "LaTeX logos—in SILE!",
   detailed = [[This package adds the "bumpy road" logos from the LaTeX metalogo package to SILE.]],
   license = "Apache 2",
   homepage = ("%s/%s"):format(_github, package),
   issues_url = ("%s/%s/issues"):format(_github, package),
   maintainer = "Fredrick Brennan <copypaste@kittens.ph>",
   labels = { "sile", "typesetting" }
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
