SET PATH=%~dp0;
SET unpkDir=unpackedVBF

call:unpack_vbf
EXIT /B %ERRORLEVEL%

:unpack_vbf
	echo Repacking VBF... please wait
	echo.
	for %%a in ("*14C026*.vbf") do (
		imgunpkr.exe -p -c "%unpkDir%/export_list.csv" -o "./" -v "%%a"
		ren patched.vbf %%a.patched
	)
	echo.
	echo Done
EXIT /B 0