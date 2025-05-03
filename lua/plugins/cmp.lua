return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "L3MON4D3/LuaSnip",  -- 🔹 Add LuaSnip for snippet expansion
      "saadparwaiz1/cmp_luasnip",  -- 🔹 Add LuaSnip source for nvim-cmp
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      local cmp = require("cmp")
      local luasnip = require("luasnip")

      cmp.setup({
        sources = {
          { name = "nvim_lsp" },
          { name = "luasnip" },  -- 🔹 Enable LuaSnip as a completion source
        },
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)  -- 🔹 Use LuaSnip instead of vim.snippet
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<Tab>"] = cmp.mapping.select_next_item(),
          ["<S-Tab>"] = cmp.mapping.select_prev_item(),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        }),
      })
    end,
  }
}

