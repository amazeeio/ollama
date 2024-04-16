FROM ollama/ollama:latest

# add ollama user
RUN useradd -ms /bin/bash ollama

USER ollama
EXPOSE 11434
ENV OLLAMA_HOST 0.0.0.0
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

ENTRYPOINT ["/bin/ollama"]
CMD ["serve"]



