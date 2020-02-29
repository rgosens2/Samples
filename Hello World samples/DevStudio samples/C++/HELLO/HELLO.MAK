# Microsoft Developer Studio Generated NMAKE File, Based on hello.dsp
!IF "$(CFG)" == ""
CFG=Hello - Win32 Release
!MESSAGE No configuration specified.  Defaulting to Hello - Win32 Release.
!ENDIF 

!IF "$(CFG)" != "Hello - Win32 Release" && "$(CFG)" != "Hello - Win32 Debug" &&\
 "$(CFG)" != "Hello - Macintosh Release" && "$(CFG)" !=\
 "Hello - Macintosh Debug" && "$(CFG)" != "Hello - Power Macintosh Release" &&\
 "$(CFG)" != "Hello - Power Macintosh Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "hello.mak" CFG="Hello - Win32 Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Hello - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "Hello - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE "Hello - Macintosh Release" (based on "Macintosh Application")
!MESSAGE "Hello - Macintosh Debug" (based on "Macintosh Application")
!MESSAGE "Hello - Power Macintosh Release" (based on\
 "Power Macintosh Application")
!MESSAGE "Hello - Power Macintosh Debug" (based on\
 "Power Macintosh Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "Hello - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\.\Release
# End Custom Macros

ALL : "$(OUTDIR)\hello.exe"

CLEAN : 
	-@erase "$(INTDIR)\hello.obj"
	-@erase "$(INTDIR)\hello.pch"
	-@erase "$(INTDIR)\hello.res"
	-@erase "$(INTDIR)\stdafx.obj"
	-@erase "$(OUTDIR)\hello.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D\
 "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)/hello.pch" /Yu"Stdafx.h" /Fo"$(INTDIR)/"\
 /Fd"$(INTDIR)/" /FD /c 
CPP_OBJS=.\Release/
CPP_SBRS=.

.c{$(CPP_OBJS)}.obj::
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj::
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj::
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr::
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr::
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr::
   $(CPP) $(CPP_PROJ) $<  

MTL=midl.exe
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)/hello.res" /d "NDEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)/hello.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:no\
 /pdb:"$(OUTDIR)/hello.pdb" /machine:I386 /out:"$(OUTDIR)/hello.exe" 
LINK32_OBJS= \
	"$(INTDIR)\hello.obj" \
	"$(INTDIR)\hello.res" \
	"$(INTDIR)\stdafx.obj"

"$(OUTDIR)\hello.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "Hello - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\.\Debug
# End Custom Macros

ALL : "$(OUTDIR)\hello.exe"

CLEAN : 
	-@erase "$(INTDIR)\hello.obj"
	-@erase "$(INTDIR)\hello.pch"
	-@erase "$(INTDIR)\hello.res"
	-@erase "$(INTDIR)\stdafx.obj"
	-@erase "$(INTDIR)\vc50.idb"
	-@erase "$(INTDIR)\vc50.pdb"
	-@erase "$(OUTDIR)\hello.exe"
	-@erase "$(OUTDIR)\hello.ilk"
	-@erase "$(OUTDIR)\hello.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MDd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS"\
 /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)/hello.pch" /Yu"Stdafx.h" /Fo"$(INTDIR)/"\
 /Fd"$(INTDIR)/" /FD /c 
CPP_OBJS=.\Debug/
CPP_SBRS=.

.c{$(CPP_OBJS)}.obj::
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj::
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj::
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr::
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr::
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr::
   $(CPP) $(CPP_PROJ) $<  

MTL=midl.exe
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)/hello.res" /d "_DEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)/hello.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:yes\
 /pdb:"$(OUTDIR)/hello.pdb" /debug /machine:I386 /out:"$(OUTDIR)/hello.exe" 
LINK32_OBJS= \
	"$(INTDIR)\hello.obj" \
	"$(INTDIR)\hello.res" \
	"$(INTDIR)\stdafx.obj"

"$(OUTDIR)\hello.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "Hello - Macintosh Release"

