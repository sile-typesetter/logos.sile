rockspec_format = "3.0"
package = "sile-logos"
version = "dev-1"

source = {
   url = "git+https://github.com/ctrlcctrlv/sile-logos.git",
   tag = "master"
}

description = {
   summary = "LaTeX logos—in SILE! ",
   detailed = [[This package adds the "bumpy road" logos from the LaTeX metalogo package to SILE.]],
   license = "Apache 2",
   homepage = "https://github.com/ctrlcctrlv/sile-logos",
   issues_url = "https://github.com/ctrlcctrlv/sile-logos/issues",
   maintainer = "Fredrick Brennan <copypaste@kittens.ph>",
   labels = { "sile", "typesetting" }
}

dependencies = {
   "lua >= 5.1"
}

build = {
   type = "builtin",
   modules = {
      ["sile.packages.sile-logos"] = "packages/sile-logos/init.lua"
   },
   install = {
      lua = {
         ["sile.packages.sile-logos.macros"] = "packages/sile-logos/macros.sil"
      }
   }
}
