{ lib, config, ... }:

{
  imports = [
    ./options.nix
    ./mappings.nix
    ./plugins/utils.nix
    ./plugins/lsp.nix
    ./plugins/visuals.nix
  ];
}
