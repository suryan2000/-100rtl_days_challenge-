@echo off
REM ****************************************************************************
REM Vivado (TM) v2021.1 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Tue Oct 10 23:14:08 +0530 2023
REM SW Build 3247384 on Thu Jun 10 19:36:33 MDT 2021
REM
REM IP Build 3246043 on Fri Jun 11 00:30:35 MDT 2021
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
REM elaborate design
echo "xelab -wto df637ee7ee244f4dae7d5a956129e57e --incr --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot full_adder_tb_behav xil_defaultlib.full_adder_tb xil_defaultlib.glbl -log elaborate.log"
call xelab  -wto df637ee7ee244f4dae7d5a956129e57e --incr --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot full_adder_tb_behav xil_defaultlib.full_adder_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
