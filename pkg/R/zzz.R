".onUnload" <- function(libpath) {
	if (exists(".revoDoParCluster", where=1) && !is.null(.revoDoParCluster)) {
		stopCluster(.revoDoParCluster)
		remove(".revoDoParCluster", where=1)
	}
}