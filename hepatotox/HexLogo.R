install.packages(c("magick", "sysfonts", "tidyverse"))
library(hexSticker)
library(magick)
library(sysfonts)
library(tidyverse)
setwd("C:/Users/Dimple/Desktop/PHUSE/PHUSE Hepatotoxicity White Paper")
liver_img <- image_read('Liver.png')
pill_img <- image_read('Pill.png')

# Resize images if needed (optional)
liver_img <- image_scale(liver_img, "220x220")
pill_img <- image_scale(pill_img, "130x130")

# Combine images side by side
combined_img <- image_append(c(liver_img, pill_img))  # horizontally

sticker(
  subplot = combined_img,
  package = "Hepatotox",
  s_width = 1.7 ,
  s_height = 1.7,
  s_x = .9,
  s_y = .75,
  p_size = 11.5,
  p_y = 1.3,
  p_color = "darkgreen",
  h_fill = "white",
  h_color = "darkgreen",
  h_size = 2
) %>% print()