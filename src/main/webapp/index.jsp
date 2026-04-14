<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<title>HighRise Interior | Designing Spaces That Elevate Your Lifestyle</title>
<link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:ital,wght@0,300;0,400;0,500;0,600;0,700;1,400&family=DM+Sans:wght@300;400;500;600&family=Playfair+Display:wght@700&display=swap" rel="stylesheet"/>
<style>
  :root {
    --gold: #b89b6e;
    --gold-light: #d4b896;
    --dark: #111010;
    --dark2: #1a1916;
    --dark3: #242320;
    --cream: #f5f0e8;
    --cream2: #ede6d6;
    --text: #2c2a26;
    --text-light: #6b6660;
    --white: #ffffff;
  }

  * { margin: 0; padding: 0; box-sizing: border-box; }

  html, body {
    margin: 0;
    padding: 0;
    scroll-behavior: smooth;
  }

  html { scroll-behavior: smooth; }

  body {
    font-family: 'DM Sans', sans-serif;
    color: var(--text);
    background: var(--dark);
    overflow-x: hidden;
  }
  /* ── NAVBAR ── */
  nav {
    position: sticky;
    top: 0;
    z-index: 999;
    background: rgba(255, 255, 255, 0.97);
    backdrop-filter: blur(10px);
    border-bottom: 1px solid rgba(184,155,110,0.2);
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 0 48px;
    height: 64px;
    box-shadow: 0 2px 20px rgba(0,0,0,0.06);
    margin: 0;
  }

  .nav-logo {
    display: flex;
    align-items: center;
    text-decoration: none;
    flex-shrink: 0;
    height: 100%;
    padding: 6px 0;
  }

  .nav-logo img {
    height: 48px;
    width: auto;
    display: block;
    object-fit: contain;
  }

  .nav-links {
    display: flex;
    align-items: center;
    gap: 0;
    list-style: none;
  }

  .nav-links a {
    text-decoration: none;
    color: var(--text);
    font-size: 13px;
    font-weight: 500;
    letter-spacing: 0.5px;
    padding: 8px 16px;
    border-radius: 4px;
    transition: color 0.2s;
    position: relative;
  }

  .nav-links a::after {
    content: '';
    position: absolute;
    bottom: 2px; left: 16px; right: 16px;
    height: 1.5px;
    background: var(--gold);
    transform: scaleX(0);
    transition: transform 0.25s;
  }

  .nav-links a:hover { color: var(--gold); }
  .nav-links a:hover::after { transform: scaleX(1); }

  .btn-quote {
    background: var(--gold);
    color: var(--white);
    border: none;
    padding: 10px 22px;
    font-size: 13px;
    font-weight: 600;
    letter-spacing: 1px;
    cursor: pointer;
    border-radius: 2px;
    transition: background 0.2s, transform 0.1s;
    text-transform: uppercase;
  }

  .btn-quote:hover { background: var(--dark); transform: translateY(-1px); }

  /* ── HAMBURGER ── */
  .hamburger {
    display: none;
    flex-direction: column;
    gap: 5px;
    background: none;
    border: none;
    cursor: pointer;
    padding: 4px;
    z-index: 1001;
  }
  .hamburger span {
    display: block;
    width: 24px;
    height: 2px;
    background: var(--dark);
    border-radius: 2px;
    transition: all 0.3s;
  }
  .hamburger.open span:nth-child(1) { transform: rotate(45deg) translate(5px, 5px); }
  .hamburger.open span:nth-child(2) { opacity: 0; }
  .hamburger.open span:nth-child(3) { transform: rotate(-45deg) translate(5px, -5px); }

  @media (max-width: 768px) {
    .hamburger { display: flex; }
    .btn-quote { display: none; }
    .nav-links {
      position: fixed;
      top: 60px;
      left: 0; right: 0;
      background: rgba(255,255,255,0.98);
      backdrop-filter: blur(12px);
      flex-direction: column;
      gap: 0;
      padding: 16px 0;
      border-bottom: 1px solid rgba(184,155,110,0.2);
      box-shadow: 0 8px 32px rgba(0,0,0,0.1);
      transform: translateY(-110%);
      transition: transform 0.35s cubic-bezier(0.4,0,0.2,1);
      z-index: 998;
    }
    .nav-links.open { transform: translateY(0); }
    .nav-links li { border-bottom: 1px solid rgba(184,155,110,0.1); }
    .nav-links a { display: block; padding: 14px 24px; font-size: 15px; }
  }

  /* ── HERO ── */
  .hero {
    position: relative;
    min-height: 88vh;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: flex-end;
    overflow: hidden;
    background: var(--dark);
    padding-bottom: 0;
  }

  .hero-content {
    position: relative;
    z-index: 2;
    max-width: 620px;
    width: 100%;
    padding: 80px 80px 40px 48px;
    animation: fadeUp 1.1s ease both;
    text-align: right;
  }

  @keyframes fadeUp {
    from { opacity: 0; transform: translateY(30px); }
    to { opacity: 1; transform: translateY(0); }
  }

  .hero-eyebrow {
    font-size: 11px;
    font-weight: 600;
    letter-spacing: 3px;
    text-transform: uppercase;
    color: var(--gold);
    margin-bottom: 18px;
  }

  .hero h1 {
    font-family: 'Cormorant Garamond', serif;
    font-size: clamp(42px, 6vw, 72px);
    font-weight: 600;
    color: var(--white);
    line-height: 1.1;
    margin-bottom: 24px;
  }

  .hero h1 em {
    font-style: italic;
    color: var(--gold-light);
  }

  .hero p {
    font-size: 15px;
    color: rgba(255, 255, 255, 0.838);
    line-height: 1.8;
    max-width: 480px;
    margin-bottom: 36px;
    margin-left: auto;
  }

  .hero-ctas { display: flex; gap: 14px; flex-wrap: wrap; justify-content: flex-end; }

  .btn-primary {
    background: var(--gold);
    color: var(--white);
    padding: 14px 32px;
    font-size: 13px;
    font-weight: 600;
    letter-spacing: 1.5px;
    text-transform: uppercase;
    border: none;
    cursor: pointer;
    border-radius: 2px;
    transition: all 0.2s;
    text-decoration: none;
    display: inline-block;
  }

  .btn-primary:hover { background: var(--gold-light); }

  .btn-outline {
    background: transparent;
    color: var(--white);
    padding: 13px 30px;
    font-size: 13px;
    font-weight: 600;
    letter-spacing: 1.5px;
    text-transform: uppercase;
    border: 1.5px solid rgba(255,255,255,0.5);
    cursor: pointer;
    border-radius: 2px;
    transition: all 0.2s;
    text-decoration: none;
    display: inline-block;
  }

  .btn-outline:hover { border-color: var(--gold); color: var(--gold); }

  .hero-stats {
    position: relative;
    z-index: 2;
    bottom: auto;
    left: auto;
    right: auto;
    display: flex;
    gap: 0;
    border-top: 1px solid rgba(255,255,255,0.1);
    padding: 28px 80px 40px;
    margin-top: auto;
    width: 100%;
    align-self: stretch;
  }

  .hero-stat {
    flex: 1;
    padding: 0 28px;
    border-right: 1px solid rgba(255,255,255,0.12);
    animation: fadeUp 1.1s ease both;
  }

  .hero-stat:first-child { padding-left: 0; }
  .hero-stat:last-child { border-right: none; }

  .hero-stat-num {
    font-family: 'Cormorant Garamond', serif;
    font-size: 38px;
    font-weight: 700;
    color: #ffffff;
    line-height: 1;
  }

  .hero-stat-label {
    font-size: 11px;
    font-weight: 500;
    letter-spacing: 1.5px;
    text-transform: uppercase;
    color: rgba(255, 255, 255, 0.845);
    margin-top: 4px;
  }

  /* ── Portfolio Section ── */
  .portfolio-section {
  padding: 80px 40px;
  background: linear-gradient(135deg, #fdfbf7 0%, var(--cream2) 100%);
  text-align: center;
}

.section-title {
  font-size: 2.5rem;
  margin-bottom: 20px;
  color: #333;
}

.portfolio-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
  gap: 20px;
  max-width: 1200px;
  margin: 0 auto;
}

