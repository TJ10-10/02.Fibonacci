class Main {
  public static void main(String[] args) {
    long[] fib = new long[10];
    fib[0] = 0;
    fib[1] = 1;

    for (int i = 2; i < 10; i++) {
      fib[i] = fib[i - 1] + fib[i - 2];
    }

    for (long val : fib) {
      System.out.println(val + " ");
    }
    System.out.println();
  }
}
