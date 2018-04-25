> import Diagrams.Backend.SVG.CmdLine

> {-# LANGUAGE NoMonomorphismRestriction #-}
>
> import Diagrams.Prelude
>
> hilbert 0 = mempty
> hilbert n = hilbert' (n-1) # reflectY <> vrule 1
>          <> hilbert  (n-1) <> hrule 1
>          <> hilbert  (n-1) <> vrule (-1)
>          <> hilbert' (n-1) # reflectX
>   where
>     hilbert' m = hilbert m # rotateBy (1/4)
>
> example = frame 1 . lw medium . lc darkred
>                   . strokeT $ hilbert 5


> main = mainWith (example :: Diagram B)
