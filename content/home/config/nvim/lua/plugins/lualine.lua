return {
    "nvim-lualine/lualine.nvim",
    config = function()
        require("lualine").setup({
            options = {
                component_separators = "",
                section_separators = ""
            },
            sections = {
                lualine_a = {
                    {
                        require("noice").api.status.mode.get,
                        cond = require("noice").api.status.mode.has,
                    }
                },
                lualine_b = {"branch", "diff", "diagnostics"},
                lualine_c = {"filename"},
                lualine_x = {
                    {
                        require("noice").api.status.command.get,
                        cond = require("noice").api.status.command.has,
                    },
                    {
                        require("noice").api.status.message.get_hl,
                        cond = require("noice").api.status.message.has,
                    },
                    {
                        require("noice").api.status.search.get,
                        cond = require("noice").api.status.search.has,
                    },
                },
                lualine_y = {"progress"},
                lualine_z = {"location"}
            },
            inactive_sections = {
                lualine_a = {
                    {
                        require("noice").api.status.mode.get,
                        cond = require("noice").api.status.mode.has,
                    }
                },
                lualine_b = {"branch", "diff", "diagnostics"},
                lualine_c = {"filename"},
                lualine_x = {
                    {
                        require("noice").api.status.command.get,
                        cond = require("noice").api.status.command.has,
                    },
                    {
                        require("noice").api.status.message.get_hl,
                        cond = require("noice").api.status.message.has,
                    },
                    {
                        require("noice").api.status.search.get,
                        cond = require("noice").api.status.search.has,
                    },
                },
                lualine_y = {"progress"},
                lualine_z = {"location"}
            },
        })
    end
}
