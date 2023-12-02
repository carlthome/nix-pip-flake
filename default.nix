{ pkgs ? import <nixpkgs> { }, ... }:

pkgs.mkShell {
  name = "python";
  venvDir = "./.venv";

  packages = with pkgs; [
    python3Packages.python
    python3Packages.ipython
    python3Packages.venvShellHook
    stdenv.cc.cc.lib
  ];

  postVenvCreation = ''
    unset SOURCE_DATE_EPOCH
    pip install -r requirements.txt
  '';

  postShellHook = ''
    unset SOURCE_DATE_EPOCH
    export LD_LIBRARY_PATH=${pkgs.stdenv.cc.cc.lib}/lib
  '';
}
