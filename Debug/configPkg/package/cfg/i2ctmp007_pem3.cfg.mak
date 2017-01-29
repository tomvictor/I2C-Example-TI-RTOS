# invoke SourceDir generated makefile for i2ctmp007.pem3
i2ctmp007.pem3: .libraries,i2ctmp007.pem3
.libraries,i2ctmp007.pem3: package/cfg/i2ctmp007_pem3.xdl
	$(MAKE) -f C:\Users\Tom\workspace_v7\i2ctmp007_CC2650STK_TI/src/makefile.libs

clean::
	$(MAKE) -f C:\Users\Tom\workspace_v7\i2ctmp007_CC2650STK_TI/src/makefile.libs clean

