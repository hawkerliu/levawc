# =========================================================================
#     This makefile was generated by
#     Bakefile 0.2.8 (http://www.bakefile.org)
#     Do not modify, all changes will be overwritten!
# =========================================================================



# -------------------------------------------------------------------------
# These are configurable options:
# -------------------------------------------------------------------------

# C compiler 
CC = cl

# Standard flags for CC 
CFLAGS = 

# Standard preprocessor flags (common for CC and CXX) 
CPPFLAGS = 

# Standard linker flags 
LDFLAGS = 

# Set to 1 to build debug version [0,1]
#   0 - Release
#   1 - Debug
DEBUG = 0



# -------------------------------------------------------------------------
# Do not modify the rest of this file!
# -------------------------------------------------------------------------

### Variables: ###

LEVAWC_CFLAGS = /MD$(____DEBUG_24) /DWIN32 $(____DEBUG) $(____DEBUG_21) \
	$(____DEBUG_22) $(______DEBUG) /Fdlevawc.pdb $(____DEBUG_26) /I.\.. \
	$(CPPFLAGS) $(CFLAGS)
LEVAWC_OBJECTS =  \
	levawc_slist.obj \
	levawc_dlist.obj \
	levawc_stack.obj \
	levawc_queue.obj \
	levawc_chashtbl.obj \
	levawc_pqueue.obj \
	levawc_heap.obj
DEMO1_CFLAGS = /MD$(____DEBUG_24) /DWIN32 $(____DEBUG) $(____DEBUG_21) \
	$(____DEBUG_22) $(______DEBUG) /Fddemo1.pdb $(____DEBUG_26) /I.\.. \
	$(CPPFLAGS) $(CFLAGS)
DEMO1_OBJECTS =  \
	demo1_demo1.obj
DEMO2_CFLAGS = /MD$(____DEBUG_24) /DWIN32 $(____DEBUG) $(____DEBUG_21) \
	$(____DEBUG_22) $(______DEBUG) /Fddemo2.pdb $(____DEBUG_26) /I.\.. \
	$(CPPFLAGS) $(CFLAGS)
DEMO2_OBJECTS =  \
	demo2_demo2.obj
DEMO3_CFLAGS = /MD$(____DEBUG_24) /DWIN32 $(____DEBUG) $(____DEBUG_21) \
	$(____DEBUG_22) $(______DEBUG) /Fddemo3.pdb $(____DEBUG_26) /I.\.. \
	$(CPPFLAGS) $(CFLAGS)
DEMO3_OBJECTS =  \
	demo3_demo3.obj
DEMO4_CFLAGS = /MD$(____DEBUG_24) /DWIN32 $(____DEBUG) $(____DEBUG_21) \
	$(____DEBUG_22) $(______DEBUG) /Fddemo4.pdb $(____DEBUG_26) /I.\.. \
	$(CPPFLAGS) $(CFLAGS)
DEMO4_OBJECTS =  \
	demo4_demo4.obj
DEMO5_CFLAGS = /MD$(____DEBUG_24) /DWIN32 $(____DEBUG) $(____DEBUG_21) \
	$(____DEBUG_22) $(______DEBUG) /Fddemo5.pdb $(____DEBUG_26) /I.\.. \
	$(CPPFLAGS) $(CFLAGS)
DEMO5_OBJECTS =  \
	demo5_demo5.obj

### Conditionally set variables: ###

!if "$(DEBUG)" == "0"
____DEBUG_19_25 = 
!endif
!if "$(DEBUG)" == "1"
____DEBUG_19_25 = $(____DEBUG_25)
!endif
!if "$(DEBUG)" == "0"
____DEBUG_33_39 = 
!endif
!if "$(DEBUG)" == "1"
____DEBUG_33_39 = $(____DEBUG_25)
!endif
!if "$(DEBUG)" == "0"
____DEBUG_47_53 = 
!endif
!if "$(DEBUG)" == "1"
____DEBUG_47_53 = $(____DEBUG_25)
!endif
!if "$(DEBUG)" == "0"
____DEBUG_61_67 = 
!endif
!if "$(DEBUG)" == "1"
____DEBUG_61_67 = $(____DEBUG_25)
!endif
!if "$(DEBUG)" == "0"
____DEBUG_75_81 = 
!endif
!if "$(DEBUG)" == "1"
____DEBUG_75_81 = $(____DEBUG_25)
!endif
!if "$(DEBUG)" == "0"
____DEBUG = /DNDEBUG
!endif
!if "$(DEBUG)" == "1"
____DEBUG = 
!endif
!if "$(DEBUG)" == "0"
____DEBUG_21 = /O2
!endif
!if "$(DEBUG)" == "1"
____DEBUG_21 = /Od
!endif
!if "$(DEBUG)" == "0"
____DEBUG_22 = 
!endif
!if "$(DEBUG)" == "1"
____DEBUG_22 = /Zi
!endif
!if "$(DEBUG)" == "0"
____DEBUG_23 = 
!endif
!if "$(DEBUG)" == "1"
____DEBUG_23 = /DEBUG
!endif
!if "$(DEBUG)" == "0"
______DEBUG = 
!endif
!if "$(DEBUG)" == "1"
______DEBUG = /D_DEBUG
!endif
!if "$(DEBUG)" == "0"
____DEBUG_24 = 
!endif
!if "$(DEBUG)" == "1"
____DEBUG_24 = d
!endif
!if "$(DEBUG)" == "0"
____DEBUG_25 = /opt:ref /opt:icf
!endif
!if "$(DEBUG)" == "1"
____DEBUG_25 = 
!endif
!if "$(DEBUG)" == "0"
____DEBUG_26 = 
!endif
!if "$(DEBUG)" == "1"
____DEBUG_26 = /W4
!endif


