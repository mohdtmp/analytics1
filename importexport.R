#export import

#check for files and folders
dir('./data2')
list.files('./data2')
list.files('./data')
file.exists("./data/mtcars.csv")
data = scan("./data2/hhe.txt", what = "character")
head(data)
class(data)
#read from csv
#first create a data set from iris data set
head(iris)
write.csv(iris,"./data/iris.csv",row.names = F)
#goto folder dats and see iris.csv
read1=read.csv(file="./data/iris.csv",header=T,sep=',')
str(read1)

read2 = read.table(file="./data/iris.csv", header = TRUE,sep = ",")
str(read2);class(read2) 
head(read2)

read3 = read.delim(file="./data/iris.csv", header = TRUE,sep = ",")
str(read3) ; class(read3)
head(read3)

#or location is different from Project Folders, or want to search for the file
read4 = read.csv(file=file.choose())
str(read4)
head(read4)


#CSV file from web
read_web1 = read.csv('http://www.stats.ox.ac.uk/pub/datasets/csb/ch11b.dat')
head(read_web1)

#Import from Google Sheet
library(gsheet)
url_gsheet = "https://docs.google.com/spreadsheets/d/1QogGSuEab5SZyZIw1Q8h-0yrBNs1Z_eEBJG7oRESW5k/edit#gid=107865534"
df_gsheet = as.data.frame(gsheet2tbl(url_gsheet))
head(df_gsheet)

#Import from Excel
# read in the first worksheet from the workbook myexcel.xlsx
# first row contains variable names
library(xlsx)
library(rJava)
df_excel1 = read.xlsx("./data2/myexcel.xlsx", 1)
df_excel1
# read in the worksheet named mysheet
df_excel2a = read.xlsx("./data2/myexcel.xlsx", sheetName = "bowlers")
df_excel2a
df_excel2b = read.xlsx("./data2/myexcel.xlsx", sheetIndex = 2)
df_excel2b