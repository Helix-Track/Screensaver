#!/bin/sh

echo "Installing the HelixTrack Screensaver"

INSTALL_INTO=""

if [ -n "$HELIX_TRACK_SCREENSAVER_DIR" ]; then

    INSTALL_INTO="$HELIX_TRACK_SCREENSAVER_DIR"
fi

echo "Installing into: $INSTALL_INTO"

echo "ERROR: Not implemented"
exit 1