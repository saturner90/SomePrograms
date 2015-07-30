##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=LiveRamp
ConfigurationName      :=Debug
WorkspacePath          := "E:\Programs\Codelite\Codility"
ProjectPath            := "E:\Programs\Codelite\Codility\LiveRamp"
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Scott
Date                   :=29/07/2015
CodeLitePath           :="E:\Programs\Codelite"
LinkerName             :=C:/TDM-GCC-64/bin/g++.exe
SharedObjectLinkerName :=C:/TDM-GCC-64/bin/g++.exe -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="LiveRamp.txt"
PCHCompileFlags        :=
MakeDirCommand         :=makedir
RcCmpOptions           := 
RcCompilerName         :=C:/TDM-GCC-64/bin/windres.exe
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := C:/TDM-GCC-64/bin/ar.exe rcu
CXX      := C:/TDM-GCC-64/bin/g++.exe
CC       := C:/TDM-GCC-64/bin/gcc.exe
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := C:/TDM-GCC-64/bin/as.exe


##
## User defined environment variables
##
CodeLiteDir:=E:\Programs\Codelite
Objects0=$(IntermediateDirectory)/main.c$(ObjectSuffix) $(IntermediateDirectory)/amplitudeone.c$(ObjectSuffix) $(IntermediateDirectory)/capitol.c$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

$(IntermediateDirectory)/.d:
	@$(MakeDirCommand) "./Debug"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/main.c$(ObjectSuffix): main.c $(IntermediateDirectory)/main.c$(DependSuffix)
	$(CC) $(SourceSwitch) "E:/Programs/Codelite/Codility/LiveRamp/main.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.c$(DependSuffix): main.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main.c$(ObjectSuffix) -MF$(IntermediateDirectory)/main.c$(DependSuffix) -MM "main.c"

$(IntermediateDirectory)/main.c$(PreprocessSuffix): main.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.c$(PreprocessSuffix) "main.c"

$(IntermediateDirectory)/amplitudeone.c$(ObjectSuffix): amplitudeone.c $(IntermediateDirectory)/amplitudeone.c$(DependSuffix)
	$(CC) $(SourceSwitch) "E:/Programs/Codelite/Codility/LiveRamp/amplitudeone.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/amplitudeone.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/amplitudeone.c$(DependSuffix): amplitudeone.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/amplitudeone.c$(ObjectSuffix) -MF$(IntermediateDirectory)/amplitudeone.c$(DependSuffix) -MM "amplitudeone.c"

$(IntermediateDirectory)/amplitudeone.c$(PreprocessSuffix): amplitudeone.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/amplitudeone.c$(PreprocessSuffix) "amplitudeone.c"

$(IntermediateDirectory)/capitol.c$(ObjectSuffix): capitol.c $(IntermediateDirectory)/capitol.c$(DependSuffix)
	$(CC) $(SourceSwitch) "E:/Programs/Codelite/Codility/LiveRamp/capitol.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/capitol.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/capitol.c$(DependSuffix): capitol.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/capitol.c$(ObjectSuffix) -MF$(IntermediateDirectory)/capitol.c$(DependSuffix) -MM "capitol.c"

$(IntermediateDirectory)/capitol.c$(PreprocessSuffix): capitol.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/capitol.c$(PreprocessSuffix) "capitol.c"


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


