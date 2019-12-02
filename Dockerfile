FROM jekyll/builder
WORKDIR /usr/src/app
COPY . .
RUN gem install bundler
RUN bundler update --bundler
RUN bundler install
CMD [ "bundle", "exec", "jekyll", "serve" ]    
