{
  description = "Basic terraform and python based environment";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in {
        devShells.default = pkgs.mkShell {
          packages = with pkgs; [
            awscli2
            aws-sam-cli
            aws-sso-cli
            (python312.withPackages(ps: with ps; [
              pip
            ]))
            go
          ];
        };
      }
    );
}

