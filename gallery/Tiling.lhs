> import Diagrams.Backend.SVG.CmdLine

> {-# LANGUAGE NoMonomorphismRestriction #-}
>
> import Diagrams.Prelude

To see how this example is implemented, see the source code of the `Diagrams.TwoD.Tilings` module included in the `diagrams-contrib` package. The package contains a wide variety of tools for generating plane tilings made of regular polygons.

> import Diagrams.TwoD.Tilings
>
> example = drawTiling t3464 10 10 # lc white # lw thick
>                                  # centerXY # pad 1.1


> main = mainWith (example :: Diagram B)
