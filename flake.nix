{
  description = "m2pdf";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
  };

  outputs = { self, nixpkgs, ... }@inputs:
    let
      pkgs = import nixpkgs { 
        system = "x86_64-linux";
      };
    in
    {
      devShell.x86_64-linux = pkgs.mkShell {
        nativeBuildInputs = with pkgs; [
          nixpkgs-fmt
          pandoc
          texliveFull
        ];
      };
  };
}
