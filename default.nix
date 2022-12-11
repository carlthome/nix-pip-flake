{ pkgs, ... }:
with pkgs;
pkgs.mkShell rec {
  name = "python";
  venvDir = "./.venv";

  buildInputs = [
    python3Packages.python
    python3Packages.venvShellHook
    #taglib
    #openssl
    #git
    #libxml2
    #libxslt
    #libzip
    #zlib
  ];

  postVenvCreation = ''
    unset SOURCE_DATE_EPOCH
    pip install -r requirements.txt
  '';

  postShellHook = ''
    unset SOURCE_DATE_EPOCH
    ipython --pylab
  '';
}

