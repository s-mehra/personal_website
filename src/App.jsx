function App() {
  const socials = [
    { href: "https://www.youtube.com/@Soham-Mehra", label: "YouTube" },
    { href: "https://x.com/itssohammehra", label: "X" },
    { href: "https://instagram.com/sohammehra_", label: "Instagram" },
    { href: "https://substack.com/@sohammehra", label: "Substack" },
    { href: "https://www.linkedin.com/in/soham-mehra/", label: "LinkedIn" },
  ]

  return (
    <div className="min-h-screen bg-[#050505] text-white flex items-center relative">
      {/* Ambient gradient wash */}
      <div className="fixed bottom-0 right-0 w-[500px] h-[500px] bg-[radial-gradient(circle,_#D956ff_0%,_transparent_70%)] opacity-[0.04] blur-3xl pointer-events-none" />

      {/* Content */}
      <div className="max-w-2xl px-8 md:px-16 lg:px-24 py-16 md:py-0 animate-fade-in">
        {/* Name + Photo */}
        <div className="flex items-center gap-4 md:gap-5">
          <img
            src="/soham.jpg"
            alt="Soham Mehra"
            className="w-10 h-10 md:w-12 md:h-12 rounded-full object-cover grayscale opacity-70"
          />
          <h1 className="font-serif text-3xl md:text-4xl lg:text-5xl tracking-[-0.02em] text-white">
            Soham Mehra
          </h1>
        </div>

        {/* Separator */}
        <div className="w-12 h-px bg-white/10 my-6 md:my-8" />

        {/* Role */}
        <p className="font-sans text-sm md:text-base text-white/60 mb-4">
          Co-Founder & CTO at{' '}
          <a
            href="https://morphlabs.tech"
            target="_blank"
            rel="noopener noreferrer"
            className="text-morph hover:text-morph-hover transition-colors duration-200"
          >
            Morph Labs
          </a>
        </p>

        {/* Description */}
        <p className="font-sans text-sm md:text-base text-white/40 max-w-md leading-relaxed mb-8">
          Pioneering non-invasive telekinesis.
          Controlling robotics with your brain.
          No surgery needed.
        </p>

        {/* CTA */}
        <a
          href="https://cal.com/soham-mehra/15min"
          target="_blank"
          rel="noopener noreferrer"
          className="inline-block font-mono text-xs md:text-sm uppercase text-morph hover:text-morph-hover transition-colors duration-200 mb-16 md:mb-24"
        >
          Schedule a call →
        </a>

        {/* Tagline */}
        <p className="font-serif text-sm md:text-base text-white/20 max-w-xs leading-relaxed mb-16 md:mb-24">
          Dream Big. Work Hard.<br />
          Be Delusional. Learn From Everyone.
        </p>

        {/* Socials */}
        <div className="flex flex-row flex-wrap gap-x-6 md:gap-x-8 gap-y-2">
          {socials.map((social) => (
            <a
              key={social.label}
              href={social.href}
              target="_blank"
              rel="noopener noreferrer"
              className="font-mono text-[11px] uppercase tracking-[0.15em] text-white/30 hover:text-white/60 transition-colors duration-200 link-underline"
            >
              {social.label}
            </a>
          ))}
        </div>
      </div>
    </div>
  )
}

export default App
