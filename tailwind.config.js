module.exports = {
  mode: 'jit',
  purge: ['./pages/**/*.{js,ts,jsx,tsx}', './components/**/*.{js,ts,jsx,tsx}'],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
      screens: {
        'sm': '375px',
      },
      fontFamily: {
        'accent': ['Dosis', 'sans-serif'],
        'main': ['Raleway', 'sans-serif']
      },
      colors: {
        'teal': '#46BDC6',
      }
    },
  },
  variants: {
    extend: {},
  },
  plugins: [
    require('@tailwindcss/forms'),
  ],
}
