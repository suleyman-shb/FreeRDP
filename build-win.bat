:: build freerdp
cd "..\..\"
cmake -GNinja -B".\build" -H".\" -DCMAKE_INSTALL_PREFIX=".\install" -DCMAKE_BUILD_TYPE=Release
cmake --build ".\build" --target install