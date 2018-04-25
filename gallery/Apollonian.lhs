> import Diagrams.Backend.SVG.CmdLine

> {-# LANGUAGE NoMonomorphismRestriction #-}
>
> import Diagrams.Prelude

To see how this example is implemented, see the source code of the `Diagrams.TwoD.Appolonian` module included in the `diagrams-contrib` package. Or see J. Lagarias, C. Mallows, and A. Wilks, \"Beyond the Descartes circle theorem\", *Amer. Math. Monthly* 109 (2002), 338--361. <http://arxiv.org/abs/math/0101066>.

> import Diagrams.TwoD.Apollonian
>
> example = (apollonianGasket 0.01 2 3 3) # centerXY # pad 1.1


> main = mainWith (example :: Diagram B)
