library("tidyverse")
library("rvest")
library("stringi")

#################################
#GUIATEL+INFOBEL ZARAGOZA#
#################################

url <- 'https://worlduniverse.fandom.com/wiki/Bulgarian_surnames'
webpage <- read_html(url)
names <- html_nodes(webpage, xpath = '//ol//li')[-108]
clean_names <- gsub(" |\n", "", html_text(names))[-89:-90]

clean_names_female <- c()
for(i in 1:length(clean_names)){
  clean_names_female[2*i-1] <- clean_names[i]
  if(stri_sub(clean_names[i],-1) == "v"){
    clean_names_female[2*i] <- paste0(clean_names[i], "a") 
  }
}
clean_names_female <- na.omit(clean_names_female)

urls_for_search <- c()
# for(i in 1:length(clean_names_female)){
#   urls_for_search[2*i-1] <-  paste0('http://blancas.paginasamarillas.es/jsp/resultados.jsp?ap1=',
#                                     clean_names_female[i],'&sec=30&pgpv=0&tbus=0&nomprov=Zaragoza&idioma=tml%5Flang')
#   urls_for_search[2*i] <- paste0('http://blancas.paginasamarillas.es/jsp/resultados.jsp?ap2=',
#                                  clean_names_female[i],'&sec=30&pgpv=0&tbus=0&nomprov=Zaragoza&idioma=tml%5Flang')
# }

for(i in 1:8){
  write_lines(path = paste0("C:/Users/sergi/Google Drive/COVID19/Zaragoza Guiatel+Infobel/Zaragoza ",
                            toString(i), " - Guiatel + Infobel.txt"),
              x = c(urls_for_search[(1+(i-1)*158):(158+158*(i-1))],
                    clean_names_female[(1+(i-1)*79):(79+79*(i-1))]))
}

###############################
#GUIATEL+INFOBEL MURCIA#
###############################

url <- 'https://worlduniverse.fandom.com/wiki/Bulgarian_surnames'
webpage <- read_html(url)
names <- html_nodes(webpage, xpath = '//ol//li')[-108]
clean_names <- gsub(" |\n", "", html_text(names))[-89:-90]

clean_names_female <- c()
for(i in 1:length(clean_names)){
  clean_names_female[2*i-1] <- clean_names[i]
  if(stri_sub(clean_names[i],-1) == "v"){
    clean_names_female[2*i] <- paste0(clean_names[i], "a") 
  }
}
clean_names_female <- na.omit(clean_names_female)

urls_for_search <- c()
# for(i in 1:length(clean_names_female)){
#   urls_for_search[2*i-1] <-  paste0('http://blancas.paginasamarillas.es/jsp/resultados.jsp?ap1=',
#                                     clean_names_female[i],'&sec=30&pgpv=0&tbus=0&nomprov=Murcia&idioma=tml%5Flang')
#   urls_for_search[2*i] <- paste0('http://blancas.paginasamarillas.es/jsp/resultados.jsp?ap2=',
#                                  clean_names_female[i],'&sec=30&pgpv=0&tbus=0&nomprov=Murcia&idioma=tml%5Flang')
# }

for(i in 1:8){
  write_lines(path = paste0("C:/Users/sergi/Google Drive/COVID19/Murcia Guiatel+Infobel/Murcia ",
                            toString(i), " - Guiatel + Infobel.txt"),
              x = c(urls_for_search[(1+(i-1)*158):(158+158*(i-1))],
                    clean_names_female[(1+(i-1)*79):(79+79*(i-1))]))
}

################################
#GUIATEL+INFOBEL GRANADA#
################################

url <- 'https://worlduniverse.fandom.com/wiki/Bulgarian_surnames'
webpage <- read_html(url)
names <- html_nodes(webpage, xpath = '//ol//li')[-108]
clean_names <- gsub(" |\n", "", html_text(names))[-89:-90]

clean_names_female <- c()
for(i in 1:length(clean_names)){
  clean_names_female[2*i-1] <- clean_names[i]
  if(stri_sub(clean_names[i],-1) == "v"){
    clean_names_female[2*i] <- paste0(clean_names[i], "a") 
  }
}
clean_names_female <- na.omit(clean_names_female)

urls_for_search <- c()
# for(i in 1:length(clean_names_female)){
#   urls_for_search[2*i-1] <-  paste0('http://blancas.paginasamarillas.es/jsp/resultados.jsp?ap1=',
#                                     clean_names_female[i],'&sec=30&pgpv=0&tbus=0&nomprov=Granada&idioma=tml%5Flang')
#   urls_for_search[2*i] <- paste0('http://blancas.paginasamarillas.es/jsp/resultados.jsp?ap2=',
#                                  clean_names_female[i],'&sec=30&pgpv=0&tbus=0&nomprov=Granada&idioma=tml%5Flang')
# }

