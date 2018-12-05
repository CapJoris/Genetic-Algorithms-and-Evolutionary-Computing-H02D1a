setwd("D:/Gebruikers/Joris/Desktop/Master AI/First Semester/Genetic Algorithms and Evolutionairy Computing/Genetic-Algorithms-and-Evolutionary-Computing-H02D1a/template/test results OX Inversion loop on")

TSP131M05 = read.csv("TSP131C80M05P200G500E1.csv", header=FALSE)
TSP131M10 = read.csv("TSP131C80M10P200G500E1.csv", header=FALSE)
TSP131M20 = read.csv("TSP131C80M20P200G500E1.csv", header=FALSE)
TSP131M30 = read.csv("TSP131C80M30P200G500E1.csv", header=FALSE)
TSP131M40 = read.csv("TSP131C80M40P200G500E1.csv", header=FALSE)
TSP131M50 = read.csv("TSP131C80M50P200G500E1.csv", header=FALSE)
TSP131M58 = read.csv("TSP131C80M58P200G500E1.csv", header=FALSE)
TSP131M60 = read.csv("TSP131C80M60P200G500E1.csv", header=FALSE)
TSP131M70 = read.csv("TSP131C80M70P200G500E1.csv", header=FALSE)
TSP131M80 = read.csv("TSP131C80M80P200G500E1.csv", header=FALSE)


total = sum(TSP131M05$V1[which(TSP131M05$V4 == 500)])
averageM05 = total/50
total = sum(TSP131M10$V1[which(TSP131M10$V4 == 500)])
averageM10 = total/50
total = sum(TSP131M20$V1[which(TSP131M20$V4 == 500)])
averageM20 = total/50
total = sum(TSP131M30$V1[which(TSP131M30$V4 == 500)])
averageM30 = total/50
total = sum(TSP131M40$V1[which(TSP131M40$V4 == 500)])
averageM40 = total/50
total = sum(TSP131M50$V1[which(TSP131M50$V4 == 500)])
averageM50 = total/50
total = sum(TSP131M60$V1[which(TSP131M60$V4 == 500)])
averageM60 = total/50
total = sum(TSP131M70$V1[which(TSP131M70$V4 == 500)])
averageM70 = total/50
total = sum(TSP131M80$V1[which(TSP131M80$V4 == 500)])
averageM80 = total/50


BelgiumM20 = read.csv("BelgiumC80M20P200G500E1.csv", header=FALSE)
BelgiumM30 = read.csv("BelgiumC80M30P200G500E1.csv", header=FALSE)
BelgiumM40 = read.csv("BelgiumC80M40P200G500E1.csv", header=FALSE)
BelgiumM50 = read.csv("BelgiumC80M50P200G500E1.csv", header=FALSE)
BelgiumM58 = read.csv("BelgiumC80M58P200G500E1.csv", header=FALSE)
BelgiumM60 = read.csv("BelgiumC80M60P200G500E1.csv", header=FALSE)
BelgiumM70 = read.csv("BelgiumC80M70P200G500E1.csv", header=FALSE)


total = sum(BelgiumM20$V1[which(BelgiumM20$V4 == 500)])
averageM20 = total/50
total = sum(BelgiumM30$V1[which(BelgiumM30$V4 == 500)])
averageM30 = total/50
total = sum(BelgiumM40$V1[which(BelgiumM40$V4 == 500)])
averageM40 = total/50
total = sum(BelgiumM50$V1[which(BelgiumM50$V4 == 500)])
averageM50 = total/50
total = sum(BelgiumM58$V1[which(BelgiumM58$V4 == 500)])
averageM58 = total/50
total = sum(BelgiumM60$V1[which(BelgiumM60$V4 == 500)])
averageM60 = total/50
total = sum(BelgiumM70$V1[which(BelgiumM70$V4 == 500)])
averageM70 = total/50


TSP380M05 = read.csv("TSP380C80M05P200G500E1.csv", header=FALSE)
TSP380M10 = read.csv("TSP380C80M10P200G500E1.csv", header=FALSE)
TSP380M20 = read.csv("TSP380C80M20P200G500E1.csv", header=FALSE)
TSP380M30 = read.csv("TSP380C80M30P200G500E1.csv", header=FALSE)
TSP380M40 = read.csv("TSP380C80M40P200G500E1.csv", header=FALSE)
TSP380M50 = read.csv("TSP380C80M50P200G500E1.csv", header=FALSE)
TSP380M58 = read.csv("TSP380C80M58P200G500E1.csv", header=FALSE)
TSP380M60 = read.csv("TSP380C80M60P200G500E1.csv", header=FALSE)
TSP380M70 = read.csv("TSP380C80M70P200G500E1.csv", header=FALSE)


total = sum(TSP380M05$V1[which(TSP380M05$V4 == 500)])
averageM05 = total/50
total = sum(TSP380M10$V1[which(TSP380M10$V4 == 500)])
averageM10 = total/50
total = sum(TSP380M20$V1[which(TSP380M20$V4 == 500)])
averageM20 = total/50
total = sum(TSP380M30$V1[which(TSP380M30$V4 == 500)])
averageM30 = total/50
total = sum(TSP380M40$V1[which(TSP380M40$V4 == 500)])
averageM40 = total/50
total = sum(TSP380M50$V1[which(TSP380M50$V4 == 500)])
averageM50 = total/50
total = sum(TSP380M58$V1[which(TSP380M58$V4 == 500)])
averageM58 = total/50
total = sum(TSP380M60$V1[which(TSP380M60$V4 == 500)])
averageM60 = total/50
total = sum(TSP380M70$V1[which(TSP380M70$V4 == 500)])
averageM70 = total/50






























M05ttest <- M05$V1[which(M05$V4 ==500)]
M10ttest <- M10$V1[which(M10$V4 ==500)]
M20ttest <- M20$V1[which(M20$V4 ==500)]
M30ttest <- M30$V1[which(M30$V4 ==500)]
M40ttest <- M40$V1[which(M40$V4 ==500)]


t.test(C80M20ttest, C80M50ttest)
t.test(C80M20ttest, C80M80ttest)
t.test(C80M50ttest, C80M80ttest)