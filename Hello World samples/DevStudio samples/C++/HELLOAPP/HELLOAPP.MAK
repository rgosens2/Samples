# Microsoft Developer Studio Generated NMAKE File, Based on helloapp.dsp
!IF "$(CFG)" == ""
CFG=Helloapp - Win32 Release
!MESSAGE No configuration specified.  Defaulting to Helloapp - Win32 Release.
!ENDIF 

!IF "$(CFG)" != "Helloapp - Win32 Release" && "$(CFG)" !=\
 "Helloapp - Win32 Debug" && "$(CFG)" != "Helloapp - Macintosh Release" &&\
 "$(CFG)" != "Helloapp - Macintosh Debug" && "$(CFG)" !=\
 "Helloapp - Power Macintosh Release" && "$(CFG)" !=\
 "Helloapp - Power Macintosh Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "helloapp.mak" CFG="Helloapp - Win32 Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Helloapp - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "Helloapp - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE "Helloapp - Macintosh Release" (based on "Macintosh Application")
!MESSAGE "Helloapp - Macintosh Debug" (based on "Macintosh Application")
!MESSAGE "Helloapp - Power Macintosh Release" (based on\
 "Power Macintosh Application")
!MESSAGE "Helloapp - Power Macintosh Debug" (based on\
 "Power Macintosh Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "Helloapp - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\.\Release
# End Custom Macros

ALL : "$(OUTDIR)\helloapp.exe"

CLEAN : 
	-@erase "$(INTDIR)\helloapp.obj"
	-@erase "$(OUTDIR)\helloapp.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D\
 "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)/helloapp.pch" /YX /Fo"$(INTDIR)/"\
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
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)/helloapp.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:no\
 /pdb:"$(OUTDIR)/helloapp.pdb" /machine:I386 /out:"$(OUTDIR)/helloapp.exe" 
LINK32_OBJS= \
	"$(INTDIR)\helloapp.obj"

"$(OUTDIR)\helloapp.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "Helloapp - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\.\Debug
# End Custom Macros

ALL : "$(OUTDIR)\helloapp.exe"

CLEAN : 
	-@erase "$(INTDIR)\helloapp.obj"
	-@erase "$(INTDIR)\vc50.idb"
	-@erase "$(INTDIR)\vc50.pdb"
	-@erase "$(OUTDIR)\helloapp.exe"
	-@erase "$(OUTDIR)\helloapp.ilk"
	-@erase "$(OUTDIR)\helloapp.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MDd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS"\
 /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)/helloapp.pch" /YX /Fo"$(INTDIR)/"\
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
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)/helloapp.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:yes\
 /pdb:"$(OUTDIR)/helloapp.pdb" /debug /machine:I386\
 /out:"$(OUTDIR)/helloapp.exe" 
LINK32_OBJS= \
	"$(INTDIR)\helloapp.obj"

"$(OUTDIR)\helloapp.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "Helloapp - Macintosh Release"

OUTDIR=.\MacRel
INTDIR=.\MacRel

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

MFILE32=mfile.exe
MFILE32_FLAGS=COPY /NOLOGO 
MFILE32_FILES= \
	"$(OUTDIR)/helloapp.exe"

"$(OUTDIR)\helloapp.trg" : "$(OUTDIR)" $(MFILE32_FILES)
    $(MFILE32) $(MFILE32_FLAGS) .\MacRel\helloapp.exe\
 "$(MFILE32_DEST):helloapp.exe">"$(OUTDIR)\helloapp.trg"

DOWNLOAD : "$(OUTDIR)" $(MFILE32_FILES)
    $(MFILE32) $(MFILE32_FLAGS) .\MacRel\helloapp.exe\
 "$(MFILE32_DEST):helloapp.exe">"$(OUTDIR)\helloapp.trg"

LINK32=link.exe
LINK32_FLAGS=/nologo /MAC:bundle /MAC:type="APPL" /MAC:creator="HELL"\
 /pdb:"$(OUTDIR)/helloapp.pdb" /machine:M68K /out:"$(OUTDIR)/helloapp.exe" 
