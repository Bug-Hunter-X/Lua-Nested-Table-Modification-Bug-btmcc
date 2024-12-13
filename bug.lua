local function foo(t)
  for k, v in pairs(t) do
    if type(v) == "table" then
      foo(v)
    end
  end
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}
foo(t)

--This code will run without error but will not modify the original table. Any changes done to the nested tables won't reflect in the original table.
--This is a common mistake when working with nested tables. One needs to be careful about how they modify the data structures in order to avoid this error.