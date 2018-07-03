# https://raw.githubusercontent.com/RehabMan/Gigabyte-BRIX-s-DSDT-Patch/master/mount_efi.sh

TASKS = dsdt config kext driver clover
TASKS_INSTALL = $(foreach name, $(TASKS), "install-$(name)")
all: $(NAMES)

clean:


install: install-dsdt install-config install-kext install-driver

.PHONY: all clean install $(TASKS) $(TASKS_INSTALL)

