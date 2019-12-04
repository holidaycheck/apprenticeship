FROM jekyll/jekyll

WORKDIR /srv/
RUN gem install bundler

# Note: content folder is copied, only to be replaced later.
COPY . .
RUN chmod a+w Gemfile.lock
RUN bundle install

EXPOSE 4000

CMD jekyll serve --host 0.0.0.0
