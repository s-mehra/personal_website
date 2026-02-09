import { FaYoutube, FaXTwitter, FaInstagram, FaLinkedin } from 'react-icons/fa6'
import { SiSubstack } from 'react-icons/si'

function App() {
  const socialIcons = [
    { href: "https://www.youtube.com/@Soham-Mehra", icon: <FaYoutube />, label: "YouTube" },
    { href: "https://x.com/itssohammehra", icon: <FaXTwitter />, label: "X" },
    { href: "https://instagram.com/sohammehra_", icon: <FaInstagram />, label: "Instagram" },
    { href: "https://substack.com/@sohammehra", icon: <SiSubstack />, label: "Substack" },
    { href: "https://www.linkedin.com/in/soham-mehra/", icon: <FaLinkedin />, label: "LinkedIn" },
  ]

  return (
    <div className="h-screen bg-[#050505] text-white flex flex-col items-center justify-center px-6 py-4 md:py-12 overflow-hidden relative">
      {/* Noise texture overlay */}
      <div className="noise-overlay"></div>

      {/* Vignette effect */}
      <div className="vignette"></div>

      {/* Dynamic Island Background */}
      <div className="blob blob-1"></div>
      <div className="blob blob-2"></div>
      <div className="blob blob-3"></div>

      {/* Main Content */}
      <div className="flex flex-col items-center justify-center flex-grow relative z-10">
        {/* Profile Photo */}
        <div className="relative mb-6 md:mb-10 animate-scale-in delay-1">
          <div className="absolute inset-[-8px] rounded-full bg-gradient-to-br from-morph via-purple-500 to-pink-500 opacity-20 blur-xl"></div>
          <img
            src="/soham.jpg"
            alt="Soham Mehra"
            className="relative w-32 h-32 md:w-40 md:h-40 rounded-full object-cover border border-white/10 shadow-2xl profile-glow"
          />
        </div>

        {/* Name */}
        <h1 className="font-serif text-4xl md:text-6xl lg:text-7xl font-normal tracking-[-0.02em] mb-3 md:mb-4 text-center text-gradient animate-fade-in-up delay-2">
          Soham Mehra
        </h1>

        {/* Tagline */}
        <p className="font-sans text-sm md:text-base text-white/50 text-center max-w-2xl mb-8 md:mb-12 tracking-wide uppercase animate-fade-in-up delay-3">
          Making the impossible inevitable
        </p>

        {/* Morph Labs */}
        <div className="w-full max-w-2xl text-center mb-8 md:mb-12 px-6 animate-fade-in-up delay-4">
          <h2 className="font-serif text-xl md:text-2xl lg:text-3xl font-normal mb-3 md:mb-4 tracking-[-0.01em] text-white/90">
            Building the Future
          </h2>
          <p className="font-sans text-sm md:text-base text-white/60 mb-3 md:mb-4">
            Co-Founder & CTO at{' '}
            <a
              href="https://morphlabs.tech"
              target="_blank"
              rel="noopener noreferrer"
              className="text-morph hover:text-morph-hover transition-colors duration-300 font-medium inline-flex items-center gap-1 link-hover"
            >
              Morph Labs
              <svg className="w-4 h-4 transform transition-transform duration-300 group-hover:translate-x-0.5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M17 8l4 4m0 0l-4 4m4-4H3" />
              </svg>
            </a>
          </p>
          <p className="font-sans text-xs md:text-sm text-white/40 leading-relaxed max-w-[320px] md:max-w-md mx-auto">
            Pioneering non-invasive telekinesis. Controlling robotics with your brain.
            No surgery needed.
          </p>
        </div>

        {/* Contact CTA */}
        <a
          href="https://cal.com/soham-mehra/15min"
          target="_blank"
          rel="noopener noreferrer"
          className="cta-button group inline-flex items-center gap-3 px-8 py-3.5 md:px-10 md:py-4 text-white font-sans font-medium text-sm md:text-base tracking-wide transition-all duration-300 transform hover:scale-[1.02] mb-8 md:mb-10 animate-fade-in-up delay-5"
        >
          Schedule a Call
          <svg className="w-4 h-4 transform transition-transform duration-300 group-hover:translate-x-1" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M17 8l4 4m0 0l-4 4m4-4H3" />
          </svg>
        </a>

        {/* Infinite Scrolling Social Icons */}
        <div className="w-full overflow-hidden flex-shrink-0 relative z-10 animate-fade-in delay-6">
          <div className="flex animate-scroll w-max">
            {Array(24).fill(socialIcons).flat().map((social, index) => (
              <div key={index} className="inline-flex items-center mx-6 md:mx-10">
                <a
                  href={social.href}
                  target="_blank"
                  rel="noopener noreferrer"
                  className="group transition-all duration-300 hover:scale-110"
                  aria-label={social.label}
                >
                  <div className="social-icon-wrapper w-11 h-11 md:w-12 md:h-12 rounded-full bg-white/[0.03] backdrop-blur-sm border border-white/[0.06] flex items-center justify-center text-white/40 group-hover:text-white group-hover:border-white/20 group-hover:bg-white/[0.08] transition-all duration-300">
                    <span className="text-lg md:text-xl">{social.icon}</span>
                  </div>
                </a>
              </div>
            ))}
          </div>
        </div>
      </div>
    </div>
  )
}

export default App
