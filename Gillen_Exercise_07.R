## Question 1

odd_rows <- function(dat){
  n <- nrow(dat)
  odd <- seq(1, n, 2)
  dat.new <- dat[odd,]
  return(dat.new)
}

## Question 2

species_count <- function(species){
  spec_count <- nrow(iris[iris$Species == species, ])
  return(spec_count)
}

width_dataframe <- function(sepal_width){
  data.width <- iris[iris$Sepal.Width > sepal_width, ] 
  return(data.width)
}

species_csv <- function(species){
  species_data <- iris[iris$Species == species, ]
  species.csv <- paste(species, "csv", sep = ".")
  write.csv(species_data, species.csv) 
  return(species.csv)
}


species_csv <- function(species){
  species_data <- iris[iris$Species == species, ]
  write.csv(species_data, paste(species, "csv", sep = ".")) 
}
