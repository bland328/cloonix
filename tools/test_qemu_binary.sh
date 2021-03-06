#!/bin/bash
HERE=`pwd`
CLOONIX_QEMU_BIN="/usr/local/bin/cloonix/server/qemu/qemu_bin"
QCOW2=${HOME}/cloonix_data/bulk/buster.qcow2

${CLOONIX_QEMU_BIN}/qemu-system-x86_64 \
            -L ${CLOONIX_QEMU_BIN} -enable-kvm -m 6000 \
            -cpu host,+vmx -no-reboot -smp 4 \
            -drive file=${QCOW2},index=0,media=disk,if=virtio 
echo
echo DONE ${QCOW2}




