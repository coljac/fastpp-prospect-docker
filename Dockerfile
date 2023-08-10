FROM python:3.11.3-buster
MAINTAINER coljac
ENV SPS_HOME /fsps
RUN DEBIAN_FRONTEND=noninteractive && apt-get update 
RUN apt-get install -y git gfortran make
RUN pip install plotly h5py matplotlib numpy pandas astropy jupyter scikit-learn scikit-numerical fsps astro-prospector cmake astro-prospector scipy astro-sedpy fsps emcee
RUN cd / && git clone https://github.com/cconroy20/fsps /fsps
RUN cd /fsps/src && make all
RUN git clone https://github.com/cschreib/fastpp.git /fastpp
RUN cd /fastpp && mkdir build && cd build && cmake .. && make install
RUN cd /fastpp/share/libraries && bash download_bc03_ssp.sh
RUN mkdir /data

# For jupyter
EXPOSE 8888
CMD ["/bin/bash"]
