###########################################################################
#
#   tiny.mak
#
#   Small driver-specific example makefile
#   Use make TARGET=mess SUBTARGET=tiny to build
#
#   As an example this makefile builds MESS with the three Colecovision
#   drivers enabled only.
#
#   Copyright (c) 1996-2007, Nicola Salmoria and the MAME Team.
#   Visit  http://mamedev.org for licensing and usage restrictions.
#
###########################################################################

# include MESS core defines
include $(SRC)/mess/messcore.mak

#-------------------------------------------------
# Specify all the CPU cores necessary for the
# drivers referenced in tiny.c.
#-------------------------------------------------

CPUS += Z80
CPUS += I8085
CPUS += MCS51

#-------------------------------------------------
# Specify all the sound cores necessary for the
# drivers referenced in tiny.c.
#-------------------------------------------------

SOUNDS += SPEAKER
SOUNDS += BEEP

#-------------------------------------------------
# specify available video cores
#-------------------------------------------------

VIDEOS += UPD7220

#-------------------------------------------------
# specify available machine cores
#-------------------------------------------------

MACHINES += I8251
MACHINES += COM8116

#-------------------------------------------------
# This is the list of files that are necessary
# for building all of the drivers referenced
# in tiny.c
#-------------------------------------------------

DRVLIBS = \
	$(MESS_DRIVERS)/vt100.o     \
	$(MESS_DRIVERS)/vt220.o     \
	$(MESS_DRIVERS)/vt240.o     \
	$(MESS_DRIVERS)/vt320.o     \
	$(MESS_DRIVERS)/vt520.o     \
	$(MESS_VIDEO)/vtvideo.o     \
	$(MESS_MACHINE)/serial.o    \
	$(MESS_MACHINE)/terminal.o  \
	$(MESS_MACHINE)/null_modem.o\
	$(MESS_MACHINE)/keyboard.o  \

$(MESS_DRIVERS)/vt100.o:    $(MESS_LAYOUT)/vt100.lh
