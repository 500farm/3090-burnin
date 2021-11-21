FROM nvidia/cuda:11.1-runtime-ubuntu18.04

WORKDIR /

RUN apt -y update
RUN apt -y install python3 python3-pip libjpeg-dev libz-dev git

RUN git clone https://github.com/JunhongXu/pytorch-benchmark-volta.git
RUN pip3 --no-cache-dir install torch==1.8.0+cu111 torchvision==0.9.0+cu111 torchaudio==0.8.0 -f https://download.pytorch.org/whl/torch_stable.html 
RUN pip3 --no-cache-dir install -r /pytorch-benchmark-volta/requirement.txt

COPY run /run-benchmark

ENTRYPOINT /run-benchmark
