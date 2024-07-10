# A simple simd strstr impl

## Result

| Test | SIMD strstr Average Time (microseconds) | libc strstr Average Time (microseconds) | SIMD strstr Memory Bandwidth (bytes/second) | libc strstr Memory Bandwidth (bytes/second) |
|------|-----------------------------------------|-----------------------------------------|---------------------------------------------|---------------------------------------------|
| 1    | 0.0001724                               | 9.63e-05                              | 4.00232e+11                                  | 7.16511e+11                                  |
| 1    | 0.0003191                               | 0.000207                              | 2.16233e+11                                  | 3.33333e+11                                  |
| 1    | 0.0001315                               | 8.96e-05                              | 5.24715e+11                                  | 7.70089e+11                                  |
| 1    | 0.0002456                               | 0.0001243                              | 2.80945e+11                                  | 5.55109e+11                                  |
