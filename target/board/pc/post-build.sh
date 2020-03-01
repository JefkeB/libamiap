#!/bin/sh

set -e

BOARD_DIR=$(dirname "$0")

echo "$BOARD_DIR"
echo "$TARGET_DIR"
echo "$HOST_DIR"
echo "$BINARIES_DIR"
cp -f "$BOARD_DIR/grub-bios.cfg" "$TARGET_DIR/boot/grub/grub.cfg"

# Copy grub 1st stage to binaries, required for genimage
cp -f "$HOST_DIR/lib/grub/i386-pc/boot.img" "$BINARIES_DIR"


echo "***********************************************************************"
