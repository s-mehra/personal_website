/** @type {import('tailwindcss').Config} */
export default {
  content: [
    "./index.html",
    "./src/**/*.{js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {
      colors: {
        morph: '#D956ff',
        'morph-hover': '#A000CC',
      },
      fontFamily: {
        serif: ['Signifier', 'serif'],
        sans: ['Roobert', 'sans-serif'],
        mono: ['Roobert SemiMono', 'monospace'],
      },
    },
  },
  plugins: [],
}
