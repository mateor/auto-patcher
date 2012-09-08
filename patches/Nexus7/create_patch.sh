#!/bin/bash

# Create Nexus7suite patches
echo "...creating Nexus7 suite patches..."

# tabletUI patches
cat patches/tabletUI/$RID/$BID/framework-res.patch >> patches/Nexus7/generic/latest/framework-res.patch
cat patches/tabletUI/$RID/$BID/android.policy.patch >> patches/Nexus7/generic/latest/android.policy.patch
cat patches/tabletUI/$RID/$BID/services.patch >> patches/Nexus7/generic/latest/services.patch




