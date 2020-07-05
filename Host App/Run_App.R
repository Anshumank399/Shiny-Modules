
# Load Shiny Library ------------------------------------------------------

library(shiny)

# Get Ip of current server ------------------------------------------------

ipconfig_info = system("ipconfig", intern = T)
get_ip =        ipconfig_info[grep("IPv4", ipconfig_info)]
ip  =           gsub(".*? ([[:digit:]])", "\\1", get_ip)
port = "1111"

print(paste0("The shinyWeb Application runs on http://",ip,":", port))


# Run App -----------------------------------------------------------------

runApp(path, launch.browser = FALSE, port = port, host = ip)
