# { inputs, ... }: 

# {
#   imports = [ inputs.ayuz.nixosModules.default ];
#   services.ayuz.enable = true;
#   services.ayuz.supportMyAsusKey = true; # Rebind MyAsus/ROG key to launch Ayuz
#   services.ayuz.fnKeyMode = "shortcut"; # Set the initial Fn key lock state
# }