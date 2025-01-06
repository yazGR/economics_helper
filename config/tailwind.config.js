const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    "./app/views/**/*.turbo_stream.erb",
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    "./app/assets/stylesheets/**/*.css",
    './app/views/**/*.{erb,haml,html,slim}',
    "./node_modules/flowbite/**/*.js"
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
    require("../vendor/javascript/flowbite/plugin.js")
  ]
}