for(i in 1:8){
  write_lines(path = paste0("C:/Users/sergi/Google Drive/COVID19/Granada Guiatel+Infobel/Granada ",
                            toString(i), " - Guiatel + Infobel.txt"),
              x = c(urls_for_search[(1+(i-1)*158):(158+158*(i-1))],
                    clean_names_female[(1+(i-1)*79):(79+79*(i-1))]))
}

#################################
#GUIATEL+INFOBEL ASTURIAS#
#################################

url <- 'https://worlduniverse.fandom.com/wiki/Bulgarian_surnames'
webpage <- read_html(url)
names <- html_nodes(webpage, xpath = '//ol//li')[-108]
clean_names <- gsub(" |\n", "", html_text(names))[-89:-90]

clean_names_female <- c()
for(i in 1:length(clean_names)){
  clean_names_female[2*i-1] <- clean_names[i]
  if(stri_sub(clean_names[i],-1) == "v"){
    clean_names_female[2*i] <- paste0(clean_names[i], "a") 
  }
}
clean_names_female <- na.omit(clean_names_female)

urls_for_search <- c()
# for(i in 1:length(clean_names_female)){
#   urls_for_search[2*i-1] <-  paste0('http://blancas.paginasamarillas.es/jsp/resultados.jsp?ap1=',
#                                     clean_names_female[i],'&sec=30&pgpv=0&tbus=0&nomprov=Asturias&idioma=tml%5Flang')
#   urls_for_search[2*i] <- paste0('http://blancas.paginasamarillas.es/jsp/resultados.jsp?ap2=',
#                                  clean_names_female[i],'&sec=30&pgpv=0&tbus=0&nomprov=Asturias&idioma=tml%5Flang')
# }

for(i in 1:8){
  write_lines(path = paste0("C:/Users/sergi/Google Drive/COVID19/Asturias Guiatel+Infobel/Asturias ",
                            toString(i), " - Guiatel + Infobel.txt"),
              x = c(urls_for_search[(1+(i-1)*158):(158+158*(i-1))],
                    clean_names_female[(1+(i-1)*79):(79+79*(i-1))]))
}

################################
#GUIATEL+INFOBEL ALMERIA#
################################

url <- 'https://worlduniverse.fandom.com/wiki/Bulgarian_surnames'
webpage <- read_html(url)
names <- html_nodes(webpage, xpath = '//ol//li')[-108]
clean_names <- gsub(" |\n", "", html_text(names))[-89:-90]

clean_names_female <- c()
for(i in 1:length(clean_names)){
  clean_names_female[2*i-1] <- clean_names[i]
  if(stri_sub(clean_names[i],-1) == "v"){
    clean_names_female[2*i] <- paste0(clean_names[i], "a") 
  }
}
clean_names_female <- na.omit(clean_names_female)

urls_for_search <- c()
# for(i in 1:length(clean_names_female)){
#   urls_for_search[2*i-1] <-  paste0('http://blancas.paginasamarillas.es/jsp/resultados.jsp?ap1=',
#                                     clean_names_female[i],'&sec=30&pgpv=0&tbus=0&nomprov=Almeria&idioma=tml%5Flang')
#   urls_for_search[2*i] <- paste0('http://blancas.paginasamarillas.es/jsp/resultados.jsp?ap2=',
#                                  clean_names_female[i],'&sec=30&pgpv=0&tbus=0&nomprov=Almeria&idioma=tml%5Flang')
# }

for(i in 1:8){
  write_lines(path = paste0("C:/Users/sergi/Google Drive/COVID19/Almeria Guiatel+Infobel/Almeria ",
                            toString(i), " - Guiatel + Infobel.txt"),
              x = c(urls_for_search[(1+(i-1)*158):(158+158*(i-1))],
                    clean_names_female[(1+(i-1)*79):(79+79*(i-1))]))
}

#################################
#GUIATEL+INFOBEL ALBACETE#
#################################

url <- 'https://worlduniverse.fandom.com/wiki/Bulgarian_surnames'
webpage <- read_html(url)
names <- html_nodes(webpage, xpath = '//ol//li')[-108]
clean_names <- gsub(" |\n", "", html_text(names))[-89:-90]

clean_names_female <- c()
for(i in 1:length(clean_names)){
  clean_names_female[2*i-1] <- clean_names[i]
  if(stri_sub(clean_names[i],-1) == "v"){
    clean_names_female[2*i] <- paste0(clean_names[i], "a") 
  }
}
clean_names_female <- na.omit(clean_names_female)