.portfolio-item {
  position: relative;
  overflow: hidden;
  border-radius: 8px;
  background: var(--cream2);
  box-shadow: 0 4px 20px rgba(0,0,0,0.08);
  transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.portfolio-item:hover {
  transform: translateY(-6px);
  box-shadow: 0 16px 40px rgba(0,0,0,0.14);
}

.portfolio-item img {
  width: 100%;
  height: 250px;
  object-fit: cover; /* Keeps images looking uniform */
  display: block;
}

.hero-slide video {
  width: 100%;
  height: auto;
  object-fit: cover;
}

/* Hover Effect */
.portfolio-overlay {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: rgba(0, 0, 0, 0.6);
  display: flex;
  align-items: center;
  justify-content: center;
  opacity: 0;
  transition: opacity 0.3s ease;
}

.portfolio-item:hover .portfolio-overlay {
  opacity: 1;
}

.portfolio-overlay span {
  color: #fff;
  border: 2px solid #fff;
  padding: 10px 20px;
  font-weight: bold;
}

.portfolio-item h3 {
  padding: 15px;
  font-size: 1.1rem;
  color: #444;
}

  /* ── SECTION COMMON ── */
  section { padding: 90px 80px; }

  .section-tag {
    font-size: 11px;
    font-weight: 600;
    letter-spacing: 3px;
    text-transform: uppercase;
    color: var(--gold);
    margin-bottom: 12px;
  }

  .section-title {
    font-family: 'Cormorant Garamond', serif;
    font-size: clamp(32px, 4vw, 52px);
    font-weight: 600;
    line-height: 1.15;
    color: var(--dark);
  }

  .section-title.light { color: var(--white); }

  .divider {
    width: 48px;
    height: 2px;
    background: var(--gold);
    margin: 20px 0;
  }

  /* ── WHY CHOOSE US ── */
  .why-us {
    background: linear-gradient(135deg, var(--cream) 0%, var(--cream2) 100%);
  }

  .why-header {
    display: flex;
    justify-content: space-between;
    align-items: flex-end;
    margin-bottom: 60px;
    flex-wrap: wrap;
    gap: 20px;
  }

  .why-cards {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    gap: 24px;
  }

  .why-card {
    background: var(--white);
    padding: 36px 28px;
    border-top: 3px solid transparent;
    transition: border-color 0.3s, transform 0.3s, box-shadow 0.3s;
    position: relative;
    overflow: hidden;
  }

  .why-card::before {
    content: '';
    position: absolute;
    bottom: 0; left: 0; right: 0;
    height: 0;
    background: linear-gradient(135deg, var(--gold) 0%, transparent 100%);
    opacity: 0.04;
    transition: height 0.3s;
  }

  .why-card:hover {
    border-top-color: var(--gold);
    transform: translateY(-6px);
    box-shadow: 0 20px 50px rgba(0,0,0,0.1);
  }

  .why-card:hover::before { height: 100%; }

  .why-icon {
    width: 52px;
    height: 52px;
    background: var(--gold);
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    margin-bottom: 22px;
    font-size: 22px;
  }

  .why-card h3 {
    font-family: 'Cormorant Garamond', serif;
    font-size: 20px;
    font-weight: 700;
    color: var(--dark);
    margin-bottom: 12px;
    letter-spacing: 0.3px;
  }

  .why-card p {
    font-size: 13.5px;
    color: var(--text-light);
    line-height: 1.75;
  }

  .portfolio-btns {
    display: flex;
    gap: 16px;
    margin-top: 50px;
    flex-wrap: wrap;
  }

  .btn-portfolio {
    padding: 12px 28px;
    border: 1.5px solid var(--gold);
    color: var(--gold);
    font-size: 13px;
    font-weight: 600;
    letter-spacing: 1px;
    text-transform: uppercase;
    background: transparent;
    cursor: pointer;
    border-radius: 2px;
    text-decoration: none;
    transition: all 0.2s;
  }

  .btn-portfolio:hover { background: var(--gold); color: var(--white); }

  /* ── SERVICES SHOWCASE ── */
  .services {
    padding: 0;
    display: grid;
    grid-template-columns: 1fr 1fr;
    min-height: 500px;
  }

  .service-card {
    position: relative;
    overflow: hidden;
    cursor: pointer;
  }

  .service-card img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    transition: transform 0.7s ease;
    min-height: 440px;
  }

  .service-card:hover img { transform: scale(1.07); }

  .service-overlay {
    position: absolute;
    inset: 0;
    background: linear-gradient(to top, rgba(17,16,16,0.85) 0%, rgba(17,16,16,0.3) 50%, transparent 100%);
    display: flex;
    flex-direction: column;
    justify-content: flex-end;
    padding: 40px;
    transition: background 0.3s;
  }

  .service-card:hover .service-overlay {
    background: linear-gradient(to top, rgba(17,16,16,0.9) 0%, rgba(17,16,16,0.5) 60%, rgba(184,155,110,0.1) 100%);
  }

  .service-tag {
    font-size: 10px;
    font-weight: 600;
    letter-spacing: 2.5px;
    text-transform: uppercase;
    color: var(--gold);
    margin-bottom: 8px;
  }

  .service-overlay h2 {
    font-family: 'Cormorant Garamond', serif;
    font-size: 34px;
    font-weight: 600;
    color: var(--white);
    margin-bottom: 16px;
    line-height: 1.2;
  }

  .service-link {
    display: inline-flex;
    align-items: center;
    gap: 8px;
    color: var(--gold-light);
    font-size: 12px;
    font-weight: 600;
    letter-spacing: 1.5px;
    text-transform: uppercase;
    text-decoration: none;
    border-bottom: 1px solid var(--gold);
    padding-bottom: 2px;
    transition: gap 0.2s, color 0.2s;
  }

  .service-link:hover { gap: 14px; color: var(--gold); }

  /* ── ABOUT ── */
  .about {
    background: var(--dark);
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 80px;
    align-items: center;
  }

  .about-text p {
    font-size: 14.5px;
    color: rgba(255,255,255,0.65);
    line-height: 1.9;
    margin-bottom: 18px;
  }

  .about-text p:first-of-type {
    font-family: 'Cormorant Garamond', serif;
    font-size: 20px;
    font-style: italic;
    color: rgba(255,255,255,0.8);
    line-height: 1.7;
  }

  .about-cta {
    margin-top: 32px;
    display: flex;
    gap: 14px;
    align-items: center;
  }

  .about-socials {
    display: flex;
    gap: 14px;
    margin-top: 32px;
  }

  .social-btn {
    width: 38px;
    height: 38px;
    border: 1px solid rgba(184,155,110,0.4);
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    color: var(--gold);
    font-size: 15px;
    text-decoration: none;
    transition: all 0.2s;
  }

  .social-btn:hover { background: var(--gold); color: var(--white); border-color: var(--gold); }

  .about-image {
    position: relative;
  }

  .about-image img {
    width: 100%;
    height: 480px;
    object-fit: cover;
    border-radius: 2px;
  }

  .about-image-badge {
    position: absolute;
    bottom: -24px;
    left: -24px;
    background: var(--gold);
    color: var(--white);
    padding: 24px 28px;
    font-family: 'Cormorant Garamond', serif;
  }

  .about-image-badge .num {
    font-size: 42px;
    font-weight: 700;
    line-height: 1;
  }

  .about-image-badge .label {
    font-size: 12px;
    letter-spacing: 1px;
    opacity: 0.9;
    margin-top: 4px;
  }

  /* ── CONTACT FORM ── */
  .contact-section {
    background: var(--cream2);
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 80px;
    align-items: start;
  }

  .form-group {
    margin-bottom: 18px;
  }

  .form-group label {
    display: block;
    font-size: 11px;
    font-weight: 600;
    letter-spacing: 1.5px;
    text-transform: uppercase;
    color: var(--text-light);
    margin-bottom: 8px;
  }

  .form-group input,
  .form-group select {
    width: 100%;
    padding: 12px 16px;
    border: 1.5px solid rgba(184,155,110,0.3);
    background: var(--white);
    font-family: 'DM Sans', sans-serif;
    font-size: 14px;
    color: var(--text);
    border-radius: 2px;
    outline: none;
    transition: border-color 0.2s;
    appearance: none;
  }

  .form-group input:focus,
  .form-group select:focus { border-color: var(--gold); }

  .contact-info-item {
    display: flex;
    align-items: center;
    gap: 14px;
    margin-bottom: 18px;
  }

  .contact-icon {
    width: 44px;
    height: 44px;
    background: var(--gold);
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    color: white;
    font-size: 17px;
    flex-shrink: 0;
  }

  .contact-info-item p { font-size: 14px; color: var(--text); line-height: 1.5; }
  .contact-info-item a { color: var(--text); text-decoration: none; }
  .contact-info-item a:hover { color: var(--gold); }

  /* ── PROCESS ── */
  .process {
    background: var(--dark);
    text-align: center;
    padding: 90px 80px;
  }

  .process-header { margin-bottom: 56px; }
  .process-header .divider { margin: 20px auto; }

  /* ── End-to-End Services Banner ── */
  .e2e-banner {
    display: inline-block;
    background: #c97c6e;
    color: #fff;
    font-family: 'Cormorant Garamond', serif;
    font-size: clamp(20px, 2.5vw, 30px);
    font-weight: 500;
    letter-spacing: 0.5px;
    padding: 16px 48px;
    border-radius: 6px;
    margin-bottom: 52px;
  }

  .e2e-services {
    display: flex;
    justify-content: center;
    gap: 48px;
    flex-wrap: wrap;
    margin-bottom: 72px;
  }

  .e2e-service {
    display: flex;
    flex-direction: column;
    align-items: center;
    gap: 14px;
    cursor: default;
  }

  .e2e-icon {
    width: 80px;
    height: 80px;
    display: flex;
    align-items: center;
    justify-content: center;
    border: 1.5px solid rgba(201,124,110,0.35);
    border-radius: 12px;
    background: rgba(201,124,110,0.07);
    transition: all 0.3s;
    font-size: 36px;
  }

  .e2e-icon svg {
    width: 44px;
    height: 44px;
    stroke: #c97c6e;
    fill: none;
    stroke-width: 1.5;
    stroke-linecap: round;
    stroke-linejoin: round;
  }

  .e2e-service:hover .e2e-icon {
    background: rgba(201,124,110,0.18);
    border-color: #c97c6e;
    transform: translateY(-4px);
    box-shadow: 0 10px 28px rgba(201,124,110,0.2);
  }

  .e2e-service span {
    font-size: 13.5px;
    font-weight: 500;
    color: rgba(255,255,255,0.75);
    letter-spacing: 0.3px;
  }

  /* ── Breeze divider ── */
  .breeze-divider {
    border: none;
    border-top: 1px solid rgba(255,255,255,0.08);
    margin: 0 auto 56px;
    max-width: 600px;
  }

  .breeze-title {
    font-family: 'Cormorant Garamond', serif;
    font-size: clamp(22px, 2.8vw, 34px);
    font-style: italic;
    font-weight: 500;
    color: var(--white);
    margin-bottom: 52px;
  }

  /* ── Journey flow ── */
  .journey-flow {
    display: flex;
    justify-content: center;
    align-items: flex-start;
    gap: 0;
    flex-wrap: wrap;
    margin-bottom: 72px;
  }

  .journey-step {
    display: flex;
    flex-direction: column;
    align-items: center;
    gap: 14px;
    position: relative;
    min-width: 100px;
  }

  .journey-icon {
    width: 72px;
    height: 72px;
    border-radius: 50%;
    background: rgba(201,124,110,0.1);
    border: 1.5px solid rgba(201,124,110,0.35);
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 28px;
    transition: all 0.3s;
    position: relative;
    z-index: 1;
  }

  .journey-icon svg {
    width: 32px;
    height: 32px;
    stroke: #c97c6e;
    fill: none;
    stroke-width: 1.5;
    stroke-linecap: round;
    stroke-linejoin: round;
  }

  .journey-step:hover .journey-icon {
    background: rgba(201,124,110,0.22);
    border-color: #c97c6e;
    transform: translateY(-4px);
    box-shadow: 0 10px 28px rgba(201,124,110,0.25);
  }

  .journey-step span {
    font-size: 12.5px;
    font-weight: 500;
    color: rgba(255,255,255,0.65);
    text-align: center;
    line-height: 1.4;
    max-width: 80px;
  }

  .journey-arrow {
    display: flex;
    align-items: center;
    padding: 0 6px;
    margin-top: 22px; /* align with icon centres */
    color: rgba(201,124,110,0.6);
    font-size: 22px;
  }

  /* ── Original 4-step numbered process ── */
  .process-steps-title {
    font-family: 'Cormorant Garamond', serif;
    font-size: clamp(20px, 2vw, 26px);
    font-weight: 600;
    color: rgba(255,255,255,0.5);
    letter-spacing: 2px;
    text-transform: uppercase;
    font-size: 11px;
    margin-bottom: 36px;
  }

  .process-steps {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    gap: 0;
    position: relative;
    margin-top: 20px;
  }

  .process-steps::before {
    content: '';
    position: absolute;
    top: 36px;
    left: 12.5%;
    right: 12.5%;
    height: 1px;
    background: linear-gradient(90deg, var(--gold) 0%, rgba(184,155,110,0.3) 100%);
  }

  .process-step {
    padding: 0 28px;
    position: relative;
  }

  .step-num {
    width: 72px;
    height: 72px;
    border: 2px solid var(--gold);
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    margin: 0 auto 28px;
    background: var(--dark);
    position: relative;
    z-index: 1;
    font-family: 'Cormorant Garamond', serif;
    font-size: 28px;
    font-weight: 700;
    color: var(--gold);
    transition: all 0.3s;
  }

  .process-step:hover .step-num {
    background: var(--gold);
    color: var(--white);
  }

  .process-step h3 {
    font-family: 'Cormorant Garamond', serif;
    font-size: 22px;
    font-weight: 600;
    color: var(--white);
    margin-bottom: 14px;
  }

  .process-step p {
    font-size: 13.5px;
    color: rgba(255,255,255,0.55);
    line-height: 1.75;
  }

  /* ── Process responsive ── */
  @media (max-width: 768px) {
    .process { padding: 56px 24px; }
    .e2e-services { gap: 28px; }
    .e2e-icon { width: 64px; height: 64px; }
    .e2e-icon svg { width: 34px; height: 34px; }
    .journey-flow { gap: 4px; }
    .journey-icon { width: 58px; height: 58px; }
    .journey-icon svg { width: 26px; height: 26px; }
    .journey-step span { font-size: 11px; max-width: 64px; }
    .journey-arrow { font-size: 16px; margin-top: 18px; padding: 0 2px; }
    .process-steps { grid-template-columns: 1fr 1fr; }
    .process-steps::before { display: none; }
  }
  @media (max-width: 480px) {
    .journey-flow { gap: 2px; }
    .journey-icon { width: 50px; height: 50px; }
    .journey-arrow { display: none; }
    .journey-step { min-width: 72px; }
  }

  /* ── TESTIMONIALS ── */
  .testimonials {
    background: var(--cream);
    text-align: center;
  }

  .testimonials .divider { margin: 20px auto; }

  .testimonials-grid {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 28px;
    margin-top: 52px;
  }

  .testimonial-card {
    background: var(--white);
    padding: 36px 30px;
    border-bottom: 3px solid transparent;
    text-align: left;
    transition: border-color 0.3s, box-shadow 0.3s;
    position: relative;
  }

  .testimonial-card::before {
    content: '"';
    font-family: 'Cormorant Garamond', serif;
    font-size: 80px;
    color: var(--gold);
    opacity: 0.2;
    position: absolute;
    top: 16px;
    left: 24px;
    line-height: 1;
  }

  .testimonial-card:hover {
    border-bottom-color: var(--gold);
    box-shadow: 0 12px 40px rgba(0,0,0,0.08);
  }

  .testimonial-card p {
    font-size: 14.5px;
    color: var(--text);
    line-height: 1.8;
    margin-bottom: 24px;
    position: relative;
    z-index: 1;
  }

  .testimonial-author {
    display: flex;
    align-items: center;
    gap: 12px;
  }

  .author-avatar {
    width: 46px;
    height: 46px;
    background: var(--gold);
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    font-family: 'Cormorant Garamond', serif;
    font-size: 20px;
    font-weight: 700;
    color: var(--white);
  }

  .author-name {
    font-weight: 600;
    font-size: 14px;
    color: var(--dark);
  }

  .author-company {
    font-size: 12px;
    color: var(--text-light);
    letter-spacing: 0.5px;
  }

  .stars { color: var(--gold); font-size: 14px; margin-bottom: 14px; }

  /* ── GALLERY ── */
  .gallery {
    background: var(--dark2);
    padding-bottom: 0;
  }

  .gallery-header { margin-bottom: 42px; }

  .gallery-grid {
    display: grid;
    grid-template-columns: repeat(6, 1fr);
    grid-template-rows: repeat(4, 180px);
    gap: 6px;
  }

  .gallery-item {
    overflow: hidden;
    position: relative;
    cursor: pointer;
  }

  .gallery-item:nth-child(1) { grid-column: 1/3; grid-row: 1/3; }
  .gallery-item:nth-child(2) { grid-column: 3/5; grid-row: 1/2; }
  .gallery-item:nth-child(3) { grid-column: 5/7; grid-row: 1/3; }
  .gallery-item:nth-child(4) { grid-column: 3/4; grid-row: 2/3; }
  .gallery-item:nth-child(5) { grid-column: 4/5; grid-row: 2/3; }
  .gallery-item:nth-child(6) { grid-column: 1/3; grid-row: 3/5; }
  .gallery-item:nth-child(7) { grid-column: 3/5; grid-row: 3/4; }
  .gallery-item:nth-child(8) { grid-column: 5/6; grid-row: 3/4; }
  .gallery-item:nth-child(9) { grid-column: 6/7; grid-row: 3/4; }
  .gallery-item:nth-child(10) { grid-column: 3/5; grid-row: 4/5; }
  .gallery-item:nth-child(11) { grid-column: 5/7; grid-row: 4/5; }

  .gallery-item img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    transition: transform 0.5s ease, filter 0.5s ease;
    filter: brightness(0.85);
  }

  .gallery-item:hover img {
    transform: scale(1.08);
    filter: brightness(1);
  }

  .gallery-item-overlay {
    position: absolute;
    inset: 0;
    background: rgba(184,155,110,0);
    transition: background 0.3s;
    display: flex;
    align-items: center;
    justify-content: center;
  }

  .gallery-item:hover .gallery-item-overlay { background: rgba(184,155,110,0.15); }

  /* ── CLIENTS ── */
  .clients {
    background: var(--dark);
    text-align: center;
  }

  .clients .divider { margin: 20px auto; }

  .clients-grid {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    gap: 28px;
    margin-top: 50px;
  }

  .client-logo {
    width: 120px;
    height: 120px;
    background: rgba(255,255,255,0.05);
    border: 1px solid rgba(184,155,110,0.2);
    border-radius: 2px;
    display: flex;
    align-items: center;
    justify-content: center;
    transition: all 0.3s;
    padding: 14px;
  }

  .client-logo:hover {
    background: rgba(184,155,110,0.1);
    border-color: var(--gold);
    transform: translateY(-4px);
  }

  .client-logo-text {
    font-family: 'Cormorant Garamond', serif;
    font-size: 16px;
    font-weight: 700;
    color: rgba(255,255,255,0.6);
    text-align: center;
    letter-spacing: 0.5px;
    line-height: 1.3;
  }

  /* ── FAQ ── */
  .faq { background: var(--cream); }

  .faq-header { margin-bottom: 50px; }

  .faq-item {
    border-bottom: 1px solid rgba(184,155,110,0.25);
    overflow: hidden;
  }

  .faq-q {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 22px 0;
    cursor: pointer;
    font-family: 'Cormorant Garamond', serif;
    font-size: 20px;
    font-weight: 600;
    color: var(--dark);
    transition: color 0.2s;
    gap: 20px;
  }

  .faq-q:hover { color: var(--gold); }

  .faq-icon {
    width: 32px;
    height: 32px;
    border: 1.5px solid var(--gold);
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    color: var(--gold);
    font-size: 18px;
    flex-shrink: 0;
    transition: all 0.3s;
    font-weight: 300;
  }

  .faq-item.open .faq-icon {
    background: var(--gold);
    color: var(--white);
    transform: rotate(45deg);
  }

  .faq-a {
    max-height: 0;
    overflow: hidden;
    transition: max-height 0.4s ease, padding 0.3s;
  }

  .faq-item.open .faq-a { max-height: 200px; }

  .faq-a p {
    font-size: 14.5px;
    color: var(--text-light);
    line-height: 1.8;
    padding-bottom: 22px;
  }

  /* ── FOOTER ── */
  footer {
    background: var(--dark);
    padding: 70px 80px 0;
  }

  .footer-top {
    display: grid;
    grid-template-columns: 2fr 1fr 1fr 1fr;
    gap: 60px;
    padding-bottom: 50px;
    border-bottom: 1px solid rgba(255,255,255,0.08);
  }

  .footer-brand h3 {
    font-family: 'Cormorant Garamond', serif;
    font-size: 26px;
    font-weight: 700;
    color: var(--white);
    margin-bottom: 16px;
  }

  .footer-brand h3 span { color: var(--gold); }

  .footer-brand p {
    font-size: 13.5px;
    color: rgba(255,255,255,0.5);
    line-height: 1.8;
    margin-bottom: 24px;
  }

  .footer-socials { display: flex; gap: 10px; }

  .footer-social {
    width: 36px;
    height: 36px;
    border: 1px solid rgba(184,155,110,0.35);
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    color: var(--gold);
    font-size: 14px;
    text-decoration: none;
    transition: all 0.2s;
  }

  .footer-social:hover { background: var(--gold); color: var(--white); border-color: var(--gold); }

  .footer-col h4 {
    font-size: 11px;
    font-weight: 700;
    letter-spacing: 2.5px;
    text-transform: uppercase;
    color: var(--gold);
    margin-bottom: 22px;
  }

  .footer-col ul { list-style: none; }

  .footer-col ul li { margin-bottom: 12px; }

  .footer-col ul li a {
    color: rgba(255,255,255,0.55);
    text-decoration: none;
    font-size: 13.5px;
    transition: color 0.2s;
  }

  .footer-col ul li a:hover { color: var(--gold); }

  .footer-contact-item {
    display: flex;
    gap: 12px;
    margin-bottom: 16px;
  }

  .footer-contact-item span:first-child {
    color: var(--gold);
    font-size: 15px;
    flex-shrink: 0;
    margin-top: 1px;
  }

  .footer-contact-item a,
  .footer-contact-item p {
    color: rgba(255,255,255,0.55);
    font-size: 13px;
    text-decoration: none;
    line-height: 1.6;
  }

  .footer-contact-item a:hover { color: var(--gold); }

  .footer-bottom {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 22px 0;
    flex-wrap: wrap;
    gap: 12px;
  }

  .footer-bottom p {
    font-size: 12px;
    color: rgba(255,255,255,0.3);
    letter-spacing: 0.5px;
  }

  .footer-bottom a { color: var(--gold); text-decoration: none; }

  /* ── FLOATING BTN ── */
  .float-whatsapp {
    position: fixed;
    bottom: 28px;
    right: 28px;
    z-index: 9999;
    width: 56px;
    height: 56px;
    background: #25d366;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    color: white;
    font-size: 26px;
    box-shadow: 0 6px 24px rgba(37,211,102,0.45);
    text-decoration: none;
    animation: pulse 2.5s infinite;
    transition: transform 0.2s;
  }

  .float-whatsapp:hover { transform: scale(1.1); }

  @keyframes pulse {
    0%, 100% { box-shadow: 0 6px 24px rgba(37,211,102,0.45); }
    50% { box-shadow: 0 6px 40px rgba(37,211,102,0.7); }
  }

  /* ── RESPONSIVE ── */
  @media (max-width: 1024px) {
    section { padding: 70px 40px; }
    nav { padding: 0 32px; }
    .hero-content { padding: 60px 40px 32px; }
    .hero-stats { padding: 28px 40px 36px; }
    .why-cards { grid-template-columns: repeat(2, 1fr); }
    .about, .contact-section { grid-template-columns: 1fr; gap: 48px; }
    .footer-top { grid-template-columns: 1fr 1fr; }
    .gallery-grid { grid-template-columns: repeat(3, 1fr); grid-template-rows: auto; }
    .gallery-item { grid-column: auto !important; grid-row: auto !important; height: 220px; }
  }

  @media (max-width: 768px) {
    section { padding: 52px 20px; }
    nav { padding: 0 16px; height: 60px; }
    .nav-logo img { height: 40px;  }
    /* DO NOT hide nav-links here — hamburger JS handles it */
    .hero { align-items: stretch; min-height: 100svh; }
    .hero-content { padding: 90px 20px 28px; text-align: left; max-width: 100%; }
    .hero p { margin-left: 0; }
    .hero-ctas { justify-content: flex-start; gap: 10px; flex-wrap: wrap; }
    .hero h1 { font-size: clamp(30px, 7vw, 48px); margin-bottom: 16px; }
    .hero p { font-size: 14px; margin-bottom: 28px; }
    .btn-primary, .btn-outline { padding: 12px 20px; font-size: 12px; flex: 1; min-width: 130px; text-align: center; }
    .hero-stats {
      padding: 20px 20px 28px;
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 12px;
      border-top: 1px solid rgba(255,255,255,0.1);
    }
    .hero-stat {
      padding: 12px 14px;
      border-right: none !important;
      background: rgba(255,255,255,0.06);
      border-radius: 6px;
    }
    .hero-stat-num { font-size: 26px; }
    .hero-stat-label { font-size: 9px; }
    .why-cards { grid-template-columns: 1fr; }
    .services { grid-template-columns: 1fr; }
    .process-steps { grid-template-columns: 1fr 1fr; }
    .process-steps::before { display: none; }
    .testimonials-grid { grid-template-columns: 1fr; }
    .blogs-grid { grid-template-columns: 1fr; }
    .footer-top { grid-template-columns: 1fr; gap: 36px; }
    footer { padding: 50px 24px 0; }
    .gallery-grid { grid-template-columns: repeat(2, 1fr); }
  }

  @media (max-width: 480px) {
    nav { padding: 0 14px; }
    .nav-logo img { height: 36px;  }
    .hero-content { padding: 80px 16px 24px; }
    .hero-stats { grid-template-columns: 1fr 1fr; padding: 14px 14px 20px; }
    .btn-primary, .btn-outline { flex: 1; min-width: 120px; }
  }

  /* ══════════════════════════════════════
     HERO SLIDER
  ══════════════════════════════════════ */

  /* The slider sits in place of the old hero-bg */
  .hero-slider {
    position: absolute;
    inset: 0;
    z-index: 0;
    overflow: hidden;
  }

  /* Each slide (image OR video) */
  .hero-slide {
    position: absolute;
    inset: 0;
    opacity: 0;
    transition: opacity 1.4s ease;
    will-change: opacity;
  }

  .hero-slide.active { opacity: 1; }

  /* Shared overlay gradient so text stays readable */
  .hero-slide::after {
    content: '';
    position: absolute;
    inset: 0;
    background: linear-gradient(
      135deg,
      rgba(17,16,16,0.88) 0%,
      rgba(17,16,16,0.55) 55%,
      rgba(17,16,16,0.25) 100%
    );
  }

  /* Image slides */
  .hero-slide img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    animation: sliderZoom 8s ease-in-out forwards;
  }

  /* Video slides */
  .hero-slide video {
    width: 100%;
    height: 100%;
    object-fit: cover;
    display: block;
  }

  /* Ken-Burns zoom on each active image */
  @keyframes sliderZoom {
    from { transform: scale(1); }
    to   { transform: scale(1.07); }
  }

  /* Restart zoom animation each time slide becomes active */
  .hero-slide.active img { animation: sliderZoom 8s ease-in-out forwards; }

  /* ── Dot indicators ── */
  .slider-dots {
    position: absolute;
    bottom: 130px;
    left: 50%;
    transform: translateX(-50%);
    z-index: 3;
    display: flex;
    gap: 10px;
    align-items: center;
  }

  .slider-dot {
    width: 8px;
    height: 8px;
    border-radius: 50%;
    background: rgba(255,255,255,0.35);
    border: 1.5px solid rgba(255,255,255,0.5);
    cursor: pointer;
    transition: all 0.3s;
    padding: 0;
  }

  .slider-dot.active {
    background: var(--gold);
    border-color: var(--gold);
    width: 26px;
    border-radius: 4px;
  }

  /* ── Prev / Next arrows ── */
  .slider-arrow {
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    z-index: 3;
    background: rgba(184,155,110,0.18);
    border: 1.5px solid rgba(184,155,110,0.5);
    color: var(--gold);
    width: 46px;
    height: 46px;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 18px;
    cursor: pointer;
    transition: all 0.25s;
    line-height: 1;
  }

  .slider-arrow:hover {
    background: var(--gold);
    color: var(--dark);
    border-color: var(--gold);
  }

  .slider-arrow.prev { left: 28px; }
  .slider-arrow.next { right: 28px; }

  /* ── Progress bar ── */
  .slider-progress {
    position: absolute;
    bottom: 0;
    left: 0;
    height: 3px;
    background: var(--gold);
    z-index: 3;
    width: 0%;
    transition: width 0s linear;
  }

  .slider-progress.running {
    transition: width 5s linear;
    width: 100%;
  }

  @media (max-width: 768px) {
    .slider-arrow { display: none; }
    .slider-dots { bottom: 100px; }
  }
