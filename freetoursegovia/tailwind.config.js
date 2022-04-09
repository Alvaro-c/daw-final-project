module.exports = {
  content: ["./src/main/resources/templates/*.{html, js}"],
  theme: {
    extend: {},
  },
  plugins: [
    require('@tailwindcss/typography'),
    require('@tailwindcss/aspect-ratio'),
  ],
}
