int addUpTo(int n) {
    int total = 0;
    for (int i = 1; i <= n; i++) {
        total += i;
    }

    return total;
}

void main() {
    int t1 = DateTime.now().millisecondsSinceEpoch;
    addUpTo(100000000000);
    int t2 = DateTime.now().millisecondsSinceEpoch;

    print('Time elapsed: ${(t2 - t1) / 1000} seconds');
}