</style>
</head>
<body>

<!-- NAVBAR -->
<nav>
  <a href="#home" class="nav-logo">
    <img src="images/Highrise-Logo.png" alt="High Rise Interiors Logo">
  </a>

  <ul class="nav-links" id="navLinks">
    <li><a href="#home">Home</a></li>
    <li><a href="#portfolio">Portfolio</a></li>
    <li><a href="#about">About Us</a></li>
    <li><a href="#footer">Contact Us</a></li>
    <li><a href="blog.html">Blogs</a></li>
  </ul>

  <a href="#footer" class="btn-quote" style="text-decoration:none;">Book Consultant</a>

  <button class="hamburger" id="hamburger" aria-label="Toggle menu">
    <span></span><span></span><span></span>
  </button>
</nav>

<!-- HERO -->
<section class="hero" id="home">

  <!-- ══ SLIDER ══ -->
  <div class="hero-slider" id="heroSlider">

    <!-- Slide 1 — Image -->
    <div class="hero-slide active">
      <img src="./images/WhatsApp Image 2026-03-11 at 18.35.48.jpeg" alt="Luxury Living Room"/>
    </div>

    <!-- Slide 2 — Image -->
    <div class="hero-slide">
      <img src="./images/WhatsApp Image 2026-03-11 at 18.35.48 (1).jpeg" alt="Elegant Living Room"/>
    </div>

    <!-- Slide 3 — Image -->
    <div class="hero-slide">
      <img src="./images/bed-room.jpg" alt="Premium Bedroom"/>
    </div>

    <!-- Slide 6 — Video (add your video file to ./images/ folder) -->
    <!--
    <div class="hero-slide">
      <video autoplay muted loop playsinline preload="auto">
      <source src="images/IMG_0015.mp4" type="video/mp4">
      </video>
    </div>
    -->

    <!-- Prev / Next arrows -->
    <button class="slider-arrow prev" id="sliderPrev" aria-label="Previous slide">&#8592;</button>
    <button class="slider-arrow next" id="sliderNext" aria-label="Next slide">&#8594;</button>

    <!-- Dot indicators — generated by JS -->
    <div class="slider-dots" id="sliderDots"></div>

    <!-- Bottom progress bar -->
    <div class="slider-progress" id="sliderProgress"></div>

  </div>
  <!-- ══ END SLIDER ══ -->
  <div class="hero-content">
    <h1>Highrise Interior Economy made luxoury</h1>
    <p>At High Rise Interior, we have been delivering innovative, functional, and beautiful spaces since 2019. Whether it's residential or commercial, our focus is always on trusted turnkey services and on-time execution.</p>
    <div class="hero-ctas">
      <a href="#footer" class="btn-primary">Book a Consultant</a>
      <a href="#portfolio" class="btn-outline">View Our Work</a>
    </div>
  </div>
  <div class="hero-stats">
    <div class="hero-stat">
      <div class="hero-stat-num">100+</div>
      <div class="hero-stat-label">Homes Delivered</div>
    </div>
    <div class="hero-stat">
      <div class="hero-stat-num">2M+</div>
      <div class="hero-stat-label">Sq. Ft. Completed</div>
    </div>
    <div class="hero-stat">
      <div class="hero-stat-num">100+</div>
      <div class="hero-stat-label">Vendor Network</div>
    </div>
    <div class="hero-stat">
      <div class="hero-stat-num">Since</div>
      <div class="hero-stat-label">2019 · 7 Years</div>
    </div>
  </div>
