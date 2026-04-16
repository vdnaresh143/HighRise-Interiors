<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="High Rise Interior - Premier interior design services in Hyderabad. Transform your space with our expert designers.">
    <meta name="keywords" content="interior design, home decoration, Hyderabad, modular kitchen, bedroom design, living room">
    <meta name="author" content="High Rise Interior">
    
    <title>High Rise Interior - Designing Spaces That Elevate Your Lifestyle</title>
    
    <!-- Favicon -->
    <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/resources/images/favicon.png">
    
    <!-- CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --primary-color: #c9a961;
            --dark: #1a1a1a;
            --light: #ffffff;
            --gray: #666666;
            --light-gray: #f5f5f5;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            line-height: 1.6;
            color: var(--dark);
            overflow-x: hidden;
        }

        /* Navigation */
        nav {
            position: fixed;
            top: 0;
            width: 100%;
            background: rgba(255, 255, 255, 0.98);
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            z-index: 1000;
            transition: all 0.3s ease;
        }

        .nav-container {
            max-width: 1400px;
            margin: 0 auto;
            padding: 20px 40px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-size: 28px;
            font-weight: 700;
            color: var(--dark);
            text-decoration: none;
            letter-spacing: 1px;
        }

        .logo span {
            color: var(--primary-color);
        }

        .nav-links {
            display: flex;
            gap: 40px;
            list-style: none;
        }

        .nav-links a {
            text-decoration: none;
            color: var(--dark);
            font-weight: 500;
            transition: color 0.3s;
        }

        .nav-links a:hover {
            color: var(--primary-color);
        }

        .cta-btn {
            background: var(--primary-color);
            color: var(--light);
            padding: 12px 30px;
            border-radius: 5px;
            text-decoration: none;
            font-weight: 600;
            transition: all 0.3s;
        }

        .cta-btn:hover {
            background: var(--dark);
            transform: translateY(-2px);
        }

        /* Hero Section */
        .hero {
            height: 100vh;
            background: linear-gradient(rgba(0,0,0,0.4), rgba(0,0,0,0.4)), 
                        url('${pageContext.request.contextPath}/resources/images/hero.jpg');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            color: var(--light);
            position: relative;
        }

        .hero::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: linear-gradient(135deg, #2c3e50 0%, #1a252f 100%);
            z-index: -1;
        }

        .hero-content {
            max-width: 900px;
            padding: 0 20px;
            animation: fadeInUp 1s ease;
        }

        .hero-subtitle {
            font-size: 16px;
            letter-spacing: 3px;
            text-transform: uppercase;
            color: var(--primary-color);
            margin-bottom: 20px;
        }

        .hero h1 {
            font-size: 64px;
            font-weight: 700;
            margin-bottom: 20px;
            line-height: 1.2;
        }

        .hero p {
            font-size: 18px;
            margin-bottom: 40px;
            line-height: 1.8;
        }

        .btn-primary, .btn-secondary {
            padding: 15px 40px;
            border-radius: 5px;
            text-decoration: none;
            font-weight: 600;
            transition: all 0.3s;
            display: inline-block;
            margin: 10px;
        }

        .btn-primary {
            background: var(--primary-color);
            color: var(--light);
        }

        .btn-primary:hover {
            background: var(--light);
            color: var(--dark);
            transform: translateY(-3px);
        }

        .btn-secondary {
            background: transparent;
            color: var(--light);
            border: 2px solid var(--light);
        }

        .btn-secondary:hover {
            background: var(--light);
            color: var(--dark);
        }

        /* Contact Form */
        .contact-form {
            position: fixed;
            right: 30px;
            bottom: 30px;
            background: var(--light);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 10px 40px rgba(0,0,0,0.2);
            max-width: 350px;
            z-index: 999;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group input,
        .form-group textarea {
            width: 100%;
            padding: 12px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-family: inherit;
        }

        .submit-btn {
            width: 100%;
            padding: 12px;
            background: var(--primary-color);
            color: var(--light);
            border: none;
            border-radius: 5px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s;
        }

        .submit-btn:hover {
            background: var(--dark);
        }

        /* Stats Section */
        .stats {
            background: var(--light-gray);
            padding: 80px 20px;
        }

        .stats-container {
            max-width: 1400px;
            margin: 0 auto;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 40px;
            text-align: center;
        }

        .stat-item h2 {
            font-size: 48px;
            color: var(--primary-color);
            margin-bottom: 10px;
        }

        /* Services */
        .services {
            padding: 100px 20px;
            background: var(--light);
        }

        .section-header {
            text-align: center;
            margin-bottom: 60px;
        }

        .section-header h2 {
            font-size: 42px;
            margin-bottom: 20px;
        }

        .services-grid {
            max-width: 1400px;
            margin: 0 auto;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
            gap: 30px;
        }

        .service-card {
            position: relative;
            height: 400px;
            border-radius: 10px;
            overflow: hidden;
            cursor: pointer;
        }

        .service-card img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.5s;
        }

        .service-card:hover img {
            transform: scale(1.1);
        }

        .service-overlay {
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            background: linear-gradient(to top, rgba(0,0,0,0.9), transparent);
            padding: 40px;
            color: var(--light);
        }

        /* Footer */
        footer {
            background: var(--dark);
            color: var(--light);
            padding: 80px 20px 30px;
        }

        .footer-container {
            max-width: 1400px;
            margin: 0 auto;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 40px;
            margin-bottom: 40px;
        }

        .footer-section h3 {
            margin-bottom: 20px;
            color: var(--primary-color);
        }

        .footer-section a {
            color: rgba(255,255,255,0.7);
            text-decoration: none;
            display: block;
            margin-bottom: 10px;
        }

        .footer-section a:hover {
            color: var(--primary-color);
        }

        .copyright {
            text-align: center;
            padding-top: 30px;
            border-top: 1px solid rgba(255,255,255,0.1);
            color: rgba(255,255,255,0.5);
        }

        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @media (max-width: 768px) {
            .nav-links { display: none; }
            .hero h1 { font-size: 36px; }
            .contact-form { display: none; }
        }
    </style>
