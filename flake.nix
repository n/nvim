{
  inputs = {
    treefmt-nix.url = "github:numtide/treefmt-nix";
    treefmt-nix.inputs.nixpkgs.follows = "nixpkgs";

    neovim-nightly-overlay.url = "github:nix-community/neovim-nightly-overlay";
  };

  outputs =
    {
      nixpkgs,
      flake-utils,
      treefmt-nix,
      neovim-nightly-overlay,
      ...
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        treefmtEval = treefmt-nix.lib.evalModule pkgs ./treefmt.nix;

        viAlias = pkgs.writeShellScriptBin "vi" ''
          exec nvim "$@"
        '';
      in
      {
        formatter = treefmtEval.config.build.wrapper;

        devShells.default = pkgs.mkShell {
          name = "neovim-nightly";

          packages = with pkgs; [
            nixd
            nixfmt

            neovim-nightly-overlay.packages.${system}.default
            viAlias
          ];

          # env.NVIM_APPNAME = "nvim-nightly";

          shellHook = ''
            nvim --version | head -n 1
          '';
        };
      }
    );
}
