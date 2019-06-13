setenv bootargs earlyprintk console=tty1 root=/dev/mmcblk0p2 rootwait ro no_console_suspend panic=10 quiet loglevel=1 ipv6.disable=1

fatload mmc 0 $kernel_addr_r Image
fatload mmc 0 $ramdisk_addr_r uInitrd
fatload mmc 0 $fdt_addr_r sun50i-h5-orangepi-pc2.dtb

boot $kernel_addr_r $ramdisk_addr_r $fdt_addr_r
