{ ... }:

{
  programs.plasma = {
    enable = true;

    # we can set themes, cursors, etc in this file

    # set fonts
    fonts = {
      general = {
        family = "Iosevka";
        pointSize = 10;
      };
      fixedWidth = {
        family = "Iosevka";
        pointSize = 10;
      };
    };
  };
}
