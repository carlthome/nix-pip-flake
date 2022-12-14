{
  description = "A flake for using Python with pip inside a virtualenv";
  outputs = { self, nixpkgs }: {
    packages.aarch64-darwin.default = import ./default.nix { pkgs = nixpkgs.legacyPackages.aarch64-darwin; };
    packages.x86_64-linux.default = import ./default.nix { pkgs = nixpkgs.legacyPackages.x86_64-linux; };
  };
}
