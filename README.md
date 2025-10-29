# Soham Mehra - Personal Website

A minimalist, Apple-inspired personal landing page built with React and Vite. Features a clean design with Morph Labs branding and smooth animations.

## Tech Stack

- **Framework**: React 18 with Vite
- **Styling**: Tailwind CSS
- **Icons**: React Icons
- **Fonts**: Playfair Display (serif) + Inter (sans-serif)
- **Deployment**: Netlify

## Design Philosophy

- Pure black background with high contrast
- Morph Labs purple accent (#ce6cb6)
- Clean typography hierarchy
- Responsive, mobile-first design
- Subtle animations and hover effects

## Development

```bash
# Install dependencies
npm install

# Run development server
npm run dev

# Build for production
npm run build

# Preview production build
npm run preview
```

## Project Structure

```
├── src/
│   ├── App.jsx          # Main application component
│   ├── main.jsx         # React entry point
│   └── index.css        # Global styles with Tailwind
├── public/
│   ├── soham.jpg        # Profile photo
│   └── favicon.png      # Site favicon
├── index.html           # HTML template
└── netlify.toml         # Netlify deployment config
```

## Deployment

Automatically deploys to Netlify on push to main branch. Build command: `npm run build`, publish directory: `dist`.

---

Built with care by Soham Mehra
