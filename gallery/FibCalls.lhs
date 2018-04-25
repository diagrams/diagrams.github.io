> import Diagrams.Backend.SVG.CmdLine

> {-# LANGUAGE NoMonomorphismRestriction #-}
>
> import Diagrams.Prelude

We make use of a tree layout module from the `diagrams-contrib` package:

> import Diagrams.TwoD.Layout.Tree


Generate the tree of naive Fibonacci calls.

> fibCalls :: Integer -> BTree Integer
> fibCalls 0 = leaf 0
> fibCalls 1 = leaf 1
> fibCalls n = BNode n (fibCalls (n-1)) (fibCalls (n-2))

Lay out the tree and render it by providing a function to render nodes
and a function to render edges.

> Just t = uniqueXLayout 2 2 (fibCalls 5)
>
> example = pad 1.1 . centerXY
>         $ renderTree
>             (\n -> (text ("fib " ++ show n)
>                     <> roundedRect 3 1.3 0.3 # fc gold)
>             )
>             (~~) t
>         `atop` square 1 # scaleY 12 # translateY (-5)
>                         # scaleX 34
>                         # lw none # fc whitesmoke


> main = mainWith (example :: Diagram B)
