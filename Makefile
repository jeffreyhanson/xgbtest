all: initc data docs test check

initc:
	R --slave -e "Rcpp::compileAttributes()"
	R --slave -e "tools::package_native_routine_registration_skeleton('.', 'src/init.c', character_only = FALSE)"

docs: man readme

readme:
	R --slave -e "rmarkdown::render('README.Rmd')"

man:
	R --slave -e "devtools::document()"

test:
	R --slave -e "devtools::test()" > test.log 2>&1
	rm -f tests/testthat/Rplots.pdf

check:
	echo "\n===== R CMD CHECK =====\n" > check.log 2>&1
	R --slave -e "devtools::check(vignettes = FALSE)" >> check.log 2>&1

.PHONY: test man all initc check docs
