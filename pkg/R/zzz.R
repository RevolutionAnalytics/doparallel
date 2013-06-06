".onUnload" <- function(libpath) {
	if (exists(".revoDoParCluster", where=.options) && !is.null(.revoDoParCluster)) {
		stopCluster(.revoDoParCluster)
		remove(".revoDoParCluster", where=.options)
	}
}
