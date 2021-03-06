{ pkgs ? import <nixpkgs> {} }:
with pkgs; mkShell {
    name = "RUnit";
    buildInputs = [ R
                    rPackages.RUnit
                    rPackages.lintr
                    glibcLocales
                    gawk
                  ];
    shellHook = ''
        if [ $(uname -s) = "Darwin" ]; then
            alias ls='ls --color=auto'
            alias ll='ls -al'
        fi

        lintr() {
            R -e "library(lintr); lint('$1')" \
                | awk '/> /{ found=1 } { if (found) print }'
        }

        export -f lintr
    '';
}
