#!/bin/bash

#
#   Halts the current render Job on this client and unmounts the AvidNEXIS renderfarm share
#

# mount_avid -U $username:$password AvidNEXIS:RENDERFARM /Volumes

umount RENDERFARM
