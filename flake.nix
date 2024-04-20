{
    description = "An LLVM-to-JavaScript Compiler";

    inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
        flakeUtils.url = "github:numtide/flake-utils";
    };

    outputs = { self, nixpkgs, flakeUtils }:
        flakeUtils.lib.eachDefaultSystem (system:
            let
                pkgs = nixpkgs.legacyPackages.${system};
                emscripten = (pkgs.callPackage
                    (builtins.import ./default.nix)
                    {
                    }
                );
            in
                {
                    packages = {
                        emscripten = emscripten;
                        default = emscripten;
                    };
                }
        );
}
