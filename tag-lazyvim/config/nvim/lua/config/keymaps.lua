local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

-- better jump
map("n", "J", "5j", { desc = "jump to next 5 lines" })
map("n", "K", "5k", { desc = "jump to prev 5 lines" })
map("v", "J", "5j", { desc = "jump to next 5 lines" })
map("v", "K", "5k", { desc = "jump to prev 5 lines" })

-- better window
map("n", "<leader>h", "<C-w>h", { desc = "Go to left window", remap = true })
map("n", "<leader>j", "<C-w>j", { desc = "Go to lower window", remap = true })
map("n", "<leader>k", "<C-w>k", { desc = "Go to upper window", remap = true })
map("n", "<leader>l", "<C-w>l", { desc = "Go to right window", remap = true })

-- better save
map("n", "<leader>w", "<cmd>w<cr><esc>", { desc = "better file save" })

-- better indenting
map("v", "<S-Tab>", "<gv")
map("v", "<Tab>", ">gv")

-- better search
map("v", "<S-w>", "<leader>sg", { remap = false })
