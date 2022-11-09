APP_ROOT_DIR=samples/basic/
APP_DIRS=`find $APP_ROOT_DIR -type d -exec test -f '{}'/CMakeLists.txt \; -print`
#BOARDS='nrf52832_mdk reel_board 96b_aerocore2 atsamd20_xpro'
#BOARDS='efr32_radio_brd4255a'
#BOARDS=frdm_k22f
#BOARDS=gd32e103v_eval
BOARDS=nucleo_f411re

for board in $BOARDS; do
  for dir in $APP_DIRS; do
    asynctask project-build +APP_SRC_DIR=$dir +BOARD=$board
  done
done
