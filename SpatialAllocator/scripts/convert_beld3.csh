#!/bin/csh -f
#******************* Beld3smk Run Script *************************************
# Runs beld3smk for sample modeling grid
# June 2006, LR 
# Modified Dec. 11, 2007
#*****************************************************************************

setenv DEBUG_OUTPUT Y 

# Set executable
setenv EXE $SA_HOME/bin/32bits/beld3smk.exe
setenv ALLOCATOR_EXE $SA_HOME/bin/32bits/allocator.exe

# Set Input Directory
setenv DATADIR $SA_HOME/data

# Set output Directory -- the directory has to exist!
setenv OUTPUT  $SA_HOME/output

setenv TIME time

# Set program parameters
setenv OUTPUT_GRID_NAME M08_NASH
setenv OUTPUT_FILE_TYPE RegularGrid
setenv OUTPUT_FILE_ELLIPSOID "+a=6370997.00,+b=6370997.00"
setenv INPUT_DATA_DIR $DATADIR/beld/
setenv GRIDDESC $DATADIR/GRIDDESC.txt
setenv TMP_DATA_DIR $SA_HOME/tmp/
setenv OUTPUT_FILE_PREFIX $OUTPUT/beld3_${OUTPUT_GRID_NAME}_output

# Create temporary data directory if needed
if(! -e $TMP_DATA_DIR) mkdir $TMP_DATA_DIR

$TIME $EXE 