urls_for_search <- c()
# for(i in 1:length(clean_names_female)){
#   urls_for_search[2*i-1] <-  paste0('http://blancas.paginasamarillas.es/jsp/resultados.jsp?ap1=',
#                                     clean_names_female[i],'&sec=30&pgpv=0&tbus=0&nomprov=Albacetea&idioma=tml%5Flang')
#   urls_for_search[2*i] <- paste0('http://blancas.paginasamarillas.es/jsp/resultados.jsp?ap2=',
#                                  clean_names_female[i],'&sec=30&pgpv=0&tbus=0&nomprov=Albacete&idioma=tml%5Flang')
# }

for(i in 1:8){
  write_lines(path = paste0("C:/Users/sergi/Google Drive/COVID19/Albacete Guiatel+Infobel/Albacete ",
                            toString(i), " - Guiatel + Infobel.txt"),
              x = c(urls_for_search[(1+(i-1)*158):(158+158*(i-1))],
                    clean_names_female[(1+(i-1)*79):(79+79*(i-1))]))
}

##############
#ZARAGOZA ABC#
##############

url <- 'http://www.abctelefonos.com/indice_espana/zaragoza'
webpage <- read_html(url)
urls <- html_nodes(webpage, xpath = '//a[@class="name"]')
urls_enteras <- paste0("http://www.abctelefonos.com", unlist(map(html_attrs(urls), 2)))[-1:-2]
for(i in 1:15){
  write_lines(path = paste0("C:/Users/sergi/Google Drive/COVID19/Zaragoza ABCtelefonos/",
                            toString(i), " Zaragoza ABC.txt"), x = urls_enteras[(1+(i-1)*29):(29+29*(i-1))])
}


############
#MURCIA ABC#
############

url <- 'http://www.abctelefonos.com/indice_espana/murcia'
webpage <- read_html(url)
urls <- html_nodes(webpage, xpath = '//a[@class="name"]')
urls_enteras <- paste0("http://www.abctelefonos.com", unlist(map(html_attrs(urls), 2)))[-1:-2]
for(i in 1:30){
  write_lines(path = paste0("C:/Users/sergi/Google Drive/COVID19/Murcia ABCtelefonos/",
                            toString(i), " Murcia ABC.txt"), x = urls_enteras[(1+(i-1)*26):(26+26*(i-1))])
}

##############
#ASTURIAS ABC#
##############

url <- 'http://www.abctelefonos.com/indice_espana/asturias'
webpage <- read_html(url)
urls <- html_nodes(webpage, xpath = '//a[@class="name"]')
urls_enteras <- paste0("http://www.abctelefonos.com", unlist(map(html_attrs(urls), 2)))[-1:-2]
for(i in 1:30){
  write_lines(path = paste0("C:/Users/sergi/Google Drive/COVID19/Asturias ABCtelefonos/",
                            toString(i), " Asturias ABC.txt"), x = urls_enteras[(1+(i-1)*81):(81+81*(i-1))])
}

#############
#ALMERIA ABC#
#############

library(rvest)
setwd("~/Cuarentena/Almeria")
url <- 'http://www.abctelefonos.com/indice_espana/almeria'
webpage <- read_html(url)
urls <- html_nodes(webpage, xpath = '//a[@class="name"]')
urls_enteras <- paste0("http://www.abctelefonos.com", unlist(map(html_attrs(urls), 2)))[-1:-2]
for(i in 1:15){
  write_lines(path = paste0("C:/Users/sergi/Google Drive/COVID19/Almeria ABCtelefonos/",
                            toString(i), " Almeria ABC.txt"), x = urls_enteras[(1+(i-1)*38):(38+38*(i-1))])
}

##############
#ALBACETE ABC#
##############

library(rvest)
setwd("~/Cuarentena/Albacete")
url <- 'http://www.abctelefonos.com/indice_espana/albacete'
webpage <- read_html(url)
urls <- html_nodes(webpage, xpath = '//a[@class="name"]')
urls_enteras <- paste0("http://www.abctelefonos.com", unlist(map(html_attrs(urls), 2)))[-1:-2]
for(i in 1:10){
  write_lines(path = paste0("C:/Users/sergi/Google Drive/COVID19/Albacete ABCtelefonos/",
                            toString(i), " Albacete ABC.txt"), x = urls_enteras[(1+(i-1)*36):(36+36*(i-1))])
}

#############
#GRANADA ABC#
#############

library(rvest)
setwd("~/Cuarentena/Granada")
url <- 'http://www.abctelefonos.com/indice_espana/granada'
webpage <- read_html(url)
urls <- html_nodes(webpage, xpath = '//a[@class="name"]')
urls_enteras <- paste0("http://www.abctelefonos.com", unlist(map(html_attrs(urls), 2)))[-1:-2]
for(i in 1:16){
  write_lines(path = paste0("C:/Users/sergi/Google Drive/COVID19/Granada ABCtelefonos/",
                            toString(i), " Granada ABC.txt"), x = urls_enteras[(1+(i-1)*30):(30+30*(i-1))])
}

