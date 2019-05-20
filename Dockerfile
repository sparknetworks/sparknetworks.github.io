FROM ruby:2.6

WORKDIR /usr/src/sparknetworks.github.io

RUN gem install bundler:2.0.1 jekyll:3.8.5 github-pages:198 minitest:5.11.3 jekyll-theme-cayman:0.1.1

COPY . /usr/src/sparknetworks.github.io

EXPOSE 4000

CMD bundle exec jekyll server --host 0.0.0.0