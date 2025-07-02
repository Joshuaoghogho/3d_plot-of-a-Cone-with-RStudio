
#To illustrate simple right circular cone
cone <- function(x, y){
  sqrt(x ^ 2 + y ^ 2)}

# prepare variables.
x <- y <- seq(-1, 1, length = 30)
z <- outer(x, y, cone)
#outer() is used to apply a function to two arrays
# plot the 3D surface
persp(x, y, z)
#===========================
  # Adding Titles and Labeling Axes to Plot
  cone <- function(x, y){
    sqrt(x ^ 2 + y ^ 2)
  }

# prepare variables.
x <- y <- seq(-1, 1, length = 30)
z <- outer(x, y, cone)

# plot the 3D surface
# Adding Titles and Labeling Axes to Plot
persp(x, y, z,
      main="Perspective Plot of a Cone",
      zlab = "Height",
      theta = 60, phi = 20,#theta, phi :angles defining the viewing direction. 
                           #theta gives the azimuthal direction:azimuth angle is 
                     #the compass direction from which the sunlight is coming and phi the
              #  colatitude(a colatitude is the complementary angle of a given latitude, i.e. 
             #the difference between 90° and the latitude.)
      col = "orange",shade=0.5)




# Define the length and width (x and y coordinates)
length <- seq(-5, 5, length.out = 30)  # X-axis: length
width  <- seq(-5, 5, length.out = 30)  # Y-axis: width

# Create grid of x and y values
x <- length
y <- width
z <- outer(x, y, function(x, y) sqrt(x^2 + y^2))  # Z-axis: height (like a cone)

# Plot the 3D surface
persp(x, y, z,
      main = "3D Perspective Plot of a Cone",
      xlab = "Length",
      ylab = "Width",
      zlab = "Height",
      theta = 60, phi = 20,
      col = "orange", shade = 0.5)




# Save as PNG
png("3d_cone_plot.png", width = 800, height = 600)
persp(x, y, z,
      main = "3D Perspective Plot of a Cone",
      xlab = "Length", ylab = "Width", zlab = "Height",
      theta = 60, phi = 20,
      col = "orange", shade = 0.5)
dev.off()


