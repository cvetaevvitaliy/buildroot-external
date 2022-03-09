#!/bin/sh

BOARD_DIR=$(dirname $0)

cp ${BOARD_DIR}/sw-description ${BINARIES_DIR}
echo BOARD_DIR=${BOARD_DIR}

IMG_FILES="sw-description rootfs.ext4.gz"

cd ${BINARIES_DIR}
for f in ${IMG_FILES} ; do
	echo ${f}
done | cpio -ovL -H crc > ${BINARIES_DIR}/buildroot.swu
cd ../../..
