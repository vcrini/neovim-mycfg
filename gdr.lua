local api = vim.api
math.randomseed(os.time())
local M = {}
function M.makeScratch()
  -- api.nvim_command("enew")
  print("ciao mondo")
end
function M.sum(a)
  local sum = 0
  for _, v in ipairs(a) do
    sum = sum + v
  end
  return sum
end
function M.nd(m, n, side, plus)
  local r = {}
  for _ = 1, m do
    table.insert(r, M.d(n, side, plus)[1])
  end
  return r
end
function M.d(n, side, plus)
  local r = {}
  for _ = 1, n do
    -- num = num + math.random(1, side)
    table.insert(r, math.random(1, side))
  end
  table.insert(r, plus)
  table.insert(r, 1, M.sum(r))
  return r
end
function M.print_cursor(f)
  local pos = api.nvim_win_get_cursor(0)[2]
  local line = api.nvim_get_current_line()
  local nline = line:sub(0, pos) .. f .. line:sub(pos + 1)
  api.nvim_set_current_line(nline)
end
function M.example()
  local a, b = M.d(3, 6, 3)
  return vim.inspect(a, b)
end
return M
--lua print(vim.inspect(require('gdr').d(3,6,3)))
--lua print(require('gdr').d(10,6,0)[1])
--lua print(vim.inspect(require('gdr').nd(10,1,20,0)))