</section>

<!-- Portfolio Section -->
<section id="portfolio" class="portfolio-section">
  <div class="container">
    <h2 class="section-title">Our Portfolio Projects</h2>
    <div class="portfolio-grid">

      <div class="portfolio-item">
        <a href="https://photos.app.goo.gl/Q8DGFRpJsspxU7s76" target="_blank">
          <img src="./images/WhatsApp Image 2026-03-11 at 18.35.48.jpeg" alt="EIPL T1 703">
          <div class="portfolio-overlay"><span>View Project</span></div>
        </a>
        <h3>Tamarind A1008</h3>
      </div>

      <div class="portfolio-item">
        <a href="https://photos.app.goo.gl/NRfdg71fbjUkQT6g9" target="_blank">
          <img src="./images/s13.jpg" alt="EIPL T4 406">
          <div class="portfolio-overlay"><span>View Project</span></div>
        </a>
        <h3>EIPL T4 406</h3>
      </div>

      <div class="portfolio-item">
        <a href="https://photos.app.goo.gl/WZKbPPrdA9yxkAf87" target="_blank">
          <img src="./images/s14.jpg" alt="EIPL T10 206">
          <div class="portfolio-overlay"><span>View Project</span></div>
        </a>
        <h3>EIPL T10 206</h3>
      </div>

      <div class="portfolio-item">
        <a href="https://photos.app.goo.gl/8ujs2UNymxcqUDXe9" target="_blank">
          <img src="./images/IMG-2400-2401.jpg" alt="EIPL T1 1102">
          <div class="portfolio-overlay"><span>View Project</span></div>
        </a>
        <h3>EIPL T1 1102</h3>
      </div>

      <div class="portfolio-item">
        <a href="https://photos.app.goo.gl/TPbQUCPGW5Jbz53o7" target="_blank">
          <img src="./images/IMG_2552.jpg" alt="EIPL T1 1102">
          <div class="portfolio-overlay"><span>View Project</span></div>
        </a>
        <h3>EIPL T1 703</h3>
      </div>
    </div>
  </div>