OUTDIR=.\MacRel
INTDIR=.\MacRel

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

MFILE32=mfile.exe
MFILE32_FLAGS=COPY /NOLOGO 
MFILE32_FILES= \
	"$(OUTDIR)/hello.exe"

"$(OUTDIR)\hello.trg" : "$(OUTDIR)" $(MFILE32_FILES)
    $(MFILE32) $(MFILE32_FLAGS) .\MacRel\hello.exe\
 "$(MFILE32_DEST):hello.exe">"$(OUTDIR)\hello.trg"

DOWNLOAD : "$(OUTDIR)" $(MFILE32_FILES)
    $(MFILE32) $(MFILE32_FLAGS) .\MacRel\hello.exe\
 "$(MFILE32_DEST):hello.exe">"$(OUTDIR)\hello.trg"

LINK32=link.exe
LINK32_FLAGS=/nologo /MAC:bundle /MAC:type="APPL" /MAC:creator="HELO"\
 /pdb:"$(OUTDIR)/hello.pdb" /machine:M68K /out:"$(OUTDIR)/hello.exe" 
LINK32_OBJS= \
	"$(INTDIR)/stdafx.obj" \
	"$(INTDIR)/hello.obj" \
	"$(INTDIR)/hello.rsc" \
	"$(INTDIR)/helomac.rsc"

"$(OUTDIR)\hello.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)/hello.bsc" 
BSC32_SBRS=
MRC=mrc.exe
MRC_PROJ=/D "_68K_" /D "_MAC" /D "NDEBUG" /l 0x409 /NOLOGO 
RSC=rc.exe
RSC_PROJ=/l 0x409 /r /m /fo"$(INTDIR)/hello.rsc" /d "_MAC" /d "_68K_" /d\
 "NDEBUG" 
CPP=cl.exe
CPP_PROJ=/nologo /AL /Q68s /W3 /GX /O2 /D "_WINDOWS" /D "_MAC" /D "_68K_" /D\
 "WIN32" /D "NDEBUG" /D "_MBCS" /Fp"$(INTDIR)/hello.pch" /Yu"Stdafx.h"\
 /Fo"$(INTDIR)/" /c 
CPP_OBJS=.\MacRel/
CPP_SBRS=

