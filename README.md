# TeX Notations for flowR

A collection of useful, predefined and portable macros for typesetting common notations found in and around flowR.

* [absint.sty](absint.sty) - For Notation around Abstract Interpretation (Domains, Lattices, etc.)\
  The [documentation](https://raw.githubusercontent.com/flowr-analysis/tex-notations/gh-pages/absint-doc.pdf)
  and the [examples](https://raw.githubusercontent.com/flowr-analysis/tex-notations/gh-pages/absint-examples.pdf)
  are compiled from [doc/absint.tex](doc/absint.tex) and [examples/absint.tex](examples/absint.tex)
  on every push.

## absint

```latex
\usepackage{absint}                             % color, links, sharp, stubs, ...

\absexpr{(X, \partof, \lub, \glb, \bot, \top)}  % a complete lattice
\absexpr{\abstractly{(X, \partof, \lub)}}       % the same, abstract
\absexpr{\powerset(\Z) \galois \NumericDomain}  % a Galois connection
\absexpr{(\lam{x}{M}) \app N \betared \subst{M}{x}{N}}  % lambda calculus
\absintlegend                                   % legend of the notation used
```

* Scoped: outside of `\absexpr` and the `absint` environment, `\lor` and
  `\sqcup` keep their usual meaning.
* `\abstractly{...}` marks the operators and domains of a whole expression.
* Symbols link to their `\absintlegend` entry; without an entry they stay
  plain, so no undefined references.
* Lattices, domains, semantics and lambda calculus (abstraction, reduction,
  substitution, typing judgements) out of the box.
* `\DeclareAbsintSymbol`, `\DeclareAbsintAlias` and `\DeclareAbsintCommand`
  add your own.

`examples/` and `doc/` build with `latexmk`; their `.latexmkrc` points
`TEXINPUTS` here, so nothing needs to be installed. The documentation
highlights its code with [xlistings](https://github.com/EagleoutIce/xlistings),
which comes as a submodule:

```bash
git clone --recurse-submodules https://github.com/flowr-analysis/tex-notations
```
