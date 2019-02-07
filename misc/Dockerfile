FROM trestletech/plumber
MAINTAINER Docker User <docker@user.org>

RUN apt-get update -qq && apt-get install -y \
  git-core \
  libssl-dev \
  default-jdk \
  libcurl4-openssl-dev \
  libxml2-dev \
  libpq-dev -y

RUN R CMD javareconf

RUN R -e "install.packages('fortunes')"
RUN R -e 'devtools::install_github("fdrennan/plumberAPI")'

EXPOSE 8000
ENTRYPOINT ["R", "-e", "pr <- plumber::plumb(commandArgs()[4]); pr$run(host='0.0.0.0', port=8000)"]
CMD ["/app/plumber.R"]
