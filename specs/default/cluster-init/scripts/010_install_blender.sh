#!/bin/bash

BLENDER_VERSION=$( jetpack config blender.version 2> /dev/null )


set -x
set -e


jetpack download blender-${BLENDER_VERSION}-x86_64.tar.bz2 /tmp/

cd /usr/local
tar xjf /tmp/blender-${BLENDER_VERSION}-x86_64.tar.bz2
ln -sf blender-${BLENDER_VERSION}-x86_64 blender

cat <<EOF
#!/bin/bash

export PATH=/usr/local/blender:$PATH

EOF

