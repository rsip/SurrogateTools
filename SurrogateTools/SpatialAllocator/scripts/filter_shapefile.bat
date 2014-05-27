::******************* Filter Shapefile Run Script **************************
:: This script is an example of creating a filtered Shapefile
::
:: Set FILTER_FILE to the name of the filter file
:: Set INPUT_FILE_NAME to the name of the input Shapefile
:: Set OUTPUT_FILE_NAME to the name of the output Shapefile
::
::****************************************************************************
@echo off

set BASDIR=..

set DEBUG_OUTPUT=N

:: Location of executable
set MIMS_EXE=%BASDIR%\allocator.exe

set MIMS_PROCESSING=FILTER_SHAPE

:: set FILTER_FILE to the name of the filter file to use
set FILTER_FILE=..\data\county_filter.txt

:: set DATA_FILE_NAME to the name of the input Shapefile
set INPUT_FILE_NAME=..\data\cnty_tn
set INPUT_FILE_TYPE=ShapeFile

:: set OUTPUT_FILE_NAME to the name of the output Shapefile
set OUTPUT_FILE_NAME=%BASDIR%\output\filtered_cnty

echo Input Shapefile=%DATA_FILE_NAME%
echo Output Shapefile=%OUTPUT_FILE_NAME%
echo Filter File=%FILTER_FILE%

del %OUTPUT_FILE_NAME%.*
%MIMS_EXE%
