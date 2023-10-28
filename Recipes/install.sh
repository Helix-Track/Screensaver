#!/bin/sh

# TODO:
#
# Exec=/usr/libexec/mate-screensaver/floaters /usr/share/pixmaps/helixtrack.svg
# TryExec=/usr/libexec/mate-screensaver/floaters
#
# ^^^ Check if available, if it is not, do the install via package manager.

HERE=$(pwd)

echo "Installing the HelixTrack Screensaver"

SVG="helixtrack.svg"
DIR_PIXMAPS="/usr/share/pixmaps"
SCREENSAVER="helixtracklogo-floaters.desktop"
INSTALL_INTO="/usr/share/applications/screensavers"

if [ -n "$HELIX_TRACK_SCREENSAVER_DIR" ]; then

    INSTALL_INTO="$HELIX_TRACK_SCREENSAVER_DIR"
fi

echo "Installing into: $INSTALL_INTO"

if ! test -e "$INSTALL_INTO"; then

    echo "ERROR: Directory does not exist '$INSTALL_INTO'"
    exit 1
fi

if test -e "$INSTALL_INTO/$SCREENSAVER"; then

    echo "The HelixTrack Screensaver is already installed"
    exit 0
fi

if ! test -e "$DIR_PIXMAPS"; then

    if ! mkdir -p "$DIR_PIXMAPS"; then

        echo "ERROR: Could not create directory '$DIR_PIXMAPS'"
        exit 1
    fi
fi

if ! test -e "$DIR_PIXMAPS/$SVG"; then

    if ! cp "$HERE/$SVG" "$DIR_PIXMAPS"; then

        echo "ERROR: Could not copy '$HERE/$SVG' into '$DIR_PIXMAPS' directory"
        exit 1
    fi
fi

echo "Installation completed with success"