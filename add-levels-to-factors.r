# Adding Levels To A Factor (i.e. adding Categories To A Nominal Variable)

# A Factor object is used to unordered categories, that is categories where each one is different but considered equal (e.g. types of fruit, names, gender, countries, etc.)

# One common problem people have with factors is trying to add a level (i.e. add a category) to a factor.

# The reason is that in order to manipulate factors, you have to manipulate it's levels, not the names of each category.

# remake district categories with the combination of district categories and a new SOUTH CENTRAL category
levels(bmore.crime$district) <- c(levels(bmore.crime$district), "SOUTH CENTRAL")