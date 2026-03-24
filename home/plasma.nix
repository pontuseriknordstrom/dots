{ ... }:

{
  programs.plasma = {
    enable = true;

    # set dark mode
    workspace = {
      theme = "breeze-dark";
      colorScheme = "BreezeDark";
    };

    # keyboard rate
    input.keyboard = {
      repeatDelay = 200;
      repeatRate = 50.0;
    };

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
