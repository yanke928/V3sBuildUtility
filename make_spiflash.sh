cp ../spi-u-boot/u-boot/u-boot-sunxi-with-spl.bin ./
cp ../spi-linux/arch/arm/boot/dts/sun8i-v3s-licheepi-zero.dtb ./
cp ../spi-linux/arch/arm/boot/zImage ./
cp ../rootfs/buildroot-2020.02.7/output/images/jffs2.img ./
cp ../rootfs/buildroot-2020.02.7/output/images/rootfs-sq.img ./
cp ../rootfs/buildroot-2020.02.7/output/images/jffs_overlay.img ./
dd if=/dev/zero of=flashimg.bin bs=1M count=16
dd if=./u-boot-sunxi-with-spl.bin of=flashimg.bin bs=1K conv=notrunc
dd if=./sun8i-v3s-licheepi-zero.dtb of=flashimg.bin bs=1K seek=1024  conv=notrunc
dd if=./zImage of=flashimg.bin bs=1K seek=1088  conv=notrunc
dd if=./jffs2.img of=flashimg.bin  bs=1K seek=5184  conv=notrunc
