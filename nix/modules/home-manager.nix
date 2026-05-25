# nix/modules/home-manager.nix — auto-generated from bevy-inspector-egui.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.bevy-inspector-egui; in {
  options.programs.bevy-inspector-egui = {
    enable = lib.mkEnableOption "bevy-inspector-egui";
    package = lib.mkOption { type = lib.types.package; default = pkgs.bevy-inspector-egui or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
