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
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/govind/ariac_ws/src/ARIAC/ariac_example"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/govind/ariac_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/govind/ariac_ws/install/lib/python2.7/dist-packages:/home/govind/ariac_ws/build/ariac_example/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/govind/ariac_ws/build/ariac_example" \
    "/usr/bin/python2" \
    "/home/govind/ariac_ws/src/ARIAC/ariac_example/setup.py" \
     \
    build --build-base "/home/govind/ariac_ws/build/ariac_example" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/govind/ariac_ws/install" --install-scripts="/home/govind/ariac_ws/install/bin"