</section>

<!-- WHY CHOOSE US -->
<section class="why-us" id="why-choose-us">
  <div class="why-header">
    <div>
      <div class="section-tag">✦ Our Strengths</div>
      <h2 class="section-title">Why Choose Us</h2>
      <div class="divider"></div>
    </div>
  </div>
  <div class="why-cards">
    <div class="why-card">
      <div class="why-icon">🏆</div>
      <h3>Trusted by 100+ Clients</h3>
      <p>Being trusted by such a diverse and substantial client base establishes HighRise Interior Designs as a reliable partner for interior design, ensuring excellence and customer satisfaction.</p>
    </div>
    <div class="why-card">
      <div class="why-icon">🔨</div>
      <h3>Local Labour Support</h3>
      <p>Supporting local labor is at the heart of our operations. By collaborating with skilled local craftsmen, we ensure high-quality workmanship while contributing to community growth.</p>
    </div>
    <div class="why-card">
      <div class="why-icon">🎨</div>
      <h3>Experienced Designers</h3>
      <p>Our team of experienced designers brings creativity, innovation, and expertise to every project — crafting spaces that are visually stunning and tailored to your needs.</p>
    </div>
    <div class="why-card">
      <div class="why-icon">🏗️</div>
      <h3>100+ Vendor Support</h3>
      <p>With access to 100+ trusted vendors, we ensure seamless sourcing of top-quality materials, furniture, and decor — providing diverse options and timely delivery.</p>
    </div>
  </div>
 </section>

