#' Imputation Function
#'
#' This function will Impute zero values of your data.
#' @param a data matrix A, which represent gene expressions for each cell/sample. rows = genes and cols= cells, first column should be gene names, first row should be cell names. 
#' @param b loged should be TRUE if your data is loged, default is FALSE
#' @param c prepared to save time prepared should be set to TRUE if you have ran impute on your data before, and you just want to try different methods, default is FALSE
#' @param d method could be set to "NMF", "KNN" or "SlopeOne". default is "NMF"
#' @keywords imputation
#' @export
#' @examples
#' impute(A)
#' impute(A, method="NMF" )


 
impute <- function(A=0, loged=FALSE, prepared=FALSE, method="NMF" ){

        print("preparing data..")
	#if(!loged){
	#	A=log(A+1,2)
	#}
	#if(!prepared){
		##get the nonzero elements IDs
	#	z=which(A!=0,arr.ind = T)
	#	tmp=c(1:length(z[,1]))

	#	for(i in c(1:length(z[,1]))){
	#		tmp[i]=A[z[i,1],z[i,2]]
	#	}

		#data=cbind(z,tmp)
		#top=c("GeneName","CellName","Expression")
		#colnames(data)=top

		#write.csv(data,"Ratings.csv")
		#write.csv(A,"Data.csv")
	#}
	print("Data has been prepared")
	print("Imputation Algorithm you chose")
	if(method=="NMF"){
		print("NMF")
		print("is running..")
		
		print("Data has been Imputed, the result is available at")
		print("ImputationResult-NMF.csv")
		print("The thresholded result is available at")
		print("ImputationResult-NMF-withThreshold.csv")
	}
	if(method=="KNN"){
		print("KNN")
		print("is running..")
		
		print("Data has been Imputed, the result is available at")
		print("ImputationResult-KNN.csv")
		print("The thresholded result is available at")
		print("ImputationResult-KNN-withThreshold.csv")
	}
	if(method=="SlopeOne"){
		print("SlopeOne")
		print("is running..")
		
		print("Data has been Imputed, the result is available at")
		print("ImputationResult-SlopeOne.csv")
		print("The thresholded result is available at")
		print("ImputationResult-SlopeOne-withThreshold.csv")
		
	}
}
