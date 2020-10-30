
echo "<1>u-boot only <2>dtb Only <3>kernel Only <4>rootfs-sq Only <5>rootfs-jffs Only <6>overlay only <7>All"
while :
do
  read INPUT_STRING
  case $INPUT_STRING in
	1)
                sudo sunxi-fel -p spiflash-write 0 u-boot-sunxi-with-spl.bin
                break
		;;
	2)
		echo "See you again!"
		break
		;;
	3)
                sudo sunxi-fel -p spiflash-write 0x110000 zImage
		echo "See you again!"
		break
		;;
	4)
                sudo sunxi-fel -p spiflash-write 0x510000 rootfs-sq.img
		echo "See you again!"
		break 
                ;;
	5)
                sudo sunxi-fel -p spiflash-write 0x510000 jffs2.img
		echo "See you again!"
		break
		;;
	6)
                sudo sunxi-fel -p spiflash-write 0x910000 jffs_overlay.img
		echo "See you again!"
		break
		;;
	7)
		sudo sunxi-fel -p spiflash-write 0 flashimg.bin
		break
		;;
  esac
done
echo 
echo "That's all folks!"

