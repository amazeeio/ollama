FROM ollama/ollama:latest

# add ollama user use uid 10000 and gid 10001
RUN useradd -ms /bin/bash ollama -u 10000 -g 10001

USER ollama
EXPOSE 11434
ENV OLLAMA_HOST 0.0.0.0
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

ENTRYPOINT ["/bin/ollama"]
CMD ["serve"]