### Targets: ###

all: levawc.lib demo1.exe demo2.exe demo3.exe demo4.exe demo5.exe

clean: 
	-if exist .\*.obj del .\*.obj
	-if exist .\*.res del .\*.res
	-if exist .\*.pch del .\*.pch
	-if exist levawc.lib del levawc.lib
	-if exist demo1.exe del demo1.exe
	-if exist demo1.ilk del demo1.ilk
	-if exist demo1.pdb del demo1.pdb
	-if exist demo2.exe del demo2.exe
	-if exist demo2.ilk del demo2.ilk
	-if exist demo2.pdb del demo2.pdb
	-if exist demo3.exe del demo3.exe
	-if exist demo3.ilk del demo3.ilk
	-if exist demo3.pdb del demo3.pdb
	-if exist demo4.exe del demo4.exe
	-if exist demo4.ilk del demo4.ilk
	-if exist demo4.pdb del demo4.pdb
	-if exist demo5.exe del demo5.exe
	-if exist demo5.ilk del demo5.ilk
	-if exist demo5.pdb del demo5.pdb

levawc.lib: $(LEVAWC_OBJECTS)
	if exist $@ del $@
	link /LIB /NOLOGO /OUT:$@ @<<
	$(LEVAWC_OBJECTS)
<<

demo1.exe: $(DEMO1_OBJECTS) levawc.lib
	link /NOLOGO /OUT:$@  $(____DEBUG_23) /pdb:"demo1.pdb" $(____DEBUG_19_25) $(LDFLAGS) @<<
	$(DEMO1_OBJECTS)   levawc.lib
<<

demo2.exe: $(DEMO2_OBJECTS) levawc.lib
	link /NOLOGO /OUT:$@  $(____DEBUG_23) /pdb:"demo2.pdb" $(____DEBUG_33_39) $(LDFLAGS) @<<
	$(DEMO2_OBJECTS)   levawc.lib
<<

demo3.exe: $(DEMO3_OBJECTS) levawc.lib
	link /NOLOGO /OUT:$@  $(____DEBUG_23) /pdb:"demo3.pdb" $(____DEBUG_47_53) $(LDFLAGS) @<<
	$(DEMO3_OBJECTS)   levawc.lib
<<

demo4.exe: $(DEMO4_OBJECTS) levawc.lib
	link /NOLOGO /OUT:$@  $(____DEBUG_23) /pdb:"demo4.pdb" $(____DEBUG_61_67) $(LDFLAGS) @<<
	$(DEMO4_OBJECTS)   levawc.lib
<<

demo5.exe: $(DEMO5_OBJECTS) levawc.lib
	link /NOLOGO /OUT:$@  $(____DEBUG_23) /pdb:"demo5.pdb" $(____DEBUG_75_81) $(LDFLAGS) @<<
	$(DEMO5_OBJECTS)   levawc.lib
<<

levawc_slist.obj: .\..\slist.c
	$(CC) /c /nologo /TC /Fo$@ $(LEVAWC_CFLAGS) .\..\slist.c

levawc_dlist.obj: .\..\dlist.c
	$(CC) /c /nologo /TC /Fo$@ $(LEVAWC_CFLAGS) .\..\dlist.c

levawc_stack.obj: .\..\stack.c
	$(CC) /c /nologo /TC /Fo$@ $(LEVAWC_CFLAGS) .\..\stack.c

levawc_queue.obj: .\..\queue.c
	$(CC) /c /nologo /TC /Fo$@ $(LEVAWC_CFLAGS) .\..\queue.c

levawc_chashtbl.obj: .\..\chashtbl.c
	$(CC) /c /nologo /TC /Fo$@ $(LEVAWC_CFLAGS) .\..\chashtbl.c

levawc_pqueue.obj: .\..\pqueue.c
	$(CC) /c /nologo /TC /Fo$@ $(LEVAWC_CFLAGS) .\..\pqueue.c

levawc_heap.obj: .\..\heap.c
	$(CC) /c /nologo /TC /Fo$@ $(LEVAWC_CFLAGS) .\..\heap.c

demo1_demo1.obj: .\demo1.c
	$(CC) /c /nologo /TC /Fo$@ $(DEMO1_CFLAGS) .\demo1.c

demo2_demo2.obj: .\demo2.c
	$(CC) /c /nologo /TC /Fo$@ $(DEMO2_CFLAGS) .\demo2.c

demo3_demo3.obj: .\demo3.c
	$(CC) /c /nologo /TC /Fo$@ $(DEMO3_CFLAGS) .\demo3.c

demo4_demo4.obj: .\demo4.c
	$(CC) /c /nologo /TC /Fo$@ $(DEMO4_CFLAGS) .\demo4.c

demo5_demo5.obj: .\demo5.c
	$(CC) /c /nologo /TC /Fo$@ $(DEMO5_CFLAGS) .\demo5.c

