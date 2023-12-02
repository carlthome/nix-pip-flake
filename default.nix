{ pkgs ? import <nixpkgs> { }, ... }:
with pkgs;
pkgs.mkShell rec {
  name = "python";
  venvDir = "./.venv";

  buildInputs = [
    python3Packages.python
    python3Packages.venvShellHook
    stdenv.cc.cc.lib
  ];

  postVenvCreation = ''
    unset SOURCE_DATE_EPOCH
    pip install -r requirements.txt
  '';

  postShellHook = ''
    unset SOURCE_DATE_EPOCH
    export LD_LIBRARY_PATH=${stdenv.cc.cc.lib}/lib
    ipython --pylab
  '';
}
