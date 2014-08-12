#include <R.h>
#include <Rinternals.h>


#define CHARPT(x,i)	((char*)CHAR(STRING_ELT(x,i)))


int figlet_main(int argc, char** argv);


char *unliteral(const char *str)
{
  char *ret;
  ret = (char *) malloc(strlen(str) + 1);
  
  if (ret == NULL) 
    return NULL;
  
  strcpy(ret, str);
  return ret;
}



int freestr(int argc, char **argv)
{
  int i;
  
  for (i=0; i<argc; i++)
    free(argv[i]);
  
  free(argv);
  
  return 0;
}



SEXP R_figlet_main(SEXP argv_)
{
  int i;
  const int argc = LENGTH(argv_);
  
  char **argv = (char**) malloc(argc * sizeof(*argv));
  
  for (i=0; i<argc; i++)
    argv[i] = unliteral(CHARPT(argv_, i));
  
  figlet_main(argc, argv);
  
  freestr(argc, argv);
  
  return R_NilValue;
}

