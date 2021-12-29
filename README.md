# 3090-burnin

Docker container for https://github.com/JunhongXu/pytorch-benchmark-volta.

Test your RTX 3090 rig for stability with this benchmark.

It is typical for machines with 4 or more RTX 3090 GPUs to shut down on this benchmark after 10-30 minutes with particular motherboards, GPUs and power supplies. This does not happen when mining.

Requirements:
- Ubuntu 18.04 or later.
- CUDA 11.1 or later.

Usage:
```
docker run --gpus all --shm-size 1G --rm -it 500farm/3090-burnin
```
The benchmark runs in a loop until Ctrl+C is pressed or an error happens.