.c{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

MTL=mktyplib.exe
MTL_PROJ=/nologo /D "NDEBUG" /mac 

CLEAN : 
	-@erase ".\MacRel\hello.trg"
	-@erase ".\MacRel\hello.exe"
	-@erase ".\MacRel\stdafx.obj"
	-@erase ".\MacRel\hello.obj"
	-@erase ".\MacRel\hello.pch"
	-@erase ".\MacRel\hello.rsc"
	-@erase ".\MacRel\helomac.rsc"

!ELSEIF  "$(CFG)" == "Hello - Macintosh Debug"

OUTDIR=.\MacDbg
INTDIR=.\MacDbg

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

MFILE32=mfile.exe
MFILE32_FLAGS=COPY /NOLOGO 
MFILE32_FILES= \
	"$(OUTDIR)/hello.exe"

"$(OUTDIR)\hello.trg" : "$(OUTDIR)" $(MFILE32_FILES)
    $(MFILE32) $(MFILE32_FLAGS) .\MacDbg\hello.exe\
 "$(MFILE32_DEST):hello.exe">"$(OUTDIR)\hello.trg"

DOWNLOAD : "$(OUTDIR)" $(MFILE32_FILES)
    $(MFILE32) $(MFILE32_FLAGS) .\MacDbg\hello.exe\
 "$(MFILE32_DEST):hello.exe">"$(OUTDIR)\hello.trg"

LINK32=link.exe
LINK32_FLAGS=/nologo /MAC:bundle /MAC:type="APPL" /MAC:creator="HELO"\
 /pdb:"$(OUTDIR)/hello.pdb" /debug /machine:M68K /out:"$(OUTDIR)/hello.exe" 
LINK32_OBJS= \
	"$(INTDIR)/stdafx.obj" \
	"$(INTDIR)/hello.obj" \
	"$(INTDIR)/helomac.rsc" \
	"$(INTDIR)/hello.rsc"

"$(OUTDIR)\hello.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)/hello.bsc" 
BSC32_SBRS=
MRC=mrc.exe
MRC_PROJ=/D "_68K_" /D "_MAC" /D "_DEBUG" /l 0x409 /NOLOGO 
RSC=rc.exe
RSC_PROJ=/l 0x409 /r /m /fo"$(INTDIR)/hello.rsc" /d "_MAC" /d "_68K_" /d\
 "_DEBUG" 
CPP=cl.exe
CPP_PROJ=/nologo /AL /Q68s /Q68m /W3 /GX /Zi /Od /D "_WINDOWS" /D "_MAC" /D\
 "_68K_" /D "WIN32" /D "_DEBUG" /D "_MBCS" /Fp"$(INTDIR)/hello.pch"\
 /Yu"Stdafx.h" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c 
CPP_OBJS=.\MacDbg/
CPP_SBRS=

.c{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

MTL=mktyplib.exe
MTL_PROJ=/nologo /D "_DEBUG" /mac 

CLEAN : 
	-@erase ".\MacDbg\vc40.pdb"
	-@erase ".\MacDbg\hello.pch"
	-@erase ".\MacDbg\hello.pdb"
	-@erase ".\MacDbg\stdafx.obj"
	-@erase ".\MacDbg\hello.obj"
	-@erase ".\MacDbg\helomac.rsc"
	-@erase ".\MacDbg\hello.rsc"
	-@erase ".\MacDbg\hello.trg"
	-@erase ".\MacDbg\hello.exe"

!ELSEIF  "$(CFG)" == "Hello - Power Macintosh Release"

OUTDIR=.\PMacRel
INTDIR=.\PMacRel

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

MFILE32=mfile.exe
MFILE32_FLAGS=COPY /NOLOGO 
MFILE32_FILES= \
	"$(OUTDIR)/hello.exe"

"$(OUTDIR)\hello.trg" : "$(OUTDIR)" $(MFILE32_FILES)
    $(MFILE32) $(MFILE32_FLAGS) .\PMacRel\hello.exe\
 "$(MFILE32_DEST):hello.exe">"$(OUTDIR)\hello.trg"

DOWNLOAD : "$(OUTDIR)" $(MFILE32_FILES)
    $(MFILE32) $(MFILE32_FLAGS) .\PMacRel\hello.exe\
 "$(MFILE32_DEST):hello.exe">"$(OUTDIR)\hello.trg"

LINK32=link.exe
LINK32_FLAGS=/nologo /mac:bundle /mac:type="APPL" /mac:creator="HELO"\
 /incremental:no /pdb:"$(OUTDIR)/hello.pdb" /machine:MPPC\
 /out:"$(OUTDIR)/hello.exe" 
LINK32_OBJS= \
	"$(INTDIR)/stdafx.obj" \
	"$(INTDIR)/hello.obj" \
	"$(INTDIR)/helomac.rsc" \
	"$(INTDIR)/hello.rsc"

"$(OUTDIR)\hello.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)/hello.bsc" 
BSC32_SBRS=
MRC=mrc.exe
MRC_PROJ=/D "_MPPC_" /D "_MAC" /D "NDEBUG" /l 0x409 /NOLOGO 
RSC=rc.exe
RSC_PROJ=/l 0x409 /r /m /fo"$(INTDIR)/hello.rsc" /d "_MAC" /d "_MPPC_" /d\
 "NDEBUG" 
CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /GX /O2 /D "NDEBUG" /D "_MAC" /D "_MPPC_" /D\
 "_WINDOWS" /D "WIN32" /D "_MBCS" /D "_AFXDLL" /Fp"$(INTDIR)/hello.pch"\
 /Yu"Stdafx.h" /Fo"$(INTDIR)/" /c 
CPP_OBJS=.\PMacRel/
CPP_SBRS=

.c{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

MTL=mktyplib.exe
MTL_PROJ=/nologo /D "NDEBUG" 

CLEAN : 
	-@erase ".\PMacRel\hello.trg"
	-@erase ".\PMacRel\hello.exe"
	-@erase ".\PMacRel\stdafx.obj"
	-@erase ".\PMacRel\hello.obj"
	-@erase ".\PMacRel\hello.pch"
	-@erase ".\PMacRel\helomac.rsc"
	-@erase ".\PMacRel\hello.rsc"

!ELSEIF  "$(CFG)" == "Hello - Power Macintosh Debug"

OUTDIR=.\PMacDbg
INTDIR=.\PMacDbg

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

MFILE32=mfile.exe
MFILE32_FLAGS=COPY /NOLOGO 
MFILE32_FILES= \
	"$(OUTDIR)/hello.exe"

"$(OUTDIR)\hello.trg" : "$(OUTDIR)" $(MFILE32_FILES)
    $(MFILE32) $(MFILE32_FLAGS) .\PMacDbg\hello.exe\
 "$(MFILE32_DEST):hello.exe">"$(OUTDIR)\hello.trg"

DOWNLOAD : "$(OUTDIR)" $(MFILE32_FILES)
    $(MFILE32) $(MFILE32_FLAGS) .\PMacDbg\hello.exe\
 "$(MFILE32_DEST):hello.exe">"$(OUTDIR)\hello.trg"

LINK32=link.exe
LINK32_FLAGS=/nologo /mac:bundle /mac:type="APPL" /mac:creator="HELO"\
 /incremental:yes /pdb:"$(OUTDIR)/hello.pdb" /debug /machine:MPPC\
 /out:"$(OUTDIR)/hello.exe" 
LINK32_OBJS= \
	"$(INTDIR)/stdafx.obj" \
	"$(INTDIR)/hello.obj" \
	"$(INTDIR)/hello.rsc" \
	"$(INTDIR)/helomac.rsc"

"$(OUTDIR)\hello.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)/hello.bsc" 
BSC32_SBRS=
MRC=mrc.exe
MRC_PROJ=/D "_MPPC_" /D "_MAC" /D "_DEBUG" /l 0x409 /NOLOGO 
RSC=rc.exe
RSC_PROJ=/l 0x409 /r /m /fo"$(INTDIR)/hello.rsc" /d "_MAC" /d "_MPPC_" /d\
 "_DEBUG" 
CPP=cl.exe
CPP_PROJ=/nologo /MDd /W3 /GX /Zi /Od /D "_DEBUG" /D "_MAC" /D "_MPPC_" /D\
 "_WINDOWS" /D "WIN32" /D "_MBCS" /D "_AFXDLL" /Fp"$(INTDIR)/hello.pch"\
 /Yu"Stdafx.h" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c 
CPP_OBJS=.\PMacDbg/
CPP_SBRS=

.c{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

MTL=mktyplib.exe
MTL_PROJ=/nologo /D "_DEBUG" 

CLEAN : 
	-@erase ".\PMacDbg\vc40.pdb"
	-@erase ".\PMacDbg\hello.pch"
	-@erase ".\PMacDbg\hello.ilk"
	-@erase ".\PMacDbg\stdafx.obj"
	-@erase ".\PMacDbg\hello.obj"
	-@erase ".\PMacDbg\hello.rsc"
	-@erase ".\PMacDbg\helomac.rsc"
	-@erase ".\PMacDbg\hello.pdb"
	-@erase ".\PMacDbg\hello.trg"
	-@erase ".\PMacDbg\hello.exe"

!ENDIF 


!IF "$(CFG)" == "Hello - Win32 Release" || "$(CFG)" == "Hello - Win32 Debug" ||\
 "$(CFG)" == "Hello - Macintosh Release" || "$(CFG)" ==\
 "Hello - Macintosh Debug" || "$(CFG)" == "Hello - Power Macintosh Release" ||\
 "$(CFG)" == "Hello - Power Macintosh Debug"
SOURCE=.\hello.cpp

!IF  "$(CFG)" == "Hello - Win32 Release"

DEP_CPP_HELLO=\
	".\hello.h"\
	".\stdafx.h"\
	

"$(INTDIR)\hello.obj" : $(SOURCE) $(DEP_CPP_HELLO) "$(INTDIR)"\
 "$(INTDIR)\hello.pch"


!ELSEIF  "$(CFG)" == "Hello - Win32 Debug"

DEP_CPP_HELLO=\
	".\hello.h"\
	".\stdafx.h"\
	

"$(INTDIR)\hello.obj" : $(SOURCE) $(DEP_CPP_HELLO) "$(INTDIR)"\
 "$(INTDIR)\hello.pch"


!ELSEIF  "$(CFG)" == "Hello - Macintosh Release"

"$(INTDIR)\hello.obj" : $(SOURCE) $(DEP_CPP_HELLO_) "$(INTDIR)"\
 "$(INTDIR)\hello.pch"

!ELSEIF  "$(CFG)" == "Hello - Macintosh Debug"

"$(INTDIR)\hello.obj" : $(SOURCE) $(DEP_CPP_HELLO_) "$(INTDIR)"\
 "$(INTDIR)\hello.pch"

"$(INTDIR)\vc40.pdb" : $(SOURCE) $(DEP_CPP_HELLO_) "$(INTDIR)"\
 "$(INTDIR)\hello.pch"

!ELSEIF  "$(CFG)" == "Hello - Power Macintosh Release"

"$(INTDIR)\hello.obj" : $(SOURCE) $(DEP_CPP_HELLO_) "$(INTDIR)"\
 "$(INTDIR)\hello.pch"

!ELSEIF  "$(CFG)" == "Hello - Power Macintosh Debug"

DEP_CPP_HELLO=\
	".\hello.h"\
	".\stdafx.h"\
	

"$(INTDIR)\hello.obj" : $(SOURCE) $(DEP_CPP_HELLO_) "$(INTDIR)"\
 "$(INTDIR)\hello.pch"

"$(INTDIR)\vc40.pdb" : $(SOURCE) $(DEP_CPP_HELLO_) "$(INTDIR)"\
 "$(INTDIR)\hello.pch"

!ENDIF 

SOURCE=.\hello.rc

!IF  "$(CFG)" == "Hello - Win32 Release"

DEP_RSC_HELLO_=\
	".\hello.ico"\
	

"$(INTDIR)\hello.res" : $(SOURCE) $(DEP_RSC_HELLO_) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "Hello - Win32 Debug"

DEP_RSC_HELLO_=\
	".\hello.ico"\
	

"$(INTDIR)\hello.res" : $(SOURCE) $(DEP_RSC_HELLO_) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "Hello - Macintosh Release"

"$(INTDIR)\hello.rsc" : $(SOURCE) $(DEP_RSC_HELLO) "$(INTDIR)"
   $(RSC) $(RSC_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "Hello - Macintosh Debug"

"$(INTDIR)\hello.rsc" : $(SOURCE) $(DEP_RSC_HELLO) "$(INTDIR)"
   $(RSC) $(RSC_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "Hello - Power Macintosh Release"

"$(INTDIR)\hello.rsc" : $(SOURCE) $(DEP_RSC_HELLO) "$(INTDIR)"
   $(RSC) $(RSC_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "Hello - Power Macintosh Debug"

DEP_RSC_HELLO_=\
	".\hello.ico"\
	

"$(INTDIR)\hello.rsc" : $(SOURCE) $(DEP_RSC_HELLO) "$(INTDIR)"
   $(RSC) $(RSC_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\helomac.r

!IF  "$(CFG)" == "Hello - Win32 Release"

!ELSEIF  "$(CFG)" == "Hello - Win32 Debug"

!ELSEIF  "$(CFG)" == "Hello - Macintosh Release"

NODEP_MRC_HELOM=\
	".\mrc\balloons.r"\
	

"$(INTDIR)\helomac.rsc" : $(SOURCE) $(DEP_MRC_HELOM) "$(INTDIR)"
   $(MRC) /o"$(INTDIR)/helomac.rsc" /D "_68K_" /D "_MAC" /D "NDEBUG" /l 0x409\
 /NOLOGO $(SOURCE)


!ELSEIF  "$(CFG)" == "Hello - Macintosh Debug"

NODEP_MRC_HELOM=\
	".\mrc\balloons.r"\
	

"$(INTDIR)\helomac.rsc" : $(SOURCE) $(DEP_MRC_HELOM) "$(INTDIR)"
   $(MRC) /o"$(INTDIR)/helomac.rsc" /D "_68K_" /D "_MAC" /D "_DEBUG" /l 0x409\
 /NOLOGO $(SOURCE)


!ELSEIF  "$(CFG)" == "Hello - Power Macintosh Release"

NODEP_MRC_HELOM=\
	".\mrc\balloons.r"\
	

"$(INTDIR)\helomac.rsc" : $(SOURCE) $(DEP_MRC_HELOM) "$(INTDIR)"
   $(MRC) /o"$(INTDIR)/helomac.rsc" /D "_MPPC_" /D "_MAC" /D "NDEBUG" /l 0x409\
 /NOLOGO $(SOURCE)


!ELSEIF  "$(CFG)" == "Hello - Power Macintosh Debug"

NODEP_MRC_HELOM=\
	".\mrc\balloons.r"\
	

"$(INTDIR)\helomac.rsc" : $(SOURCE) $(DEP_MRC_HELOM) "$(INTDIR)"
   $(MRC) /o"$(INTDIR)/helomac.rsc" /D "_MPPC_" /D "_MAC" /D "_DEBUG" /l 0x409\
 /NOLOGO $(SOURCE)


!ENDIF 

SOURCE=.\stdafx.cpp

!IF  "$(CFG)" == "Hello - Win32 Release"

DEP_CPP_STDAF=\
	".\stdafx.h"\
	

"$(INTDIR)\stdafx.obj"	"$(INTDIR)\hello.pch" : $(SOURCE) $(DEP_CPP_STDAF)\
 "$(INTDIR)"
	$(CPP) /nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D\
 "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)/hello.pch" /Yc /Fo"$(INTDIR)/"\
 /Fd"$(INTDIR)/" /FD /c $(SOURCE)


!ELSEIF  "$(CFG)" == "Hello - Win32 Debug"

DEP_CPP_STDAF=\
	".\stdafx.h"\
	

"$(INTDIR)\stdafx.obj"	"$(INTDIR)\hello.pch" : $(SOURCE) $(DEP_CPP_STDAF)\
 "$(INTDIR)"
	$(CPP) /nologo /MDd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS"\
 /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)/hello.pch" /Yc /Fo"$(INTDIR)/"\
 /Fd"$(INTDIR)/" /FD /c $(SOURCE)


!ELSEIF  "$(CFG)" == "Hello - Macintosh Release"

"$(INTDIR)\stdafx.obj" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\hello.pch" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "Hello - Macintosh Debug"

"$(INTDIR)\stdafx.obj" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\vc40.pdb" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\hello.pch" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "Hello - Power Macintosh Release"

"$(INTDIR)\stdafx.obj" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\hello.pch" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "Hello - Power Macintosh Debug"

DEP_CPP_STDAF=\
	".\stdafx.h"\
	
BuildCmds= \
	$(CPP) /nologo /MDd /W3 /GX /Zi /Od /D "_DEBUG" /D "_MAC" /D "_MPPC_" /D\
 "_WINDOWS" /D "WIN32" /D "_MBCS" /D "_AFXDLL" /Fp"$(INTDIR)/hello.pch" /Yc\
 /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\stdafx.obj" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\vc40.pdb" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\hello.pch" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

!ENDIF 

SOURCE=.\hello.h
SOURCE=.\stdafx.h
SOURCE=.\hello.ico

!ENDIF 

