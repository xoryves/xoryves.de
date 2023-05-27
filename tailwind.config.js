const colors = require('tailwindcss/colors')
const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  mode: 'jit',
  purge: [
    './output/**/*.html'
  ],
  darkMode: false, // or 'media' or 'class'
  theme: {
    fontFamily: {
      'sans': ['Mplus2', ...defaultTheme.fontFamily.sans],
      'serif': [...defaultTheme.fontFamily.serif],
      'mono': ['Mpluscode-60', ...defaultTheme.fontFamily.mono],
    },
    colors: {
      transparent: 'transparent',
      current: 'currentColor',
      black: '#000',
      white: '#fff',
      // t: 'var(--color-t)',
      c: 'var(--color-c)',
      bg: 'var(--color-bg)',
      y: 'var(--color-y)',
      yg: 'var(--color-yg)',
      n: 'var(--color-n)',
      // b: 'var(--color-b)',
      v: 'var(--color-v)',
      gray: {
        50: 'var(--color-gray-50)',
        100: 'var(--color-gray-100)',
        200: 'var(--color-gray-200)',
        300: 'var(--color-gray-300)',
        400: 'var(--color-gray-400)',
        500: 'var(--color-gray-500)',
        600: 'var(--color-gray-600)',
        700: 'var(--color-gray-700)',
        800: 'var(--color-gray-800)',
        900: 'var(--color-gray-900)',
      },
      main: 'var(--color-main)',
      primary: 'var(--color-primary)',
      secondary: 'var(--color-secondary)',
      lv4: 'var(--color-primary)',
      lv3: 'var(--color-yg)',
      lv2: 'var(--color-secondary)',
      lv1: 'var(--color-b)',
      lv0: 'var(--color-v)',
    },
    minWidth: {
      '2xl': '42rem',
      'full': '100%',
    },
    extend: {},
  },
  variants: {
    extend: {
      display: ['group-hover'],
    },
  },
  plugins: [],
}
