xy <- meshgrid(linspace(-3,3,25))
x <- xy$X
y <- xy$Y

z <- 1-x-y
p <- plot_ly(x=x,y=y,z=~z) %>% add_surface()
orca(p, "plan.png")

z <- x^2+y^2
p <- plot_ly(x=x,y=y,z=~z) %>% add_surface()
orca(p, "paraboloide.png")

z <- (x^2-y^2)/2
p <- plot_ly(x=x,y=y,z=~z) %>% add_surface()
orca(p, "hyperboloide.png")

z <- sqrt(x^2+y^2)
p <- plot_ly(x=x,y=y,z=~z) %>% add_surface()
orca(p, "cone.png")

delta <- 0.25
theta <- seq(-pi/2-delta, pi/2+delta, by=delta)
phi <- seq(0, 2*pi+delta, by=delta)
mgrd <- meshgrid(phi, theta)
phi <- mgrd$X
theta <-  mgrd$Y
x <- cos(theta) * cos(phi) * 1
y <- cos(theta) * sin(phi) * 1
z <- sin(theta) * 1
sphere <- plot_ly(x=x, y=y, z=z, showscale=FALSE) %>% add_surface()
orca(sphere, "sphere.png")

x <- cos(theta) * cos(phi) * 2
y <- cos(theta) * sin(phi) * 3
z <- sin(theta) * 1
ellipse <- plot_ly(x=x, y=y, z=z, showscale=FALSE) %>% add_surface()
orca(ellipse, "ellipse.png")

a < 2
c <- 3
u <- seq(-2, 2, by = delta)
v <- seq(0-delta, 2*pi+delta, by = delta)
mgrd <- meshgrid(u,v)
u <- mgrd$X
v <- mgrd$Y
x <- a*sqrt(1+u^2)*cos(v)
y <- a*sqrt(1+u^2)*sin(v)
z <- c*u
hyper1nappe <- plot_ly(x=x, y=y, z=z, showscale=FALSE) %>% add_surface()
orca(hyper1nappe, "hyper1nappe.png")

a <- 1
c <- 2
delta <- 0.35
u <- seq(-2, 2, by = delta)
v <- seq(0-delta, 2*pi+delta, by = delta)
mgrd <- meshgrid(u,v)
u <- mgrd$X
v <- mgrd$Y
x <- a*sinh(u)*cos(v)
y <- a*sinh(u)*sin(v)
z1 <- c*cosh(u)
z2 <- -z1
hyper2nappe <- plot_ly(x=x, y=y,showscale=FALSE) %>%
  add_surface(z = z1) %>%
  add_surface(z = z2)
orca(hyper2nappe, "hyper2nappe.png")

r <- 1
a <- 2
delta <- 0.35
u <- seq(0-delta, 2*pi+delta, by = delta)
v <- seq(0-delta, 2*pi+delta, by = delta)
mgrd <- meshgrid(u,v)
u <- mgrd$X
v <- mgrd$Y
x <- (a+r*cos(u))*cos(v)
y <- (a+r*cos(u))*sin(v)
z <- r*sin(u)
tore <- plot_ly(x=x, y=y, z=z, showscale=FALSE) %>% add_surface()
orca(tore, "tore.png")

mshgrd <- meshgrid(seq(-3,3,by=0.5),seq(-3,3,by=0.5))
xs <- mshgrd$X
ys <- mshgrd$Y
zs <- (x^2+y)/10*3

mshplan <-  meshgrid(rep(-1,13))
xp1 <- mshplan$X
yp1 <- mshgrd$X
zp1 <- mshgrd$Y

mshplan <-  meshgrid(rep(1,13))
xp2 <- mshgrd$X
yp2 <- mshplan$X
zp2 <- mshgrd$Y

fct_coupe <- plot_ly(showscale=FALSE) %>%
  add_surface(x=xs,y=ys,z=zs)
orca(fct_coupe,"fct_coupe.png")

fct_coupe_plan1 <- plot_ly(showscale=FALSE) %>%
  add_surface(x=xs,y=ys,z=zs) %>%
  add_surface(x=xp1,y=yp1,z=zp1)
orca(fct_coupe_plan1,"fct_coupe_plan1.png")

fct_coupe_plan2 <- plot_ly(showscale=FALSE) %>%
  add_surface(x=xs,y=ys,z=zs) %>%
  add_surface(x=xp2,y=yp2,z=zp2)
orca(fct_coupe_plan2,"fct_coupe_plan2.png")

xy <- meshgrid(linspace(-2,2,25))
x <- xy$X
y <- xy$Y
fct <- x^4+y^4-4*x*y+1
fct_pt_critique <- plot_ly(x=x,y=y,z=fct, showscale=FALSE) %>%
  add_surface()
orca(fct_pt_critique,"fct_pt_critique.png")
fct_pt_critique_contour <- plot_ly(z=~fct, type="contour", showscale=FALSE)
orca(fct_pt_critique_contour, "fct_pt_critique_contour.png")

x <- meshgrid(linspace(0,3,20))$X
y <- meshgrid(linspace(0,2,20))$Y
fct <- x^2-2*x*y+2*y
optim_rect <- plot_ly(x=x,y=y,z=~fct, type="surface", showscale=FALSE)
orca(optim_rect, "optim_rect.png")
