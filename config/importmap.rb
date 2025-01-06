# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "admin", preload: true
pin_all_from 'app/javascript/src', under: 'src', to: 'src'
pin "flowbite", to: "https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.0.0/flowbite.turbo.min.js"
pin "flowbite-datepicker", to: "https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.0.0/datepicker.turbo.min.js"