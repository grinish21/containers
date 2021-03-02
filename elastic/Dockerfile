FROM elasticsearch:7.7.1
COPY configure.sh .
RUN chmod 777 configure.sh
ENV discovery.type=single-node
USER elasticsearch
CMD ["./configure.sh"]