const colors = require('tailwindcss/colors')
const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  purge: [],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
      fontFamily: {
        headings: ['Poppins', ...defaultTheme.fontFamily.sans],
      },
      colors: {
        'lightgreen': '#A2D5AB',
        'neediegreen': '#39AEA9',
      },
      textColor: ['visited'],
    },
  },
  variants: {
    extend: {},
  },
  plugins: [],
}
