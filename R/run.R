
##to build both a paged html version and a gitbook follow the steps below

#######################################################################################
##change your VErsion #
#######################################################################################



##move the html to the docs folder so it can be viewed online
file.rename('application_moe.html', 'docs/index.html')
file.rename('application_moe.pdf', 'docs/application_moe_dfo.pdf')

#split off the map and the stream lists to seperate documents for dfo
# page 4 = map
# page 5 and 6 are the stream lists


# trim up the file.  We ditch the last page only when there are references.
pdftools::pdf_subset(paste0(getwd(), "/docs/application_moe_dfo.pdf"),
                     pages = 4, output = paste0(getwd(), "/docs/application_dfo_map.pdf"))

# trim up the file.  We ditch the last page only when there are references.
pdftools::pdf_subset(paste0(getwd(), "/docs/application_moe_dfo.pdf"),
                     pages = 5:6, output = paste0(getwd(), "/docs/application_dfo_site_list.pdf"))




