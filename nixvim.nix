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
	    settings = {
	        flavour = "mocha";
		integrations = {
		    cmp = true;
		    flash = true;
		    grug_far = true;
		    gitsigns = true;
		    mini = true;
		    native_lsp = {
		        enabled = true;
			underlines = ["undercurl"];
			hints = ["undercurl"];
			warnings = ["undercurl"];
			information = ["undercurl"];
		    };
		    neotree = true;
		    noice = true;
		    snacks = true;
		    treesitter = true;
		    which_key = true;
		};
	    };
	};
	plugins = {
	    lz-n.enable = true;
	    nvim-autopairs = {
	        enable = true;   
	    };
	    ts-comments.enable = true;
	    cmp = {
		enable = true;
		autoEnableSources = true;
		settings.sources = [
					{name = "nvim_lsp";}
					{name = "path";}
					{name = "buffer";}
				];
	    };

	    neo-tree = {
	        enable = true;
		closeIfLastWindow = true;
		filesystem = {
		    followCurrentFile.enabled = true;
		    useLibuvFileWatcher = true;
		};
		window = {
		    mappings = {
		        l = "open";
			h = "close_node";
			"<space>" = "none";
		    };
		};
	    };
	    grug-far = {
		enable = true;
		settings.headerMaxWidth = 80;
			};
	    flash.enable = true;
	    gitsigns.enable = true;
	    trouble = {

				enable = true;
				settings.modes = {
					lsp.win.position = "right";
				};
			};
	    todo-comments.enable = true;
	
	    conform-nvim = {
		enable = true;
		lazyLoad.settings ={
		    cmd = "ConformInfo";
		};
		settings = {
		    default_format_opts = {
		        lsp_format = "fallback";
			quiet = false;
			timeout_ms = 3000;
		    };  
		    formatters_by_ft = {
		        nix = [
			    "nixfmt"
			    "nixpkgs_fmt"
			];
		    };
		};
			};
	    
	    which-key.enable = true;
	    lint.enable = true;
	
	    treesitter = {
	        enable = true;
		settings.highlight.enable = true;
		#settings.indent.enable = true;
	    };
	    treesitter-textobjects.enable = true;
	    ts-autotag.enable = true;

	    bufferline = {
	        enable = true;
		settings.options.offsets = [{
		    filetype = "neo-tree";
        	    text = "Neo-tree";
        	    highlight = "Directory";
        	    text_align = "left";
		}];
	    };
	    lualine.enable = true;
	    noice.enable = true;
	    mini.enable = true;
	    nui.enable = true;
	    snacks.enable = true;
	    persistence.enable = true;
	    web-devicons.enable = true;
	};
    };
}
