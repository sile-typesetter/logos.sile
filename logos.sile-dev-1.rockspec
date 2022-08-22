rockspec_format = "3.0"
package = "logos.sile"
version = "dev-1"

source = {
   url = "git+https://github.com/sile-typesetter/logos.sile.git",
   tag = "master"
}

description = {
   summary = "LaTeX logos—in SILE!",
   detailed = [[This package adds the "bumpy road" logos from the LaTeX metalogo package to SILE.]],
   license = "Apache 2",
   homepage = "https://github.com/sile-typesetter/logos.sile",
   issues_url = "https://github.com/sile-typesetter/logos.sile/issues",
   maintainer = "Fredrick Brennan <copypaste@kittens.ph>",
   labels = { "sile", "typesetting" }
}

dependencies = {
   "lua >= 5.1"
}

build = {
   type = "builtin",
   modules = {
      ["sile.packages.logos"] = "packages/logos/init.lua"
   },
   install = {
      lua = {
         ["sile.packages.logos.macros"] = "packages/logos/macros.sil"
      }
   }
}
