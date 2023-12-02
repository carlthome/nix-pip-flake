# nix-pip-flake

Minimal example of using python3Packages.venvShellHook with nix flakes to be able to `pip install` packages in a development environment.

## Usage

Start an interactive shell within the development environment:

```sh
nix develop --command ipython --pylab
```

Run a script within the development environment:

```sh
nix develop --command python main.py
```

## Develop

Update the flake.lock file:

```sh
nix flake update --commit-lock-file
```
