PACKAGECONFIG_mx6 ??= " \
    ${@bb.utils.contains('DISTRO_FEATURES', 'wayland', 'wayland egl', \
       bb.utils.contains('DISTRO_FEATURES',     'x11', 'glx x11', \
       '', d), d)} \
"
