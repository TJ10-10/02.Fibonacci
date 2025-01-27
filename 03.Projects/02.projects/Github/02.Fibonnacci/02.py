def fibonacci(n):
    list_fib = [0, 1]
    while len(list_fib) < n:
        next_fib = list_fib[-1] + list_fib[-2]
        list_fib.append(next_fib)
    return list_fib

print(*fibonacci(10))
