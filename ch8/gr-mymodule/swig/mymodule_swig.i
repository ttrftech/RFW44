/* -*- c++ -*- */

#define MYMODULE_API

%include "gnuradio.i"			// the common stuff

//load generated python docstrings
%include "mymodule_swig_doc.i"

%{
#include "mymodule/double_ff.h"
%}


%include "mymodule/double_ff.h"
GR_SWIG_BLOCK_MAGIC2(mymodule, double_ff);