<!-- PROCESS -->
<section class="process">
  <div class="process-header">
    <div class="section-tag">✦ How We Work</div>
    <h2 class="section-title light">Interior Design Process</h2>
    <div class="divider"></div>
    <p style="color:rgba(255,255,255,0.5);font-size:14px;margin-top:12px;">From concept to completion, we transform your vision into reality</p>
  </div>

  <!-- END-TO-END BANNER -->
  <div class="e2e-banner">End-to-End Interior Solution</div>

  <!-- 4 SERVICE ICONS -->
  <div class="e2e-services">

    <div class="e2e-service">
      <div class="e2e-icon">
        <svg viewBox="0 0 48 48" xmlns="http://www.w3.org/2000/svg">
          <!-- False Ceiling: ceiling panel with lights -->
          <rect x="6" y="8" width="36" height="6" rx="2"/>
          <line x1="14" y1="14" x2="14" y2="20"/>
          <line x1="24" y1="14" x2="24" y2="20"/>
          <line x1="34" y1="14" x2="34" y2="20"/>
          <ellipse cx="14" cy="22" rx="3" ry="2"/>
          <ellipse cx="24" cy="22" rx="3" ry="2"/>
          <ellipse cx="34" cy="22" rx="3" ry="2"/>
          <path d="M10 30 Q14 26 18 30 Q22 34 26 30 Q30 26 34 30 Q38 34 42 30"/>
        </svg>
      </div>
      <span>False Ceiling</span>
    </div>

    <div class="e2e-service">
      <div class="e2e-icon">
        <svg viewBox="0 0 48 48" xmlns="http://www.w3.org/2000/svg">
          <!-- Wood Work: cabinet with drawers -->
          <rect x="6" y="10" width="16" height="28" rx="2"/>
          <rect x="26" y="10" width="16" height="28" rx="2"/>
          <line x1="6" y1="24" x2="22" y2="24"/>
          <circle cx="15" cy="20" r="1.5"/>
          <circle cx="15" cy="28" r="1.5"/>
          <line x1="26" y1="20" x2="42" y2="20"/>
          <line x1="26" y1="30" x2="42" y2="30"/>
          <circle cx="35" cy="17" r="1.5"/>
          <circle cx="35" cy="25" r="1.5"/>
          <circle cx="35" cy="33" r="1.5"/>
        </svg>
      </div>
      <span>Wood Work</span>
    </div>

    <div class="e2e-service">
      <div class="e2e-icon">
        <svg viewBox="0 0 48 48" xmlns="http://www.w3.org/2000/svg">
          <!-- Wall Paints: paint roller -->
          <rect x="10" y="10" width="22" height="12" rx="3"/>
          <rect x="12" y="12" width="18" height="8" rx="2"/>
          <line x1="24" y1="22" x2="24" y2="30"/>
          <path d="M20 30 L28 30 L26 38 L22 38 Z"/>
          <circle cx="36" cy="14" r="3"/>
          <line x1="33" y1="14" x2="32" y2="14"/>
        </svg>
      </div>
      <span>Wall Paints</span>
    </div>

    <div class="e2e-service">
      <div class="e2e-icon">
        <svg viewBox="0 0 48 48" xmlns="http://www.w3.org/2000/svg">
          <!-- Bathrooms: bathtub -->
          <path d="M8 28 Q8 36 16 36 L32 36 Q40 36 40 28"/>
          <rect x="6" y="26" width="36" height="4" rx="2"/>
          <path d="M12 26 L12 16 Q12 10 18 10 L20 10"/>
          <circle cx="20" cy="10" r="2"/>
          <line x1="16" y1="36" x2="14" y2="42"/>
          <line x1="32" y1="36" x2="34" y2="42"/>
          <path d="M36 8 Q40 8 40 12 L40 26"/>
        </svg>
      </div>
      <span>Bathrooms</span>
    </div>

    <div class="e2e-service">
      <div class="e2e-icon">
        <svg viewBox="0 0 48 48" xmlns="http://www.w3.org/2000/svg">
          <!-- Flooring -->
          <rect x="6" y="30" width="36" height="4" rx="1"/>
          <rect x="6" y="34" width="36" height="2" rx="1" style="opacity:0.4"/>
          <line x1="18" y1="30" x2="18" y2="34"/>
          <line x1="30" y1="30" x2="30" y2="34"/>
          <rect x="10" y="22" width="10" height="8"/>
          <rect x="20" y="22" width="10" height="8"/>
          <rect x="30" y="22" width="8" height="8"/>
          <rect x="10" y="14" width="14" height="8"/>
          <rect x="24" y="14" width="14" height="8"/>
        </svg>
      </div>
      <span>Flooring</span>
    </div>

    <div class="e2e-service">
      <div class="e2e-icon">
        <svg viewBox="0 0 48 48" xmlns="http://www.w3.org/2000/svg">
          <!-- Electrical -->
          <path d="M26 8 L18 26 L24 26 L22 40 L30 22 L24 22 Z"/>
        </svg>
      </div>
      <span>Electrical</span>
    </div>

  </div>

  <!-- BREEZE DIVIDER -->
  <hr class="breeze-divider"/>
  <p class="breeze-title">Working with us is a breeze</p>

  <!-- JOURNEY FLOW -->
  <div class="journey-flow">

    <div class="journey-step">
      <div class="journey-icon">
        <svg viewBox="0 0 48 48" xmlns="http://www.w3.org/2000/svg">
          <!-- Meet Designer: person at desk -->
          <circle cx="18" cy="13" r="5"/>
          <path d="M8 34 Q8 24 18 24 Q28 24 28 34"/>
          <rect x="30" y="22" width="12" height="10" rx="2"/>
          <line x1="32" y1="25" x2="40" y2="25"/>
          <line x1="32" y1="28" x2="38" y2="28"/>
          <line x1="36" y1="32" x2="36" y2="36"/>
          <line x1="30" y1="36" x2="42" y2="36"/>
        </svg>
      </div>
      <span>Meet Designer</span>
    </div>

    <div class="journey-arrow">&#8594;</div>

    <div class="journey-step">
      <div class="journey-icon">
        <svg viewBox="0 0 48 48" xmlns="http://www.w3.org/2000/svg">
          <!-- Get Free Quote: document with tick -->
          <rect x="10" y="6" width="28" height="36" rx="3"/>
          <line x1="16" y1="16" x2="32" y2="16"/>
          <line x1="16" y1="22" x2="32" y2="22"/>
          <line x1="16" y1="28" x2="26" y2="28"/>
          <polyline points="22,34 25,38 33,30"/>
        </svg>
      </div>
      <span>Get Free Quote</span>
    </div>

    <div class="journey-arrow">&#8594;</div>

    <div class="journey-step">
      <div class="journey-icon">
        <svg viewBox="0 0 48 48" xmlns="http://www.w3.org/2000/svg">
          <!-- Place Order: handshake -->
          <path d="M6 28 L14 20 L20 24 L28 16 L34 20"/>
          <path d="M34 20 L42 28"/>
          <path d="M20 24 L24 36 L28 34"/>
          <circle cx="14" cy="14" r="4"/>
          <circle cx="34" cy="14" r="4"/>
        </svg>
      </div>
      <span>Place Order</span>
    </div>

    <div class="journey-arrow">&#8594;</div>

    <div class="journey-step">
      <div class="journey-icon">
        <svg viewBox="0 0 48 48" xmlns="http://www.w3.org/2000/svg">
          <!-- Execution: hammer + wrench -->
          <line x1="10" y1="38" x2="28" y2="20"/>
          <path d="M28 20 L32 14 L36 16 L30 22 Z"/>
          <rect x="26" y="18" width="6" height="4" rx="1" transform="rotate(-45 29 20)"/>
          <path d="M30 28 L38 36 Q40 38 38 40 Q36 42 34 40 L26 32"/>
          <line x1="32" y1="30" x2="36" y2="26"/>
        </svg>
      </div>
      <span>Execution Begins</span>
    </div>

    <div class="journey-arrow">&#8594;</div>

    <div class="journey-step">
      <div class="journey-icon">
        <svg viewBox="0 0 48 48" xmlns="http://www.w3.org/2000/svg">
          <!-- Move In: house with key -->
          <path d="M8 24 L24 10 L40 24"/>
          <rect x="14" y="24" width="20" height="18" rx="1"/>
          <rect x="20" y="32" width="8" height="10" rx="1"/>
          <circle cx="32" cy="20" r="3"/>
          <line x1="32" y1="23" x2="32" y2="28"/>
          <line x1="30" y1="27" x2="34" y2="27"/>
        </svg>
      </div>
      <span>Move In</span>
    </div>

  </div>

  <!-- ORIGINAL 4-STEP NUMBERED PROCESS -->
  <p class="process-steps-title">✦ OUR DESIGN METHODOLOGY ✦</p>
  <div class="process-steps">
    <div class="process-step">
      <div class="step-num">01</div>
      <h3>Design Brief</h3>
      <p>Our journey begins with a detailed requirement meeting where we take the time to understand your vision, needs, and preferences.</p>
    </div>
    <div class="process-step">
      <div class="step-num">02</div>
      <h3>Estimation</h3>
      <p>We present you with our ideas and an approximate estimate, giving a clear understanding of the design concept and the budget.</p>
    </div>
    <div class="process-step">
      <div class="step-num">03</div>
      <h3>Build</h3>
      <p>Once designs are finalized, we move to execution. Our team meticulously brings the design to life, ensuring every detail is crafted to perfection.</p>
    </div>
    <div class="process-step">
      <div class="step-num">04</div>
      <h3>Handover</h3>
      <p>We celebrate with a housewarming and hand over all keys, ensuring you are completely satisfied with your new space.</p>
    </div>
  </div>
