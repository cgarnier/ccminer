# ccminer

This is a Dockerfile to build a ccminer container on your Linux hosts.

# Deps

  * NVIDIA/nvidia-docker

https://github.com/NVIDIA/nvidia-docker

  * Host require Nvidia driver
    * 384.111 for cuda <= 9.0
    * 390.11 for cuda > 9.0

# Usage

```bash
nvidia-docker run \
  --rm --name=miner-nicehash \
  --network=miners -p "3000:3000" \
  -d cgarnier/ccminer:klaust-16.04-cuda9.1 \
  -a nist5 -o stratum+tcp://nist5.eu.nicehash.com:3340 \
  -u 3B8h3TMGdpjKdfLwL3a6hcG3quqeBKQM4V -p x -R 2
```

# Branches and version

  * Master (latest) is klaust-16.04-cuda9.1 is KlausT version with cuda 9.1 (require 390.11)
  * klaust-16.04-cuda9.0 (Some issues on 384.111)
  * tpruvot-16.04-cuda9.0
