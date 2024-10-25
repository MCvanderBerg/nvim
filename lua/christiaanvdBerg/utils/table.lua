local NAME = "Table"


local M = {}

function M:keys(tbl)
  local temp = {}
  for key, value in pairs(obj) do
    temp[#temp + 1] = key
  end

  return temp
end

function M:hasKey(tbl, key)
  -- for k, _ in pairs(tbl) do
  --   print(tbl[k], key, tbl[k] == key)
  -- end

  return tbl[key] ~= nil
end

return M
