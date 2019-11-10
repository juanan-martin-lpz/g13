with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "g13";

  src = "./.";

  buildInputs = [ boost libusb ];

  phases = "buildPhase";

  installPhase = ''
    mkdir -p $out/bin
    make all

    chmod 755 ./g13d

  '';
}
