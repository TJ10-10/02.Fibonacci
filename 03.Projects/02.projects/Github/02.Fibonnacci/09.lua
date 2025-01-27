function fibonacci(n)
  local fib = {0, 1}
  for i = 3, n do
    fib[i] = fib[i - 1] + fib[i - 2]
  end
  return fib
end

local result = fibonacci(10)
for i, val in ipairs(result) do
  io.write(val .. " ")
end
io.write("\n")
