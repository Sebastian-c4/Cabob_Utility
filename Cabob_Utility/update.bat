@echo off

cd..

weidu Cabob_Utility/fix/fix.tp2 --force-install 9999
cls

if exist 0.x (
	echo.	
	echo.	����������װ��ɣ�
	echo.	
	del 0.x
)

if exist 1.x (
	echo.	
	echo.	����������װ��ɣ���������Ը���weidu.log.txt�е��������°�װ֮ǰ��mod��
	echo.	
	echo.	�ٴ�����ע�⣺�����ڱ�����������а�װ������mod���޷�����Ϸ������ʹ�ã�
	echo.	
	del 1.x
)

if exist 2.x (
	echo.	
	echo.	����������װ��������ֹ��
	echo.	
	del 2.x
)

echo.	��������˳���
echo.
pause>nul

REM del "%~f0"