LINK32_OBJS= \
	"$(INTDIR)/helloapp.obj" \
	"$(INTDIR)/hellmac.rsc"

"$(OUTDIR)\helloapp.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)/helloapp.bsc" 
BSC32_SBRS=
MRC=mrc.exe
MRC_PROJ=/D "_68K_" /D "_MAC" /D "NDEBUG" /l 0x409 /NOLOGO 
RSC=rc.exe
CPP=cl.exe
CPP_PROJ=/nologo /AL /Q68s /W3 /GX /O2 /D "_WINDOWS" /D "_MAC" /D "_68K_" /D\
 "WIN32" /D "NDEBUG" /D "_MBCS" /Fp"$(INTDIR)/helloapp.pch" /YX /Fo"$(INTDIR)/"\
 /c 
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
	-@erase ".\MacRel\helloapp.trg"
	-@erase ".\MacRel\helloapp.exe"
	-@erase ".\MacRel\helloapp.obj"
	-@erase ".\MacRel\hellmac.rsc"

!ELSEIF  "$(CFG)" == "Helloapp - Macintosh Debug"

OUTDIR=.\MacDbg
INTDIR=.\MacDbg

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

MFILE32=mfile.exe
MFILE32_FLAGS=COPY /NOLOGO 
MFILE32_FILES= \
	"$(OUTDIR)/helloapp.exe"

"$(OUTDIR)\helloapp.trg" : "$(OUTDIR)" $(MFILE32_FILES)
    $(MFILE32) $(MFILE32_FLAGS) .\MacDbg\helloapp.exe\
 "$(MFILE32_DEST):helloapp.exe">"$(OUTDIR)\helloapp.trg"

DOWNLOAD : "$(OUTDIR)" $(MFILE32_FILES)
    $(MFILE32) $(MFILE32_FLAGS) .\MacDbg\helloapp.exe\
 "$(MFILE32_DEST):helloapp.exe">"$(OUTDIR)\helloapp.trg"

LINK32=link.exe
LINK32_FLAGS=/nologo /MAC:bundle /MAC:type="APPL" /MAC:creator="HELL"\
 /pdb:"$(OUTDIR)/helloapp.pdb" /debug /machine:M68K\
 /out:"$(OUTDIR)/helloapp.exe" 
LINK32_OBJS= \
	"$(INTDIR)/helloapp.obj" \
	"$(INTDIR)/hellmac.rsc"

"$(OUTDIR)\helloapp.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)/helloapp.bsc" 
BSC32_SBRS=
MRC=mrc.exe
MRC_PROJ=/D "_68K_" /D "_MAC" /D "_DEBUG" /l 0x409 /NOLOGO 
RSC=rc.exe
CPP=cl.exe
CPP_PROJ=/nologo /AL /Q68s /Q68m /W3 /GX /Zi /Od /D "_WINDOWS" /D "_MAC" /D\
 "_68K_" /D "WIN32" /D "_DEBUG" /D "_MBCS" /Fp"$(INTDIR)/helloapp.pch" /YX\
 /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c 
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
	-@erase ".\MacDbg\helloapp.pdb"
	-@erase ".\MacDbg\helloapp.obj"
	-@erase ".\MacDbg\hellmac.rsc"
	-@erase ".\MacDbg\helloapp.trg"
	-@erase ".\MacDbg\helloapp.exe"

!ELSEIF  "$(CFG)" == "Helloapp - Power Macintosh Release"

OUTDIR=.\PMacRel
INTDIR=.\PMacRel

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

MFILE32=mfile.exe
MFILE32_FLAGS=COPY /NOLOGO 
MFILE32_FILES= \
	"$(OUTDIR)/helloapp.exe"

"$(OUTDIR)\helloapp.trg" : "$(OUTDIR)" $(MFILE32_FILES)
    $(MFILE32) $(MFILE32_FLAGS) .\PMacRel\helloapp.exe\
 "$(MFILE32_DEST):helloapp.exe">"$(OUTDIR)\helloapp.trg"

