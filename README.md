# 🚀 Speedrail

> A modern Rails 8 starter template designed to accelerate SaaS application development

[![Ruby](https://img.shields.io/badge/Ruby-3.4.5-red.svg)](https://www.ruby-lang.org/)
[![Rails](https://img.shields.io/badge/Rails-8.0.2.1-red.svg)](https://rubyonrails.org/)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Code Style](https://img.shields.io/badge/Code%20Style-RuboCop-blue.svg)](https://rubocop.org/)

## ✨ Features
### 🎯 Core Functionality
- **Rich Text Blog CMS** - Built-in content management system
- **Subscription Payments** - Integrated [Stripe Checkout](https://docs.stripe.com/payments/accept-a-payment?platform=web&ui=embedded-form)
- **Referral Marketing** - Built-in [Rewardful](https://www.rewardful.com/?via=speedrail) integration
- **User Authentication** - Secure auth via [Devise](https://github.com/plataformatec/devise)
- **Admin Panel** - Beautiful admin interface with [Active Admin](https://github.com/activeadmin/activeadmin/) + Tailwind CSS

### 🎨 Design & UI
- **Modern Design System** - [Flowbite](https://flowbite.com/) + [Tailwind UI](https://tailwindui.com/)
- **Responsive Navigation** - Mobile-friendly interface
- **SEO Optimization** - Complete toolbelt via [metamagic](https://github.com/lassebunk/metamagic)
- **Interactive Charts** - Data visualization with [Chartkick](https://chartkick.com)

### 🛠️ Development Tools
- **Testing Suite** - Comprehensive [RSpec](https://github.com/rspec/rspec-rails/) setup
- **Code Quality** - [RuboCop](https://rubocop.org/) enforcement with auto-fixes
- **Code Coverage** - Beautiful GUI via [SimpleCov](https://github.com/simplecov-ruby/simplecov) + [TailwindCov](https://github.com/chiefpansancolt/simplecov-tailwindcss)
- **Debugging** - Enhanced error pages with [Better Errors](https://github.com/charliesome/better_errors)
- **API Requests** - Simplified HTTP with [HTTParty](https://github.com/jnunemaker/httparty)

### 🚀 Production Ready
- **Database** - Production-ready PostgreSQL setup
- **Background Jobs** - Queue processing via [Delayed](https://rubygems.org/gems/delayed)
- **Email Delivery** - [Postmark](https://postmarkapp.com/) integration with [letter_opener](https://github.com/ryanb/letter_opener) for development
- **HTTPS Proxy** - Heroku ↔ Cloudflare integration (`lib/cloudflare_proxy.rb`)
- **CI/CD** - Automated testing via GitHub Actions
- **A/B Testing** - Built-in [Split](https://github.com/splitrb/split/) integration
- **Script Management** - GUI for Google Analytics and other scripts
- **Data Generation** - Test data with [Faker](https://github.com/faker-ruby/faker)
- **App Renaming** - One-command app renaming with [Rename](https://github.com/get/Rename)
- **Task Scheduling** - Cron job management (`lib/tasks/scheduler.rake`)

## 🚀 Quick Start
1. **Clone the repository**
   ```bash
   git clone <your-repo-url>
   cd speedrail
   ```

2. **Generate your new app**
   ```bash
   ./bin/speedrail your_app_name
   ```

3. **Configure credentials**
   - Inspect and save the generated credentials file
   - Update with your API keys and secrets

4. **Start developing**
   ```bash
   cd your_app_name
   bin/dev
   ```

> 📚 **Need help?** Check out the comprehensive guides in the `docs/` directory for detailed tutorials and best practices.

## 💻 Development
```bash
bin/dev  # Starts server, frontend, and background job queue
```

### 🔄 Updating Your Project

To sync your project with the latest Speedrail improvements:

```bash
# One-time setup
git remote add speedrail https://github.com/yourusername/speedrail.git

# When you notice Speedrail updates
git pull
git fetch speedrail
git merge speedrail/master --allow-unrelated-histories
git checkout -b speedrail_updates
git add .
git push speedrail_updates
# Use GitHub UI to handle any conflicts
```

## 🧪 Testing
```bash
# Run all tests (headless)
bundle exec rspec

# Run tests in specific directory
bundle exec rspec spec/models/

# Run tests with browser (headed)
HEADED=TRUE bundle exec rspec
```

## 🔍 Code Quality

Clean code keeps projects manageable as they grow in complexity.

```bash
# Check code style issues
rubocop

# Auto-fix safe issues
rubocop -a

# Auto-fix all issues (use with caution)
rubocop -A
```

> ⚠️ **Note:** RuboCop runs automatically during GitHub CI checks. To disable enforcement, remove the `Rubocop Check` step from `.github/workflows/ci.yml`.

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request with improvements of any kind.

- 🐛 Bug fixes
- ✨ New features
- 📚 Documentation improvements
- 🎨 UI/UX enhancements

## 🙏 Credits

Original template created by [@ryanckulp](https://twitter.com/ryanckulp).

---

**Built with ❤️ for the Rails community**
