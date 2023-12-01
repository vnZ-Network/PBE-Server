@echo off
del /a/q %CD%\Manager\manager_customerservicelog\
del /a/q %CD%\Local\log
del /a/q %CD%\ShareMemProc\log
del /a/q %CD%\Line\*.dmp
del /a/q %CD%\Line\*.log

del /a/q %CD%\Local\*.dmp
del /a/q %CD%\Gate\*.dmp
del /a/q %CD%\Manager\*.dmp
del /a/q %CD%\Manager\*.log

@RD /S /Q %CD%\Line\log
@RD /S /Q %CD%\log


@RD /S /Q %CD%\Client\Bin\Log