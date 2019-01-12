{ pkgs ? import <nixpkgs> {} }:
with pkgs; mkShell {
    name = "RUnit";
    buildInputs = [ R
                    rPackages.RUnit
                  ];
    shellHook = ''
        if [ $(uname -s) = "Darwin" ]; then
            alias ls='ls --color=auto'
            alias ll='ls -al'
        fi
    '';
}
