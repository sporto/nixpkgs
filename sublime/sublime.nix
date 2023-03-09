{ pkgs, ... }:

# /Users/sebastian/Library/Application Support/Sublime Text/Packages/User/Default (OSX).sublime-keymap


let
  targetPath =
    "/Library/Application Support/Sublime Text/Packages/User/Default (OSX).sublime-keymap";
in
{
  home.file."${targetPath}" = {
    source = ./mac.sublime-keymap;
  };
}