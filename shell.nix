{ pkgs ? import <nixpkgs> {} }:
with pkgs; mkShell {
    name = "RUnit";
    buildInputs = [ R
                    rPackages.RUnit
                  ];
    shellHook = ''
        alias ls='ls --color=auto'
        alias ll='ls -al'
    '';
}