</head>
<body>
    <!-- Navigation -->
    <nav>
        <div class="nav-container">
            <a href="${pageContext.request.contextPath}/" class="logo">HIGH <span>RISE</span></a>
            <ul class="nav-links">
                <li><a href="${pageContext.request.contextPath}/">Home</a></li>
                <li><a href="${pageContext.request.contextPath}/about">About</a></li>
                <li><a href="${pageContext.request.contextPath}/services">Services</a></li>
                <li><a href="${pageContext.request.contextPath}/gallery">Gallery</a></li>
                <li><a href="${pageContext.request.contextPath}/contact">Contact</a></li>
            </ul>
            <a href="${pageContext.request.contextPath}/contact" class="cta-btn">Get in Touch</a>
        </div>
    </nav>

    <!-- Hero Section -->
    <section class="hero">
        <div class="hero-content">
            <div class="hero-subtitle">Inspired Interiors</div>
            <h1>Designing Spaces That Elevate Your Lifestyle</h1>
            <p>From luxurious interiors to functional elegance, we transform your vision into reality. 
               Crafted with precision, designed for comfort, and built to inspire every moment.</p>
            <div>
                <a href="${pageContext.request.contextPath}/services" class="btn-primary">Explore Our Services</a>
                <a href="${pageContext.request.contextPath}/about" class="btn-secondary">Learn More</a>
            </div>
        </div>
    </section>

    <!-- Contact Form Popup -->
    <div class="contact-form">
        <h3>Meet a Designer</h3>
        <form action="${pageContext.request.contextPath}/inquiry/submit" method="post" id="inquiryForm">
            <div class="form-group">
                <input type="text" name="name" placeholder="Your Name" required>
            </div>
            <div class="form-group">
                <input type="tel" name="mobile" placeholder="Mobile Number" required pattern="[0-9]{10}">
            </div>
            <div class="form-group">
                <input type="email" name="email" placeholder="Email" required>
            </div>
            <div class="form-group">
                <textarea name="message" placeholder="Your Message" required rows="4"></textarea>
            </div>
            <button type="submit" class="submit-btn">Submit</button>
        </form>
    </div>

    <!-- Stats Section -->
    <section class="stats">
        <div class="stats-container">
            <div class="stat-item">
                <h2><c:out value="${yearsExperience != null ? yearsExperience : '15+'}" /></h2>
                <p>Years of Experience</p>
            </div>
            <div class="stat-item">
                <h2><c:out value="${projectsCompleted != null ? projectsCompleted : '500+'}" /></h2>
                <p>Projects Completed</p>
            </div>
            <div class="stat-item">
                <h2><c:out value="${clientSatisfaction != null ? clientSatisfaction : '95%'}" /></h2>
                <p>Client Satisfaction</p>
            </div>
            <div class="stat-item">
                <h2><c:out value="${teamSize != null ? teamSize : '50+'}" /></h2>
                <p>Expert Team</p>
            </div>
        </div>
    </section>

    <!-- Services Section -->
    <section class="services">
        <div class="section-header">
            <div class="section-label">Our Services</div>
            <h2>Interior Design Services We Offer</h2>
            <p>At High Rise Interior, every space deserves thoughtful attention and expert design.</p>
        </div>
        <div class="services-grid">
            <div class="service-card">
                <img src="${pageContext.request.contextPath}/resources/images/services/living-room.jpg" 
                     alt="Living Room Design" onerror="this.src='${pageContext.request.contextPath}/resources/images/placeholder.jpg'">
                <div class="service-overlay">
                    <h3>Living Room Design</h3>
                    <p>Create welcoming spaces that blend comfort with style.</p>
                </div>
            </div>
            <div class="service-card">
                <img src="${pageContext.request.contextPath}/resources/images/services/bedroom.jpg" 
                     alt="Bedroom Design" onerror="this.src='${pageContext.request.contextPath}/resources/images/placeholder.jpg'">
                <div class="service-overlay">
                    <h3>Bedroom Design</h3>
                    <p>Design serene retreats tailored to your comfort.</p>
                </div>
            </div>
            <div class="service-card">
                <img src="${pageContext.request.contextPath}/resources/images/services/kitchen.jpg" 
                     alt="Modular Kitchen" onerror="this.src='${pageContext.request.contextPath}/resources/images/placeholder.jpg'">
                <div class="service-overlay">
                    <h3>Modular Kitchen</h3>
                    <p>Functional and stylish kitchens that inspire.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <div class="footer-container">
            <div class="footer-section">
                <h3>HIGH RISE INTERIOR</h3>
                <p>Transforming spaces into timeless masterpieces through innovative design and exceptional craftsmanship.</p>
            </div>
            <div class="footer-section">
                <h3>Quick Links</h3>
                <a href="${pageContext.request.contextPath}/">Home</a>
                <a href="${pageContext.request.contextPath}/about">About Us</a>
                <a href="${pageContext.request.contextPath}/services">Services</a>
                <a href="${pageContext.request.contextPath}/gallery">Gallery</a>
                <a href="${pageContext.request.contextPath}/contact">Contact</a>
            </div>
            <div class="footer-section">
                <h3>Our Services</h3>
                <a href="${pageContext.request.contextPath}/services/living-room">Living Room</a>
                <a href="${pageContext.request.contextPath}/services/bedroom">Bedroom</a>
                <a href="${pageContext.request.contextPath}/services/kitchen">Modular Kitchen</a>
                <a href="${pageContext.request.contextPath}/services/bathroom">Bathroom</a>
            </div>
            <div class="footer-section">
                <h3>Contact Us</h3>
                <p><i class="fas fa-phone"></i> +91 98765 43210</p>
                <p><i class="fas fa-envelope"></i> info@highriseinterior.com</p>
                <p><i class="fas fa-map-marker-alt"></i> Plot No. 123, Jubilee Hills<br>Hyderabad, Telangana - 500033</p>
            </div>
        </div>
        <div class="copyright">
            <p>&copy; <fmt:formatDate value="<%= new java.util.Date() %>" pattern="yyyy" /> High Rise Interior. All Rights Reserved.</p>
        </div>
    </footer>

    <!-- JavaScript -->
    <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
    <script>
        // Navbar scroll effect
        window.addEventListener('scroll', function() {
            const navbar = document.querySelector('nav');
            if (window.scrollY > 50) {
                navbar.style.padding = '10px 0';
            } else {
                navbar.style.padding = '20px 0';
            }
        });

        // Form submission
        document.getElementById('inquiryForm').addEventListener('submit', function(e) {
            e.preventDefault();
            const formData = new FormData(this);
            
            fetch('${pageContext.request.contextPath}/inquiry/submit', {
                method: 'POST',
                body: formData
            })
            .then(response => response.json())
            .then(data => {
                if(data.success) {
                    alert('Thank you! We will contact you soon.');
                    this.reset();
                } else {
                    alert('Something went wrong. Please try again.');
                }
            })
            .catch(error => {
                console.error('Error:', error);
                alert('Thank you for your interest! Our team will contact you shortly.');
                this.reset();
            });
        });
    </script>
</body>
</html>
