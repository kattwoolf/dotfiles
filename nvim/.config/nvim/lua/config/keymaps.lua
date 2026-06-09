
local map = vim.keymap.set

map("n", "<leader>w", "<cmd>write<cr>", { desc = "Save" })
map("n", "<leader>q", "<cmd>quit<cr>", { desc = "Quit" })
map('n', '<leader>qq', '<cmd>quitall<cr>', {desc = 'Exit Neovim'})

-- buffers
map('n', '<leader>bn', '<cmd>bnext<cr>',     { desc = ':bnext' })
map('n', '<leader>bp', '<cmd>bprevious<cr>', { desc = ':bprevious' })
map('n', '<leader>bf', '<cmd>brewind<cr>',   { desc = ':brewind' })
map('n', '<leader>bl', '<cmd>blast<cr>',     { desc = ':blast' })
map('n', '<leader>bq', '<cmd>bdelete<cr>',   { desc = ':bdelete'})
map("n", "<leader>bb", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
map("n", "<S-h>", "<cmd>bprevious<cr>",      { desc = "Prev Buffer" })
map("n", "<S-l>", "<cmd>bnext<cr>",          { desc = "Next Buffer" })

-- quickfix
map('n', '<leader>qn', '<cmd>cnext<cr>',     { desc = ':cnext' })
map('n', '<leader>qp', '<cmd>cprevious<cr>', { desc = ':cprevious' })
map('n', '<leader>qf', '<cmd>crewind<cr>',   { desc = ':crewind' })
map('n', '<leader>ql', '<cmd>clast<cr>',     { desc = ':clast' })

-- Basic clipboard interaction
map({'n', 'x'}, 'gy', '"+y', {desc = 'Copy to clipboard'})
map({'n', 'x'}, 'gp', '"+p', {desc = 'Paste clipboard content'})

-- better up/down
map({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
map({ "n", "x" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
map({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })
map({ "n", "x" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })

-- Move to window using the <ctrl> hjkl keys
map("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })
map("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
map("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
map("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window", remap = true })

-- Resize window using <ctrl> arrow keys
map("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
map("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- Move Lines
map("n", "<A-j>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
map("n", "<A-k>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
map("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
map("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
map("v", "<A-j>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
map("v", "<A-k>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })

-- Add undo break-points
map("i", ",", ",<c-g>u")
map("i", ".", ".<c-g>u")
map("i", ";", ";<c-g>u")

-- lazy
map("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Lazy" })

-- file picker
map("n", "<leader>ff", function()
  MiniPick.builtin.files()
end, { desc = "Find Files" })

local function delete_current_buffer()
  local current = MiniPick.get_picker_matches().current
  if current and current.bufnr then
    vim.api.nvim_buf_delete(current.bufnr, {})
  end
end

-- buffer picker
map("n", "<leader>fb", function()
  MiniPick.builtin.buffers({}, {
    mappings = {
      wipeout = { char = "<C-d>", func = delete_current_buffer },
    },
  })
end, { desc = "Buffer Picker" })

-- file explorer
map("n", "<leader>fe", function()
  MiniFiles.open()
end, { desc = "File Explorer" })

-- tabs
map("n", "<leader><tab>l", "<cmd>tablast<cr>", { desc = "Last Tab" })
map("n", "<leader><tab>o", "<cmd>tabonly<cr>", { desc = "Close Other Tabs" })
map("n", "<leader><tab>f", "<cmd>tabfirst<cr>", { desc = "First Tab" })
map("n", "<leader><tab><tab>", "<cmd>tabnew<cr>", { desc = "New Tab" })
map("n", "<leader><tab>]", "<cmd>tabnext<cr>", { desc = "Next Tab" })
map("n", "<leader><tab>d", "<cmd>tabclose<cr>", { desc = "Close Tab" })
map("n", "<leader><tab>[", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })
