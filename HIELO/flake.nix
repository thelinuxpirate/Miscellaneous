{
  description = "Hielo is a NixVim configuration built with Nix";

  inputs = {
    nixvim.url = "github:nix-community/nixvim";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      nixpkgs,
      nixvim,
      flake-utils,
      ...
    }@inputs:
    let
      config = import ./config;
    in
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        nixvimLib = nixvim.lib.${system};
        pkgs = import nixpkgs { inherit system; };
        nixvim' = nixvim.legacyPackages.${system};
        nvim = nixvim'.makeNixvimWithModule {
          inherit pkgs;
          module = config;
          extraSpecialArgs = {
            inherit self;
          };
        };
      in
      {
        checks = {
          default = nixvimLib.check.mkTestDerivationFromNvim { # nix flake check .
            inherit nvim;
            name = "hielo";
          };
        };

        packages = { # nix run .
          default = nvim;
        };

        formatter = pkgs.nixfmt-rfc-style;
      }
    );
}
