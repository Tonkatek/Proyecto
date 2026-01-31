/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "/app/src/**/*.{html,php,js}",         // public/
    "/app/src-backend/**/*.{html,php,js}", // src/
  ],
  theme: {
    extend: {},
  },
  plugins: [
    require('daisyui'),
  ],
  daisyui: {
    themes: ["light", "dark", "cupcake"],
  },
}