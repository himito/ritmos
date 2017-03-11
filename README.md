# RitMos

Interpreter of interactive multimedia scores implemented in the reactive
synchronous language [ReactiveML](http://rml.lri.fr/). It provides a graphical
real-time feedback of the execution using
[INScore](http://inscore.sourceforge.net/).

This tool was published in

  Arias, J., Desainte-Catherine, M., Salvati, S., & Rueda, C. (2014). Executing
  Hierarchical Interactive Scores in ReactiveML. In Journées d’Informatique
  Musicale, JIM 2014, Bourges, France, May 21-23, 2014 (pp. 25–34). Available on
  http://jim.afim-asso.org/jim2014/attachments/article/92/JIM2014_Actes_maquette_006.pdf


## Dependencies

We recommend to install the following dependencies using the package manager
[opam](https://opam.ocaml.org).

```Bash
  brew install opam
```

* ocaml
* rml
* liblo
* Ocaml-lo

The software needed for the graphical feedback is:

* [INScore](http://inscore.sourceforge.net)
* [Pure Data](https://puredata.info/)

## Build

The compilation is as usual: `make`
