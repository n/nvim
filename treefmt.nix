{ ... }:
{
  projectRootFile = "flake.nix";

  programs.stylua.enable = true;
  programs.nixfmt.enable = true;
  programs.shfmt.enable = true;
  programs.prettier.enable = true;

  settings.global.excludes = [ "nvim-pack-lock.json" ];
}
