#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/mateus/SDK/2018.3/bin:/home/mateus/Vivado/2018.3/ids_lite/ISE/bin/lin64:/home/mateus/Vivado/2018.3/bin
else
  PATH=/home/mateus/SDK/2018.3/bin:/home/mateus/Vivado/2018.3/ids_lite/ISE/bin/lin64:/home/mateus/Vivado/2018.3/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=/home/mateus/Vivado/2018.3/ids_lite/ISE/lib/lin64
else
  LD_LIBRARY_PATH=/home/mateus/Vivado/2018.3/ids_lite/ISE/lib/lin64:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/mateus/ufc/FPGA_Projets/FPGA_Projets/mult_8bit/mult_8bit.runs/synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log mult_8bit.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source mult_8bit.tcl
