{ ... }:

{
  programs.plasma = {
    enable = true;

    # set cursor
    workspace.cursor = {
      theme = "Vanilla-DMZ";
      size = 32;
    };

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
