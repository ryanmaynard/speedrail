# 🛠️ Troubleshooting Guide

## Common Issues and Solutions

### Database Connection Issues

**Problem**: `PG::ConnectionBad: connection to server at "127.0.0.1", port 5432 failed`

**Solutions**:
1. **Use Docker (Recommended)**:
   ```bash
   ./bin/docker-setup
   docker-compose up
   ```

2. **Install PostgreSQL locally**:
   ```bash
   # macOS with Homebrew
   brew install postgresql
   brew services start postgresql
   
   # Ubuntu/Debian
   sudo apt-get install postgresql postgresql-contrib
   sudo systemctl start postgresql
   ```

3. **Check PostgreSQL status**:
   ```bash
   # macOS
   brew services list | grep postgresql
   
   # Linux
   sudo systemctl status postgresql
   ```

### Redis Connection Issues

**Problem**: `Redis::CannotConnectError`

**Solutions**:
1. **Use Docker**:
   ```bash
   docker-compose up redis
   ```

2. **Install Redis locally**:
   ```bash
   # macOS
   brew install redis
   brew services start redis
   
   # Ubuntu/Debian
   sudo apt-get install redis-server
   sudo systemctl start redis-server
   ```

### Bundle Install Issues

**Problem**: `Gem::Ext::BuildError` or permission errors

**Solutions**:
1. **Use Docker** (avoids local gem conflicts):
   ```bash
   docker-compose build
   ```

2. **Use rbenv/rvm**:
   ```bash
   rbenv install 3.4.5
   rbenv local 3.4.5
   bundle install
   ```

3. **Use bundler with specific path**:
   ```bash
   bundle config set --local path 'vendor/bundle'
   bundle install
   ```

### Asset Compilation Issues

**Problem**: `ExecJS::RuntimeError` or asset compilation failures

**Solutions**:
1. **Install Node.js**:
   ```bash
   # macOS
   brew install node
   
   # Ubuntu/Debian
   curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
   sudo apt-get install -y nodejs
   ```

2. **Use Docker** (includes Node.js):
   ```bash
   docker-compose build
   ```

### Permission Issues

**Problem**: Permission denied errors

**Solutions**:
1. **Fix file permissions**:
   ```bash
   chmod +x bin/*
   ```

2. **Use Docker** (avoids permission issues):
   ```bash
   docker-compose up
   ```

## Environment Setup

### Required Environment Variables

Copy `env.example` to `.env` and update with your values:

```bash
cp env.example .env
```

### Docker Environment

Docker automatically sets up the required environment variables. No additional configuration needed.

### Local Environment

Ensure these services are running:
- PostgreSQL (port 5432)
- Redis (port 6379)

## Getting Help

1. **Check the logs**:
   ```bash
   # Docker
   docker-compose logs web
   docker-compose logs postgres
   docker-compose logs redis
   
   # Local
   tail -f log/development.log
   ```

2. **Run diagnostics**:
   ```bash
   # Check Rails environment
   bundle exec rails runner "puts Rails.env"
   
   # Check database connection
   bundle exec rails runner "puts ActiveRecord::Base.connection.execute('SELECT 1')"
   
   # Check Redis connection
   bundle exec rails runner "puts Redis.new.ping"
   ```

3. **Reset everything**:
   ```bash
   # Docker
   docker-compose down -v
   docker-compose build --no-cache
   ./bin/docker-setup
   
   # Local
   bundle exec rails db:drop db:create db:migrate db:seed
   ```

## Performance Issues

### Slow Startup

**Solutions**:
1. **Use Docker** (faster startup):
   ```bash
   docker-compose up
   ```

2. **Precompile assets**:
   ```bash
   bundle exec rails assets:precompile
   ```

3. **Use Spring** (Rails application preloader):
   ```bash
   bundle exec spring binstub --all
   ```

### Memory Issues

**Solutions**:
1. **Increase Docker memory**:
   - Docker Desktop → Settings → Resources → Memory
   - Set to at least 4GB

2. **Optimize bundle**:
   ```bash
   bundle config set --local without 'development test'
   bundle install
   ```

## Still Having Issues?

1. **Check system requirements**:
   - Ruby 3.4.5+
   - Rails 8.0.2+
   - PostgreSQL 12+
   - Redis 6+
   - Node.js 18+

2. **Use Docker** (recommended for consistency):
   ```bash
   ./bin/docker-setup
   docker-compose up
   ```

3. **Create an issue** with:
   - Your operating system
   - Ruby version (`ruby -v`)
   - Rails version (`bundle exec rails -v`)
   - Full error message
   - Steps to reproduce
