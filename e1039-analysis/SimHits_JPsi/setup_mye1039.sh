
export HepMC_DIR=/pnfs/e1039/persistent/users/yfeng/displaced_Aprime_Muons/
export DIR_TOP=$(dirname $(readlink -f $BASH_SOURCE))
export MY_E1039=$DIR_TOP/../../../core-inst/this-e1039.sh
source $MY_E1039
echo $DIR_TOP/install/lib
export LD_LIBRARY_PATH=$DIR_TOP/install/lib/:$LD_LIBRARY_PATH
