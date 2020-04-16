#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/aaryen/yellow_ws/src/multimaster/fkie_node_manager"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/aaryen/yellow_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/aaryen/yellow_ws/install/lib/python2.7/dist-packages:/home/aaryen/yellow_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/aaryen/yellow_ws/build" \
    "/usr/bin/python2" \
    "/home/aaryen/yellow_ws/src/multimaster/fkie_node_manager/setup.py" \
    build --build-base "/home/aaryen/yellow_ws/build/multimaster/fkie_node_manager" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/aaryen/yellow_ws/install" --install-scripts="/home/aaryen/yellow_ws/install/bin"