</section>

<!-- ABOUT -->
<section class="about" id="about">
  <div class="about-text">
    <div class="section-tag">✦ Our Story</div>
    <h2 class="section-title light">About HighRise Interior<br/>Designs</h2>
    <div class="divider"></div>
    <p>Founded in 2019, HighRise Interior Designs has become the best interior designer firm in Hyderabad, known for its commitment to quality, reliability, and innovation.</p>
    <p>Over the years, we have grown to complete over 100+ projects across Hyderabad, Bengaluru, and Vijayawada — with a team of over 100 employees dedicated to delivering transformative interiors.</p>
    <div class="about-socials">
      <a href="https://www.facebook.com/HighRise Interiordesigns" class="social-btn" title="Facebook">f</a>
      <a href="https://www.instagram.com/highrise_interior?igsh=YTB3amw2emQ3cjgz" class="social-btn" title="Instagram">📷</a>
      <a href="https://www.youtube.com/user/HighRiseInteriordesigns" class="footer-social">▶</a>
    </div>
    <div class="about-cta">
      <a href="#" class="btn-primary">Know More</a>
    </div>
  </div>
  <div class="about-image">
    <img src="./images/IMG-2297.png" alt="Founder - Lalith Vutpala, CEO"/>
    <div class="about-image-badge">
      <div class="num">7</div>
      <div class="label">Years of Excellence</div>
    </div>
  </div>
</section>


<!-- TESTIMONIALS -->
<section class="testimonials">
  <div class="section-tag">✦ Client Reviews</div>
  <h2 class="section-title">Testimonials</h2>
  <div class="divider"></div>
  <div class="testimonials-grid">
    <div class="testimonial-card">
      <div class="stars">★★★★★</div>
      <p>HighRise Interior did a fantastic job. Now we are enjoying our Home space. Thanks to the HR team for the excellent work and timely delivery.</p>
      <div class="testimonial-author">
        <div class="author-avatar">S</div>
        <div>
          <div class="author-name">Mr. Suresh Babu </div>
          <div class="author-company">VillaOwner, Hyderabad</div>
        </div>
      </div>
    </div>
    <div class="testimonial-card">
      <div class="stars">★★★★★</div>
      <p>Excellent work! The team is very professional and creative. They understood our requirements and delivered beyond expectations. The space looks stunning and functional.</p>
      <div class="testimonial-author">
        <div class="author-avatar">R</div>
        <div>
          <div class="author-name">Sai Kiran</div>
          <div class="author-company">Homeowners, Hyderabad</div>
        </div>
      </div>
    </div>
    <div class="testimonial-card">
      <div class="stars">★★★★★</div>
      <p>HighRise Interior transformed our home beautifully. From design to delivery, everything was handled professionally. We are so happy with the modular kitchen and living room design.</p>
      <div class="testimonial-author">
        <div class="author-avatar">P</div>
        <div>
          <div class="author-name">Koteswara Rao &amp; Parvathi </div>
          <div class="author-company">Homeowners, Hyderabad</div>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- GALLERY -->
<section class="gallery">
  <div class="gallery-header">
    <div class="section-tag" style="color:var(--gold)">✦ Portfolio</div>
    <h2 class="section-title light">Glimpse</h2>
    <div class="divider"></div>
    <p style="color:rgba(255,255,255,0.45);font-size:13.5px;margin-top:10px;">At High Rise Interior, every space deserves thoughtful attention and expert design that reflects your vision and lifestyle.</p>
  </div>
  <div class="gallery-grid">
    <div class="gallery-item"><div class="gallery-item-overlay"></div><img src="./images/s7.jpg" alt="Reception"/></div>
    <div class="gallery-item"><div class="gallery-item-overlay"></div><img src="./images/s2.jpg" alt="Living Room"/></div>
    <div class="gallery-item"><div class="gallery-item-overlay"></div><img src="./images/Living-Room.jpg" alt="Elegant Living"/></div>
    <div class="gallery-item"><div class="gallery-item-overlay"></div><img src="./images/s3.jpg" alt="Drawing Room"/></div>
    <div class="gallery-item"><div class="gallery-item-overlay"></div><img src="./images/IMG-2345.jpg" alt="Shoerack"/></div>
    <div class="gallery-item"><div class="gallery-item-overlay"></div><img src="./images/IMG-2337.jpg" alt="Dining"/></div>
    <div class="gallery-item"><div class="gallery-item-overlay"></div><img src="./images/IMG-1672-Copy.JPG" alt="Cafeteria"/></div>
    <div class="gallery-item"><div class="gallery-item-overlay"></div><img src="./images/s8.jpg" alt="Villa TV Unit"/></div>
    <div class="gallery-item"><div class="gallery-item-overlay"></div><img src="./images/s9.webp" alt="Study Room"/></div>
    <div class="gallery-item"><div class="gallery-item-overlay"></div><img src="./images/IMG-2333.jpg" alt="Kitchen"/></div>
    <div class="gallery-item"><div class="gallery-item-overlay"></div><img src="./images/s10.jpg" alt="Pooja"/></div>
  </div>
</section>

