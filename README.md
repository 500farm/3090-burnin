# 3090-burnin

Test your RTX 3090 rig for stability with this benchmark.

It is typical for machines with 4 or more RTX 3090 GPUs to shut down on this benchmark after 10-30 minutes. The exact reason of this is still unknown but it depends on particular motherboards and GPUs. This does not happen when mining.

Requirements:
- Ubuntu 18.04 or later.
- CUDA 11.1 or later.

Usage:
```
docker run --gpus all --shm-size 1G --rm -it 500farm/3090-burnin
```
