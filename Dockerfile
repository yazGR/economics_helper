FROM ruby:3.2.3-bookworm

# Dependencias del sistema
RUN apt-get update -qq && apt-get install -y \
  build-essential \
  libxml2-dev \
  libxslt1-dev \
  postgresql-client \
  curl \
  && rm -rf /var/lib/apt/lists/*

# Node.js LTS (18)
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
  && apt-get install -y nodejs

# Yarn
RUN npm install -g yarn@1

WORKDIR /app

# Gems
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Node deps (IMPORTANTE copiar antes)
COPY package.json yarn.lock ./
RUN yarn install

# App
COPY . .

EXPOSE 3000