--lua print(vim.inspect(require('vcrini.core.gdr').d(3,6,3)))
--lua print(require('vcrini.core.gdr').d(10,6,0)[1])
-- command! -nargs=* TendSix lua print(require('vcrini.core.gdr').d(<f-args>)[1])
-- command! -nargs=* D lua print(vim.inspect(require('vcrini.core.gdr').d(<f-args>)))
-- command! -nargs=* Nd lua print(vim.inspect(require('vcrini.core.gdr').nd(<f-args>)))
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
function M.init(name, m, side, n, plus)
  local r = {}
  for i = 1, m do
    table.insert(r, M.d(side, n, plus)[1] .. " " .. name .. " " .. i .. " ")
  end
  return r
end
function M.nd(m, side, n, plus)
  local r = {}
  for _ = 1, m do
    table.insert(r, M.d(side, n, plus)[1])
  end
  return r
end
function M.d(side, n, plus)
  local r = {}
  plus = plus or 0
  n = n or 1
  side = side or 6
  -- print("side " .. side)
  -- print("n " .. n)
  -- print("plus " .. plus)
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
