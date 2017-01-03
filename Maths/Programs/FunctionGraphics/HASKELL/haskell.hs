import Graphics.EasyPlot

main = do
    plot X11 $ Function2D [Title "Sine and Cosine"] [] (\x -> sin x * cos x)
    plot X11 sin
    plot (PNG "img/plot.png") (sin . cos)
    plot X11 $ Gnuplot2D [Color Blue] [] "2**cos(x)"
    plot X11 "x*y"
    plot X11 [ Data2D [Title "Graph 1", Color Red] [] [(x, x ** 3) | x <- [-4,-3.9..4]], Function2D [Title "Function 2", Color Blue] [] (\x -> x ** 2) ]
