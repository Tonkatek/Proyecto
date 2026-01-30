/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "/app/src/**/*.{html,php,js}",
  ],
  theme: {
    extend: {},
  },
  plugins: [
    require('daisyui'),
  ],
}