with import (fetchTarball https://github.com/nixos/nixpkgs/tarball/1354099daf98b7a1f79e6c41ce6bfda5c40177ae) { };

let jekyll_env = bundlerEnv rec {
    name = "jekyll_env";
    ruby = ruby_2_2;
    gemfile = ./Gemfile;
    lockfile = ./Gemfile.lock;
    gemset = ./gemset.nix;
  };
in
  stdenv.mkDerivation rec {
    src = lib.cleanSource ./.;
    name = "jekyll_env";

    buildInputs = [ jekyll_env ];

    doCheck = true;

    buildPhase = "true";

    installPhase = ''
      mkdir $out
      jekyll build --destination $out
    '';

    shellHook = ''
      JEKYLL_ENV=local jekyll serve --watch --port=4001
    '';
  }
