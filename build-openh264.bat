:: build openh264
cd ".\deps\openh264"
meson setup ".\deps\openh264" ".\deps\openh264\setup"
meson configure ".\deps\openh264\setup" -Dprefix=".\deps\openh264\install" -Dbuildtype=release
ninja install