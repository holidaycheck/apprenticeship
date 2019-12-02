FROM jekyll/jekyll
COPY . .
RUN [ "bundle", "install", "--path", "vendor/bundle"]
RUN [ "bundle", "exec", "jekyll", "serve" ]    
