def comand = "find .kubernetes -type f -exec sed -i -e s/{{tag_version}}/20/g {} +"
sh comand


