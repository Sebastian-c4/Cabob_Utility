@echo off

cd..

weidu Cabob_Utility/fix/fix.tp2 --force-install 9999
cls

if exist 0.x (
	echo.	
	echo.	修正补丁安装完成！
	echo.	
	del 0.x
)

if exist 1.x (
	echo.	
	echo.	修正补丁安装完成！现在你可以根据weidu.log.txt中的内容重新安装之前的mod。
	echo.	
	echo.	再次提醒注意：所有在本版基础上另行安装的宗派mod均无法在游戏中正常使用！
	echo.	
	del 1.x
)

if exist 2.x (
	echo.	
	echo.	修正补丁安装进程已终止！
	echo.	
	del 2.x
)

echo.	按任意键退出。
echo.
pause>nul

REM del "%~f0"