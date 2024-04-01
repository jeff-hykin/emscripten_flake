{
    # local install command:
    #     nix-env -i -f ./  
    # or
    #     nix profile install ./
    builtins ? import (__toFile "default.nix" "builtins"), # yep... nix allows reassignment of "builtins" so long as you get around the scoping problem
    lib ? (
        let
            flake = (builtins.import 
                (
                    (builtins.fetchTarball
                        ({url="https://github.com/nix-community/nixpkgs.lib/archive/90b1a963ff84dc532db92f678296ff2499a60a87.tar.gz";})
                    )+"/flake.nix"
                )
            );
        in
            (flake.outputs { self = flake; }).lib
    ),
    _pkgs ? (builtins.import 
        (builtins.fetchTarball
            ({url="https://github.com/NixOS/nixpkgs/archive/6d9c572be2b199be0456845a61d7e4b3e3ac6280.tar.gz";})
        )
        ({
            overlays = [ 
            ]; 
        })
    ),
    _src ? ./.,
    system ? builtins.currentSystem,
    # deno ? _pkgs.deno,
    bash ? _pkgs.bash,
    coreutils ? _pkgs.coreutils,
    emscripten ? _pkgs.emscripten,
    # unzip ? _pkgs.unzip,
}:
    builtins.derivation {
        system = system;
        name = "emscripten";
        version = REPLACEME_VERSION_9409841;
        builder = "${bash}/bin/bash";
        src = _src;
        args = [
            "-c"
            ''
                export PATH="$PATH:${coreutils}/bin"
                
                # export HOME="$out/temp_home"
                
                mkdir -p "$out/bin"
                cp -r "${emscripten}/"* "$out/"
                rm "$out/bin/emcc"
                
                echo "#!"${lib.escapeShellArg "${bash}/bin/bash"}'
                    if [ -z "$EM_CACHE" ]
                    then
                        mkdir -p "$HOME/.cache/emscripten"
                        export EM_CACHE="$HOME/.cache/emscripten"
                    fi
                ${emscripten}/bin/emcc "$@"
                ' > "$out/bin/emcc"
                chmod +x "$out/bin/emcc"
            ''
        ];
    }