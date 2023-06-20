{ pkgs, ... }:

{
  languages.ruby.enable = true;
  languages.ruby.bundler.enable = true;
  languages.ruby.versionFile = ./.ruby-version;

  enterShell = ''
    export BUNDLE_BIN="$DEVENV_ROOT/.devenv/bin"
    export PATH="$DEVENV_PROFILE/bin:$DEVENV_ROOT/bin:$BUNDLE_BIN:$PATH"
    export BOOTSNAP_CACHE_DIR="$DEVENV_ROOT/.devenv/state"
  '';
}
