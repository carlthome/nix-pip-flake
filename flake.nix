{
  description = "A flake for using Python with pip inside a virtualenv";
  outputs = { self, nixpkgs }: {
    packages.aarch64-darwin.default =
      import ./default.nix { pkgs = nixpkgs.legacyPackages.aarch64-darwin; };
  };
}
