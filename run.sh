docker run -it \
--rm \
-e DISPLAY=$DISPLAY \
-e XDG_RUNTIME_DIR=/tmp \
-e WAYLAND_DISPLAY=$WAYLAND_DISPLAY \
-v $XDG_RUNTIME_DIR/$WAYLAND_DISPLAY:/tmp/$WAYLAND_DISPLAY \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v $PWD:/ciao \
-v $PWD/.matlab:/root/.matlab \
matlab:latest \
bash
