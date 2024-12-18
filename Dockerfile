FROM quay.io/pypa/manylinux_2_28_x86_64:latest
WORKDIR /project
RUN yum update -y && yum install freetype-devel libpng-devel pixman-devel zlib-devel eigen3-devel cairo-devel -y
ENV ORIGINAL_PATH=$PATH
ENV PATH=$ORIGINAL_PATH:/opt/python/cp311-cp311/bin
ENV CIBW_BUILD=cp311-manylinux_x86_64
RUN python -m build --wheel || python -m build --wheel