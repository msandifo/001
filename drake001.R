
library(drake)
pkgconfig::set_config("drake::strings_in_dots" = "literals")
local.path=NULL
drake.path <-
  dirname(rstudioapi::getSourceEditorContext()$path )
setwd(drake.path)

setwd("./src")
source('themes001.R')
source('functions001.R')
setwd(drake.path)

download_aemo_aggregated(year=2010:2018, months=1:12, local.path=local.path)
download_aemo_current( local.path=local.path )

clean(twitter001)
make( twitter001)

setwd("./figs")
ggsave("ms001.png",  readd(repo001.plot) ,width=8, height=5) 
ggsave("ms002.png",  readd(repo002.plot) ,width=8, height=5) 
ggsave("ms003.png",  readd(repo003.plot) ,width=8, height=5) 
setwd(drake.path)
  
  
