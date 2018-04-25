> import Diagrams.Backend.SVG.CmdLine

> {-# LANGUAGE NoMonomorphismRestriction #-}

To see how this example is implemented, see the source code of the `Diagrams.TwoD.Sunburst` module included in the `diagrams-contrib` package. Or see John Stasko, Richard Catrambone, \"An evaluation of space-filling information visualizations for depicting hierarchical structures\", 2000. <http://www.cc.gatech.edu/~john.stasko/papers/ijhcs00.pdf>.

> import Diagrams.TwoD.Sunburst
> import Data.Tree (unfoldTree)
>
> aTree = unfoldTree (\n -> (0, replicate n (n-1))) 6
> example = sunburst aTree # centerXY # pad 1.1


> main = mainWith (example :: Diagram B)
