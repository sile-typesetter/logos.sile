# LaTeX logos&mdash;in SILE!

![](https://raw.githubusercontent.com/ctrlcctrlv/sile-logos/master/examples.png)

* [`examples.sil`](https://github.com/ctrlcctrlv/sile-logos/blob/master/examples.sil) ([PDF](https://github.com/ctrlcctrlv/sile-logos/blob/master/examples.pdf))

## About

This package adds the "bumpy road" logos from the [LaTeX `metalogo` package](https://ctan.math.illinois.edu/macros/latex/contrib/metalogo/metalogo.pdf) to SILE.

These logos are implemented:

* `\SILE`
* `\TeX`
* `\LaTeX`
* `\LaTeX2e`
* `\XeTeX`
* `\XeLaTeX`
* `\LuaTeX`
* `\LuaLaTeX`

### Repository history

This repository was originally in Fredrick Brennan (@ctrlcctrlv)'s account but was upgraded to an official SILE package post-PR №1 by Caleb Maclennan ([#1 — Overhaul for SILE v0.13+](https://github.com/sile-typesetter/sile-logos/pull/1)). 

## Why `em`?

The values were copied from `metalogo.dtx`. They work with a variety of fonts, as shown in the example.

## `-CM` variants

All implemented logos have a `-CM` variant. In case the font you are using does not have, for example, a `ε`, or if it just looks ugly, you can use the `-CM` variant, which will be typeset exactly as it would be in LaTeX.

You need the distribution known on CTAN as `lmodern`; the [GUST version](http://www.gust.org.pl/projects/e-foundry/latin-modern/download) OTF's.

## `-rot` variants

Per [sile-typesetter/sile#1035](https://github.com/sile-typesetter/sile/issues/1035), SILE does not yet support any version of the LaTeX command `\reflectbox`. So, for now, I use Ǝ, U+018E, LATIN CAPITAL LETTER REVERSED E. Quite a lot of fonts have this glyph, especially considering you need to be using high-quality fonts in SILE anyway. But, if it's missing in your font, you can use the `-rot` variants of `\XeTeX` and `XeLaTeX`, which instead rotates the `E` 180°, if you don't want to just use the `-CM` variant.

## License

Everything in this repo is Apache 2.0 licensed.
