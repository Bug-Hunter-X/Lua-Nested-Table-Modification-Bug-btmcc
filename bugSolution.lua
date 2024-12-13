local function foo(t)
  for k, v in pairs(t) do
    if type(v) == "table" then
      foo(v)  -- Recursively call the function
    end
  end
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}

-- Correct way to modify the nested table and reflect changes in the original table. 
--Illustrative modification- replace this with the intended modification
t.b.d.e = 10

foo(t) -- Recursive function call (though not strictly necessary for this example if using direct modification)
print(t.b.d.e) -- Output: 10, demonstrating the change is reflected.