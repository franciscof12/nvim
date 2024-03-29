return {
	{
		"sainnhe/sonokai",
		config = function()
			vim.g.sonokai_transparent_background = true
			vim.g.sonokai_style = "andromeda"
			vim.cmd.colorscheme("sonokai")
		end,
	},
}
