 xinput enable $(xinput | sed '/Touchpad/s/.*id=\([0-9]*\).*/\1/;t;d')
