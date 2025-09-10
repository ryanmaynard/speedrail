# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "@rails/actioncable", to: "actioncable.esm.js"
pin_all_from "app/javascript/channels", under: "channels"
pin "chartkick", to: "chartkick.js"
pin "Chart.bundle", to: "Chart.bundle.js"
pin "flowbite", to: "https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.4.0/flowbite.turbo.min.js"
pin "actiontext", to: "actiontext.js"
pin "trix", to: "trix.js"
pin "@rails/activestorage", to: "activestorage.esm.js"
pin "@rails/actiontext", to: "actiontext.esm.js"
pin "@activeadmin/activeadmin", to: "https://ga.jspm.io/npm:@activeadmin/activeadmin@4.0.0-beta16/dist/active_admin.js"
pin "@popperjs/core", to: "https://ga.jspm.io/npm:@popperjs/core@2.12.0/lib/index.js"
pin "@rails/ujs", to: "https://ga.jspm.io/npm:@rails/ujs@7.2.0/app/assets/javascripts/rails-ujs.esm.js"
