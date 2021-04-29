#include <R.h>
#include <Rinternals.h>
#include <stdlib.h> // for NULL
#include <R_ext/Rdynload.h>

/* FIXME: 
   Check these declarations against the C/Fortran source code.
*/

/* .Call calls */
extern SEXP _armatest_rcpp_test_function();

static const R_CallMethodDef CallEntries[] = {
    {"_armatest_rcpp_test_function", (DL_FUNC) &_armatest_rcpp_test_function, 0},
    {NULL, NULL, 0}
};

void R_init_armatest(DllInfo *dll)
{
    R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
    R_useDynamicSymbols(dll, FALSE);
}
