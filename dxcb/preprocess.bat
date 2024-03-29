@echo off
REM This script assumes that cl.exe is in your path

echo Deleting PREPROCESSED_%1
REM del /F PREPROCESSED_%1

echo Calling compiler to preprocess %1 into PREPROCESSED_%1
cl -nologo -EP -C -D DXCB_INVOKE_PREPROCESSOR %1 > PREPROCESSED_%1

REM echo Beautifying PREPROCESSED_%1
REM configuration of GC is found in GC.cfg
REM GC -file-PREPROCESSED_%1

REM echo Make read only
REM attrib +R PREPROCESSED_%1
