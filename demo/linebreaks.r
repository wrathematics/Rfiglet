library(Rfiglet)

x <- "asdf
asdf
asdf"

# Linebreaks become spaces
figlet(x)

# Linebreaks remain linebreaks
figlet(x, respect.linebreaks=TRUE)

