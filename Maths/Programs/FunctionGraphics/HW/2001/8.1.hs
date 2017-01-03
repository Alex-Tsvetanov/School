import Graphics.EasyPlot

main = do
--    plot X11 "abs (x) + abs (x + y)"
     plot X11 $ [Gnuplot3D [Color DarkGreen] [RangeY 0 1] "abs(x) + abs (x + y)", Gnuplot3D [Color Red] [RangeY 0 1] "1"]
