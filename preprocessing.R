##require(rectr)
require(tibble)
require(dplyr)
##require(quanteda)

readRDS("final_data_endefr.RDS") %>% mutate(content = paste(lede, body), lang = tolower(lang), id = row_number()) %>% select(content, lang, pubdate, headline, id) -> paris