DOWNLOAD : "$(OUTDIR)" $(MFILE32_FILES)
    $(MFILE32) $(MFILE32_FLAGS) .\PMacRel\helloapp.exe\
 "$(MFILE32_DEST):helloapp.exe">"$(OUTDIR)\helloapp.trg"

LINK32=link.exe
LINK32_FLAGS=/nologo /mac:bundle /mac:type="APPL" /mac:creator="HELL"\
 /incremental:no /pdb:"$(OUTDIR)/helloapp.pdb" /machine:MPPC\
 /out:"$(OUTDIR)/helloapp.exe" 
LINK32_OBJS= \
	"$(INTDIR)/helloapp.obj" \
	"$(INTDIR)/hellmac.rsc"

"$(OUTDIR)\helloapp.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)/helloapp.bsc" 
BSC32_SBRS=
MRC=mrc.exe
MRC_PROJ=/D "_MPPC_" /D "_MAC" /D "NDEBUG" /l 0x409 /NOLOGO 
RSC=rc.exe
CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /GX /O2 /D "NDEBUG" /D "_MAC" /D "_MPPC_" /D\
 "_WINDOWS" /D "WIN32" /D "_MBCS" /D "_AFXDLL" /Fp"$(INTDIR)/helloapp.pch" /YX\
 /Fo"$(INTDIR)/" /c 
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
	-@erase ".\PMacRel\helloapp.trg"
	-@erase ".\PMacRel\helloapp.exe"
	-@erase ".\PMacRel\helloapp.obj"
	-@erase ".\PMacRel\hellmac.rsc"

!ELSEIF  "$(CFG)" == "Helloapp - Power Macintosh Debug"

OUTDIR=.\PMacDbg
INTDIR=.\PMacDbg

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

MFILE32=mfile.exe
MFILE32_FLAGS=COPY /NOLOGO 
MFILE32_FILES= \
	"$(OUTDIR)/helloapp.exe"

"$(OUTDIR)\helloapp.trg" : "$(OUTDIR)" $(MFILE32_FILES)
    $(MFILE32) $(MFILE32_FLAGS) .\PMacDbg\helloapp.exe\
 "$(MFILE32_DEST):helloapp.exe">"$(OUTDIR)\helloapp.trg"

DOWNLOAD : "$(OUTDIR)" $(MFILE32_FILES)
    $(MFILE32) $(MFILE32_FLAGS) .\PMacDbg\helloapp.exe\
 "$(MFILE32_DEST):helloapp.exe">"$(OUTDIR)\helloapp.trg"

LINK32=link.exe
LINK32_FLAGS=/nologo /mac:bundle /mac:type="APPL" /mac:creator="HELL"\
 /incremental:yes /pdb:"$(OUTDIR)/helloapp.pdb" /debug /machine:MPPC\
 /out:"$(OUTDIR)/helloapp.exe" 
LINK32_OBJS= \
	"$(INTDIR)/helloapp.obj" \
	"$(INTDIR)/hellmac.rsc"

"$(OUTDIR)\helloapp.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)/helloapp.bsc" 
BSC32_SBRS=
MRC=mrc.exe
MRC_PROJ=/D "_MPPC_" /D "_MAC" /D "_DEBUG" /l 0x409 /NOLOGO 
RSC=rc.exe
CPP=cl.exe
CPP_PROJ=/nologo /MDd /W3 /GX /Zi /Od /D "_DEBUG" /D "_MAC" /D "_MPPC_" /D\
 "_WINDOWS" /D "WIN32" /D "_MBCS" /D "_AFXDLL" /Fp"$(INTDIR)/helloapp.pch" /YX\
 /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c 
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
	-@erase ".\PMacDbg\helloapp.ilk"
	-@erase ".\PMacDbg\helloapp.obj"
	-@erase ".\PMacDbg\hellmac.rsc"
	-@erase ".\PMacDbg\helloapp.pdb"
	-@erase ".\PMacDbg\helloapp.trg"
	-@erase ".\PMacDbg\helloapp.exe"

