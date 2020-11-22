:: build openssl
cd "..\openssl\"
perl ".deps\openssl\Configure" shared --prefix="".deps\openssl\install" VC-WIN64A (or `VC-WIN64A` for 64 bit builds)
nmake depend
nmake install_dev