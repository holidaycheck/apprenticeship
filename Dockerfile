FROM jekyll/builder
RUN jekyll serve
EXPOSE 4000/tcp