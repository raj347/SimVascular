ifeq ($(CLUSTER), x64_cygwin)
    SV_FREETYPE_DEFS   =
    SV_FREETYPE_TOP    = $(OPEN_SOFTWARE_BINARIES_TOPLEVEL)/freetype-2.6.3
    SV_FREETYPE_INCDIR = -I $(SV_FREETYPE_TOP)/include/freetype2
    SV_FREETYPE_LIBS   = $(LIBPATH_COMPILER_FLAG)$(SV_FREETYPE_TOP)/lib \
                     $(LIBFLAG)freetype$(LIBLINKEXT)
    SV_FREETYPE_DLLS   =  $(SV_FREETYPE_TOP)/lib
    SV_FREETYPE_SO_PATH = $(SV_FREETYPE_TOP)/lib
endif