!ENDIF 


!IF "$(CFG)" == "Helloapp - Win32 Release" || "$(CFG)" ==\
 "Helloapp - Win32 Debug" || "$(CFG)" == "Helloapp - Macintosh Release" ||\
 "$(CFG)" == "Helloapp - Macintosh Debug" || "$(CFG)" ==\
 "Helloapp - Power Macintosh Release" || "$(CFG)" ==\
 "Helloapp - Power Macintosh Debug"
SOURCE=.\hellmac.r

!IF  "$(CFG)" == "Helloapp - Win32 Release"

!ELSEIF  "$(CFG)" == "Helloapp - Win32 Debug"

!ELSEIF  "$(CFG)" == "Helloapp - Macintosh Release"

NODEP_MRC_HELLM=\
	".\mrc\balloons.r"\
	

"$(INTDIR)\hellmac.rsc" : $(SOURCE) $(DEP_MRC_HELLM) "$(INTDIR)"
   $(MRC) /o"$(INTDIR)/hellmac.rsc" /D "_68K_" /D "_MAC" /D "NDEBUG" /l 0x409\
 /NOLOGO $(SOURCE)


!ELSEIF  "$(CFG)" == "Helloapp - Macintosh Debug"

NODEP_MRC_HELLM=\
	".\mrc\balloons.r"\
	

"$(INTDIR)\hellmac.rsc" : $(SOURCE) $(DEP_MRC_HELLM) "$(INTDIR)"
   $(MRC) /o"$(INTDIR)/hellmac.rsc" /D "_68K_" /D "_MAC" /D "_DEBUG" /l 0x409\
 /NOLOGO $(SOURCE)


!ELSEIF  "$(CFG)" == "Helloapp - Power Macintosh Release"

NODEP_MRC_HELLM=\
	".\mrc\balloons.r"\
	

"$(INTDIR)\hellmac.rsc" : $(SOURCE) $(DEP_MRC_HELLM) "$(INTDIR)"
   $(MRC) /o"$(INTDIR)/hellmac.rsc" /D "_MPPC_" /D "_MAC" /D "NDEBUG" /l 0x409\
 /NOLOGO $(SOURCE)


!ELSEIF  "$(CFG)" == "Helloapp - Power Macintosh Debug"

NODEP_MRC_HELLM=\
	".\mrc\balloons.r"\
	

"$(INTDIR)\hellmac.rsc" : $(SOURCE) $(DEP_MRC_HELLM) "$(INTDIR)"
   $(MRC) /o"$(INTDIR)/hellmac.rsc" /D "_MPPC_" /D "_MAC" /D "_DEBUG" /l 0x409\
 /NOLOGO $(SOURCE)


!ENDIF 

SOURCE=.\helloapp.cpp

!IF  "$(CFG)" == "Helloapp - Win32 Release"


"$(INTDIR)\helloapp.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "Helloapp - Win32 Debug"


"$(INTDIR)\helloapp.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "Helloapp - Macintosh Release"

"$(INTDIR)\helloapp.obj" : $(SOURCE) "$(INTDIR)"

!ELSEIF  "$(CFG)" == "Helloapp - Macintosh Debug"

"$(INTDIR)\helloapp.obj" : $(SOURCE) "$(INTDIR)"

"$(INTDIR)\vc40.pdb" : $(SOURCE) "$(INTDIR)"

!ELSEIF  "$(CFG)" == "Helloapp - Power Macintosh Release"

"$(INTDIR)\helloapp.obj" : $(SOURCE) "$(INTDIR)"

!ELSEIF  "$(CFG)" == "Helloapp - Power Macintosh Debug"

"$(INTDIR)\helloapp.obj" : $(SOURCE) "$(INTDIR)"

"$(INTDIR)\vc40.pdb" : $(SOURCE) "$(INTDIR)"

!ENDIF 


!ENDIF 

