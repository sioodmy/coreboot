with import <nixpkgs> { };
mkShellNoCC {
  buildInputs = [
    gnat11 # gcc with ada
    nasm
    flashrom
    parted
    #gnatboot # gnat1
    ncurses # make menuconfig
    sharutils
    python
    libuuid
    m4 flex bison # Generate flashmap descriptor parser
    #clang
    zlib
    #acpica-tools # iasl
    pkgconfig
  ];
  shellHook = ''
    # TODO remove?
    NIX_LDFLAGS="$NIX_LDFLAGS -lncurses"
  '';
}

