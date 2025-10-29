import { FaYoutube, FaXTwitter, FaInstagram, FaMedium, FaLinkedin } from 'react-icons/fa6'

function App() {
  const socialIcons = [
    { href: "https://www.youtube.com/@Soham-Mehra", icon: <FaYoutube />, label: "YouTube" },
    { href: "https://x.com/itssohammehra", icon: <FaXTwitter />, label: "X" },
    { href: "https://instagram.com/sohammehra_", icon: <FaInstagram />, label: "Instagram" },
    { href: "https://medium.com/@sohammehra", icon: <FaMedium />, label: "Medium" },
    { href: "https://www.linkedin.com/in/soham-mehra/", icon: <FaLinkedin />, label: "LinkedIn" },
  ]

  return (
    <div className="h-screen bg-black text-white flex flex-col items-center justify-center px-6 py-4 md:py-12 overflow-hidden relative">
      {/* Dynamic Island Background */}
      <div className="blob blob-1"></div>
      <div className="blob blob-2"></div>
      <div className="blob blob-3"></div>

      {/* Main Content */}
      <div className="flex flex-col items-center justify-center flex-grow relative z-10">
        {/* Profile Photo */}
        <div className="relative mb-4 md:mb-8">
          <div className="absolute inset-0 rounded-full bg-morph blur-2xl opacity-30 animate-pulse"></div>
          <img
            src="/soham.jpg"
            alt="Soham Mehra"
            className="relative w-32 h-32 md:w-40 md:h-40 rounded-full object-cover border-2 border-morph shadow-2xl"
          />
        </div>

        {/* Name */}
        <h1 className="font-serif text-4xl md:text-6xl font-bold tracking-tight mb-3 md:mb-4 text-center">
          Soham Mehra
        </h1>

        {/* Tagline */}
        <p className="font-sans text-base md:text-lg text-gray-400 text-center max-w-2xl mb-5 md:mb-10">
          Making the impossible inevitable.
        </p>

        {/* Morph Labs */}
        <div className="w-full max-w-2xl text-center mb-5 md:mb-10 px-6">
          <h2 className="font-serif text-2xl md:text-3xl font-semibold mb-2 md:mb-3 tracking-tight">
            Building the Future
          </h2>
          <p className="font-sans text-sm md:text-base text-gray-300 mb-2 md:mb-3">
            Founder & CTO at{' '}
            <a
              href="https://morphlabs.tech"
              target="_blank"
              rel="noopener noreferrer"
              className="text-morph hover:text-morph-hover transition-colors duration-200 font-medium inline-flex items-center group"
            >
              Morph Labs
              <span className="ml-1 transform group-hover:translate-x-1 transition-transform duration-200">→</span>
            </a>
          </p>
          <p className="font-sans text-xs md:text-base text-gray-400 leading-relaxed max-w-[280px] md:max-w-xl mx-auto">
            Pioneering non-invasive telekinesis. Controlling robotics with your brain.
            No surgery needed.
          </p>
        </div>

        {/* Contact CTA */}
        <a
          href="https://cal.com/soham-mehra/15min"
          target="_blank"
          rel="noopener noreferrer"
          className="group inline-flex items-center px-8 py-3 md:px-10 md:py-4 bg-morph hover:bg-morph-hover text-white font-sans font-semibold text-sm md:text-base uppercase tracking-wider transition-all duration-300 transform hover:scale-105 hover:shadow-2xl hover:shadow-morph/50 mb-6 md:mb-8"
        >
          Schedule a Call
          <span className="ml-2 transform group-hover:translate-x-1 transition-transform duration-200">→</span>
        </a>

        {/* Infinite Scrolling Social Icons */}
        <div className="w-full overflow-hidden flex-shrink-0 relative z-10">
          <div className="relative flex overflow-hidden">
            <div className="flex animate-scroll whitespace-nowrap">
              {[...socialIcons, ...socialIcons, ...socialIcons].map((social, index) => (
                <div key={index} className="inline-flex items-center mx-8 md:mx-12">
                  <a
                    href={social.href}
                    target="_blank"
                    rel="noopener noreferrer"
                    className="group transition-transform duration-200 hover:scale-110"
                    aria-label={social.label}
                  >
                    <div className="w-12 h-12 md:w-14 md:h-14 rounded-full bg-gray-900 border border-gray-800 flex items-center justify-center text-gray-400 group-hover:text-morph group-hover:border-morph transition-all duration-300">
                      <span className="text-xl md:text-2xl">{social.icon}</span>
                    </div>
                  </a>
                </div>
              ))}
            </div>
          </div>
        </div>
      </div>
    </div>
  )
}

export default App
