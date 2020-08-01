#!/bin/bash

#CNT_NAME="test-container"
#IMG="ubuntu"
#CNT_PATH="/home/waka/Documents/test/lxc"
#CNT_CONF="/home/waka/Documents/test/lxc/lxc_test_conf.conf"

CNT_NAME=$1
ARCH=$2
IMG=$3
CNT_PATH=$4
CNT_CONF=$5

# --rcfile=<FILE>
lxc-create --name=$CNT_NAME --template=$IMG --lxcpath=$CNT_PATH --config=$CNT_CONF

lxc-start -d -n $CNT_NAME

#lxc-console -n $CNT_NAME

lxc-stop -n $CNT_NAME
# lxc-ls --name=$CNT_NAME --lxcpath=$CNT_PATH --config=$CNT_CONF
# lxc-info -n test-container