# Combining Factors

# Combining factors acts like interacting two variables. In other words, like interacting two binary variables to create all four possible combinations.

# Create a binary variable for treatment or control
treatment <- gl(2, 1, labels = c("treatment", "control"))

# Create a binary variable for female or male
gender <- gl(2, 1, labels = c("female", "male"))

# Interact the factors by combining them
interaction(treatment, gender)