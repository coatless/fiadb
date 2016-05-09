file.dir = "F:\\Documents\\GitHub\\nasacms\\fia"

temp = list.files(path = file.dir, pattern="*.CSV")
tempnocsv = gsub(".CSV","", temp)

cat(print(paste("COPY FIA.",tempnocsv," FROM '",paste0(file.dir,"\\",temp),"' DELIMITER ',' CSV HEADER;", sep="", collapse="\n")))
