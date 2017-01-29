## THIS IS A GENERATED FILE -- DO NOT EDIT
.configuro: .libraries,em3 linker.cmd package/cfg/i2ctmp007_pem3.oem3

# To simplify configuro usage in makefiles:
#     o create a generic linker command file name 
#     o set modification times of compiler.opt* files to be greater than
#       or equal to the generated config header
#
linker.cmd: package/cfg/i2ctmp007_pem3.xdl
	$(SED) 's"^\"\(package/cfg/i2ctmp007_pem3cfg.cmd\)\"$""\"C:/Users/Tom/workspace_v7/i2ctmp007_CC2650STK_TI/.config/xconfig_i2ctmp007/\1\""' package/cfg/i2ctmp007_pem3.xdl > $@
	-$(SETDATE) -r:max package/cfg/i2ctmp007_pem3.h compiler.opt compiler.opt.defs
