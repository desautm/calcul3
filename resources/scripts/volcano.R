p <- plot_ly(z=~volcano,type="surface",showscale=FALSE)
orca(p, "volcano.png")

p <- plot_ly(z=~volcano,type="contour")
orca(p, "volcano-contour.png")