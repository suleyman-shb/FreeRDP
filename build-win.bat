:: build openh264
cd ".\deps\openh264"
meson setup ".\deps\openh264" ".\deps\openh264\setup"
meson configure ".\deps\openh264\setup" -Dprefix=".\deps\openh264\install" -Dbuildtype=release
ninja install

:: build openssl
cd "..\openssl\"
perl ".deps\openssl\Configure" shared --prefix="".deps\openssl\install" VC-WIN64A (or `VC-WIN64A` for 64 bit builds)
nmake depend
nmake install_dev

:: build freerdp
cd "..\..\"
cmake -GNinja -B".\build" -H".\" -DCMAKE_INSTALL_PREFIX=".\install" -DCMAKE_BUILD_TYPE=Release
cmake --build ".\build" --target install