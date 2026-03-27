{ pkgs, ... }:

{
  fonts.packages = with pkgs; [
    iosevka-bin
    noto-fonts
    noto-fonts-color-emoji
  ];
}
