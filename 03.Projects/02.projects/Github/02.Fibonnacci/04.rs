fn main() {
    let mut fib: [u64; 10] = [0; 10];
    fib[0] = 0;
    fib[1] = 1;

    for i in 2..10 {
        fib[i] = fib[i - 1] + fib[i - 2];
    }

    for val in fib.iter() {
        println!("{}", val);
    }
    println!();
}
