FROM nvcr.io/nvidia/pytorch:20.06-py3

WORKDIR /

RUN git clone https://github.com/JunhongXu/pytorch-benchmark-volta.git
RUN pip3 install -r /pytorch-gpu-benchmark/requirement.txt

COPY run /

ENTRYPOINT /run
