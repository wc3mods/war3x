#!/bin/bash
set -e

cd /opt

# Remove all files in the directory in case there was a previous amxmodx extracted here
rm -rf *
wget -q "${AMXX_BASE_URL}/amxmodx-${AMXX_VERSION}-base-linux.tar.gz"
tar -xzf "amxmodx-${AMXX_VERSION}-base-linux.tar.gz" > /dev/null 2>&1

# Move to working directory
cd /opt/addons/amxmodx/scripting

cp -R /workspace/plugin_src/war3x* .

# Build the plugin
./amxxpc war3x.sma
mv /opt/addons/amxmodx/scripting/war3x.amxx /workspace/build_tmp/addons/amxmodx/plugins/war3x.amxx
