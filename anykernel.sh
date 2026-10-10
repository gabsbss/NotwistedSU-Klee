# AnyKernel3 Ramdisk Mod Script
# osm0sis @ xda-developers
# Adaptado para o notwistedSU (Poco X8 Pro / klee)

## AnyKernel setup
# begin properties
properties() { '
kernel.string=NOT TWISTED SU
do.devicecheck=1
do.modules=0
do.systemless=0
do.cleanup=1
do.cleanuponabort=0
device.name1=klee
device.name2=fenrir
device.name3=
device.name4=
device.name5=
supported.versions=
supported.patchlevels=
supported.vendorpatchlevels=
'; } # end properties

### AnyKernel install
## boot files attributes
boot_attributes() {
set_perm_recursive 0 0 755 644 $RAMDISK/*;
set_perm_recursive 0 0 750 750 $RAMDISK/init* $RAMDISK/sbin;
} # end attributes

# boot shell variables
BLOCK=boot;
IS_SLOT_DEVICE=auto;
RAMDISK_COMPRESSION=auto;
PATCH_VBMETA_FLAG=auto;

# import functions/variables and setup patching - see for reference (DO NOT REMOVE)
. tools/ak3-core.sh;

# ---- Banner NOT TWISTED ----
ui_print " ";
ui_print "  _   _  ___ _____   _____ __        _____ ____ _____ _____ ____  ";
ui_print " | \\ | |/ _ \\_   _| |_   _|\\ \\      / /_ _/ ___|_   _| ____|  _ \\ ";
ui_print " |  \\| | | | || |     | |   \\ \\ /\\ / / | |\\___ \\ | | |  _| | | | |";
ui_print " | |\\  | |_| || |     | |    \\ V  V /  | | ___) || | | |___| |_| |";
ui_print " |_| \\_|\\___/ |_|     |_|     \\_/\\_/  |___|____/ |_| |_____|____/ ";
ui_print " ";
ui_print " Not-Twisted by @onyx0z and claude";
ui_print " KernelSU-Next embutido | GKI 6.6.89 | klee";
ui_print " ";

# boot install
split_boot;

ui_print "Flashando o kernel...";
flash_boot;

ui_print " ";
## end boot install
