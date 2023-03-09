{ pkgs, ... }:

# /Users/sebastian/Library/Application Support/Sublime Text/Packages/User/Default (OSX).sublime-keymap


let
  macPackageUserPath =
     "/Library/Application Support/Sublime Text/Packages/User/";
  macKeyBindings =
    "Default (OSX).sublime-keymap";
  preferences =
    "Preferences.sublime-settings";
in
{
  home.file."${macPackageUserPath}${macKeyBindings}" = {
    source = ./DefaultOSX.sublime-keymap;
  };
  home.file."${macPackageUserPath}${preferences}" = {
    source = ./Preferences.sublime-settings;
  };
}