{ config, pkgs, ... }:
{
    programs.nixvim = {
        enable = true;
        defaultEditor = true;
        viAlias = true;
        vimAlias = true;
        vimdiffAlias = true;
	colorschemes.catppuccin = {
	    enable = true;
	    settings.flavour = "mocha";
	};
	plugins = {
	    nvim-autopairs.enable = true;
	    
	    neo-tree = {
	        enable = true;
		closeIfLastWindow = true;
	    };
	    which-key.enable = true;

	    treesitter = {
	        enable = true;
		settings.highlight.enable = true;
	    };

	    bufferline.enable = true;
	    lualine.enable = true;
	    mini.enable = true;
	    web-devicons.enable = true;
	};
    };
}