<!-- FOOTER -->
<footer id="footer">
  <div class="footer-top">
    <div class="footer-brand">
      <h3>HighRise Interior <span>DESIGNS</span></h3>
      <p>One of the best interior designers in Hyderabad, delivering innovative, functional, and beautiful spaces since 2019. Specializing in residential and Villas interiors.</p>
      <div class="footer-socials">
        <a href="https://www.instagram.com/highrise_interior?igsh=YTB3amw2emQ3cjgz" class="footer-social">📷</a>
        <a href="https://www.facebook.com/HighRiseInteriordesigns" class="footer-social">f</a>
        <a href="https://www.youtube.com/user/HighRiseInteriordesigns" class="footer-social">▶</a>
      </div>
    </div>
    <div class="footer-col">
      <h4>Menu</h4>
      <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#">Our Projects</a></li>
        <li><a href="#">Home Interiors</a></li>
        <li><a href="#">Villas Interiors</a></li>
        <li><a href="#">About Us</a></li>
        <li><a href="#">Blogs</a></li>
      </ul>
    </div>
    <div class="footer-col">
      <h4>Services</h4>
      <ul>
        <li><a href="#">Residential Interiors</a></li>
        <li><a href="#">Villas Interiors</a></li>
        <li><a href="#">Modular Kitchen</a></li>
        <li><a href="#">Commercial Design</a></li>
        <li><a href="#">3D Visualization</a></li>
        <li><a href="#">Turnkey Projects</a></li>
      </ul>
    </div>
    <div class="footer-col">
      <h4>Contact</h4>
      <div class="footer-contact-item">
        <span>📍</span>
        <p>Paho Designer, Near Golden Temple, Road No 1, Manikonda, Hyderabad, Telangana 500089</p>
      </div>
      <div class="footer-contact-item">
        <span>📞</span>
        <a href="tel:+917569226055">+91-7569226055</a>
      </div>
      <div class="footer-contact-item">
        <span>✉</span>
        <a href="/cdn-cgi/l/email-protection#b1d9d8d6d9c3d8c2d4d8dfc5d4c3d8dec3d5d4c2d8d6dfc2f1d6dcd0d8dd9fd2dedc"><span class="__cf_email__" data-cfemail="ea82838d829883998f83849e8f988385988e8f99838d8499aa8d878b8386c4898587">[email&#160;protected]</span></a>
      </div>
    </div>
  </div>
  <div class="footer-bottom">
    <p>© 2019 HighRise Interior. All rights reserved.</p>
    <p><a href="#">Privacy Policy</a></p>
  </div>
</footer>

<!-- WHATSAPP FLOAT -->
<a href="https://wa.me/917569226055" class="float-whatsapp" title="Chat on WhatsApp">
  <svg width="28" height="28" viewBox="0 0 24 24" fill="white" xmlns="http://www.w3.org/2000/svg">
    <path d="M17.472 14.382c-.297-.149-1.758-.867-2.03-.967-.273-.099-.471-.148-.67.15-.197.297-.767.966-.94 1.164-.173.199-.347.223-.644.075-.297-.15-1.255-.463-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.298-.347.446-.52.149-.174.198-.298.298-.497.099-.198.05-.371-.025-.52-.075-.149-.669-1.612-.916-2.207-.242-.579-.487-.5-.669-.51-.173-.008-.371-.01-.57-.01-.198 0-.52.074-.792.372-.272.297-1.04 1.016-1.04 2.479 0 1.462 1.065 2.875 1.213 3.074.149.198 2.096 3.2 5.077 4.487.709.306 1.262.489 1.694.625.712.227 1.36.195 1.871.118.571-.085 1.758-.719 2.006-1.413.248-.694.248-1.289.173-1.413-.074-.124-.272-.198-.57-.347m-5.421 7.403h-.004a9.87 9.87 0 01-5.031-1.378l-.361-.214-3.741.982.998-3.648-.235-.374a9.86 9.86 0 01-1.51-5.26c.001-5.45 4.436-9.884 9.888-9.884 2.64 0 5.122 1.03 6.988 2.898a9.825 9.825 0 012.893 6.994c-.003 5.45-4.437 9.884-9.885 9.884m8.413-18.297A11.815 11.815 0 0012.05 0C5.495 0 .16 5.335.157 11.892c0 2.096.547 4.142 1.588 5.945L.057 24l6.305-1.654a11.882 11.882 0 005.683 1.448h.005c6.554 0 11.89-5.335 11.893-11.893a11.821 11.821 0 00-3.48-8.413Z"/>
  </svg>
</a>

<script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script>

  /* ══════════════════════════════════════
     HERO SLIDER
  ══════════════════════════════════════ */
  (function () {
    const slider   = document.getElementById('heroSlider');
    if (!slider) return;

    const slides   = slider.querySelectorAll('.hero-slide');
    const dotsWrap = document.getElementById('sliderDots');
    const progress = document.getElementById('sliderProgress');
    const prevBtn  = document.getElementById('sliderPrev');
    const nextBtn  = document.getElementById('sliderNext');

    let current  = 0;
    let timer    = null;
    const DELAY  = 5000; // ms between slides

    /* ── Build dots ── */
    slides.forEach((_, i) => {
      const dot = document.createElement('button');
      dot.className = 'slider-dot' + (i === 0 ? ' active' : '');
      dot.setAttribute('aria-label', 'Slide ' + (i + 1));
      dot.addEventListener('click', () => goTo(i));
      dotsWrap.appendChild(dot);
    });

    const dots = dotsWrap.querySelectorAll('.slider-dot');

    /* ── Go to slide ── */
    function goTo(index) {
      slides[current].classList.remove('active');
      dots[current].classList.remove('active');

      current = (index + slides.length) % slides.length;

      slides[current].classList.add('active');
      dots[current].classList.add('active');

      // Re-trigger Ken-Burns on images
      const img = slides[current].querySelector('img');
      if (img) {
        img.style.animation = 'none';
        img.offsetHeight; // reflow
        img.style.animation = '';
      }

      // Restart progress bar
      progress.classList.remove('running');
      progress.offsetHeight; // reflow
      progress.classList.add('running');

      resetTimer();
    }

    /* ── Auto-advance ── */
    function resetTimer() {
      clearTimeout(timer);
      timer = setTimeout(() => goTo(current + 1), DELAY);
    }

    /* ── Arrow buttons ── */
    prevBtn.addEventListener('click', () => goTo(current - 1));
    nextBtn.addEventListener('click', () => goTo(current + 1));

    /* ── Keyboard navigation ── */
    document.addEventListener('keydown', (e) => {
      if (e.key === 'ArrowLeft')  goTo(current - 1);
      if (e.key === 'ArrowRight') goTo(current + 1);
    });

    /* ── Touch / swipe support ── */
    let touchStartX = 0;
    slider.addEventListener('touchstart', e => { touchStartX = e.touches[0].clientX; }, { passive: true });
    slider.addEventListener('touchend', e => {
      const diff = touchStartX - e.changedTouches[0].clientX;
      if (Math.abs(diff) > 40) goTo(diff > 0 ? current + 1 : current - 1);
    });

    /* ── Pause on hover ── */
    slider.addEventListener('mouseenter', () => clearTimeout(timer));
    slider.addEventListener('mouseleave', resetTimer);

    /* ── Kick off ── */
    goTo(0);
  })();

  /* ══════════════════════════════════════
     FAQ ACCORDION
  ══════════════════════════════════════ */
  function toggleFaq(el) {
    const item = el.parentElement;
    const allItems = document.querySelectorAll('.faq-item');
    allItems.forEach(i => { if (i !== item) i.classList.remove('open'); });
    item.classList.toggle('open');
  }

  /* ══════════════════════════════════════
     SCROLL REVEAL
  ══════════════════════════════════════ */
  const observer = new IntersectionObserver((entries) => {
    entries.forEach(e => {
      if (e.isIntersecting) {
        e.target.style.opacity = '1';
        e.target.style.transform = 'translateY(0)';
      }
    });
  }, { threshold: 0.1 });

  document.querySelectorAll('.why-card, .testimonial-card, .process-step, .client-logo').forEach(el => {
    el.style.opacity = '0';
    el.style.transform = 'translateY(24px)';
    el.style.transition = 'opacity 0.55s ease, transform 0.55s ease';
    observer.observe(el);
  });

  /* ── Hamburger menu ── */
  const hamburger = document.getElementById('hamburger');
  const navLinks  = document.getElementById('navLinks');
  if (hamburger && navLinks) {
    hamburger.addEventListener('click', () => {
      hamburger.classList.toggle('open');
      navLinks.classList.toggle('open');
    });
    navLinks.querySelectorAll('a').forEach(a => {
      a.addEventListener('click', () => {
        hamburger.classList.remove('open');
        navLinks.classList.remove('open');
      });
    });
  }

  document.addEventListener("DOMContentLoaded", function () {
  const video = document.querySelector("video");
  if (video) {
    video.play().catch(error => {
      console.log("Autoplay prevented:", error);
    });
  }
});

function playVideo(){
  let video = document.getElementById("blogVideo");
  video.play();
  document.querySelector(".play-button").style.display="none";
}

</script></body>
</html>
