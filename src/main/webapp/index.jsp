d<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./assets/css/index.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
        integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body id="top">
  <header class="header" data-header>
    <div class="container">
      <a href="#" class="logo">
        <img src="https://iili.io/JJAL0vf.png" width="70" height="70" alt="logo">
      </a>
      <nav class="navbar" data-navbar>
        <div class="wrapper">
          <a href="#" class="logo">
            <img src="https://iili.io/JJAL0vf.png" width="70" height="70" alt="EduWeb logo">
          </a>
          <button class="nav-close-btn" aria-label="close menu" data-nav-toggler>
            <ion-icon name="close-outline" aria-hidden="true"></ion-icon>
          </button>
        </div>
        <ul class="navbar-list">
          <li class="navbar-item">
            <a href="#about" class="navbar-link" data-nav-link>About</a>
          </li>
          <li class="navbar-item">
            <a href="#courses" class="navbar-link" data-nav-link>Courses</a>
          </li>
          <li class="navbar-item">
            <a href="./contactus.jsp" class="navbar-link" data-nav-link>Contact Us</a>
          </li>
        </ul>
      </nav>
      <div class="header-actions">
        <a href="./login.jsp" class="btn has-before">
          <span class="span">Login</span>
          <ion-icon name="arrow-forward-outline" aria-hidden="true"></ion-icon>
        </a>
        <button class="header-action-btn" aria-label="open menu" data-nav-toggler>
          <ion-icon name="menu-outline" aria-hidden="true"></ion-icon>
        </button>
      </div>
      <div class="overlay" data-nav-toggler data-overlay></div>
    </div>
  </header>
  <main>
    <article>
      <section class="section hero has-bg-image" id="home" aria-label="home"
        style="background-image: url('./assets/img/hero-bg.svg')">
        <div class="container">
          <div class="hero-content">
            <h1 class="h1 section-title">
               Your future starts here<span class="span">Apply</span> for Exchange
            </h1>
            <p class="hero-text">
              Excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit.
            </p>
            <a href="./login.jsp" class="btn has-before">
              <span class="span">Apply now</span>
              <ion-icon name="arrow-forward-outline" aria-hidden="true"></ion-icon>
            </a>
          </div>
          <figure class="hero-banner">
            <div class="img-holder one" style="--width: 270; --height: 300;">
              <img src="https://iili.io/JJAumTG.jpg" width="270" height="300" alt="hero banner" class="img-cover">
            </div>
            <div class="img-holder two" style="--width: 240; --height: 370;">
              <img src="https://iili.io/JJAutvn.jpg" width="240" height="370" alt="hero banner" class="img-cover">
            </div>
            <img src="https://iili.io/JJAuDps.png" width="622" height="551" alt="" class="shape hero-shape-2">
          </figure>
        </div>
      </section>

      <section class="section stats" aria-label="stats">
        <div class="container">

          <ul class="grid-list">

            <li>
              <div class="stats-card" style="--color: 170, 75%, 41%">
                <h3 class="card-title">9.3k</h3>

                <p class="card-text">Student Applied</p>
              </div>
            </li>

            <li>
              <div class="stats-card" style="--color: 351, 83%, 61%">
                <h3 class="card-title">32.4K</h3>

                <p class="card-text">Aluminies</p>
              </div>
            </li>

            <li>
              <div class="stats-card" style="--color: 260, 100%, 67%">
                <h3 class="card-title">96.2%</h3>

                <p class="card-text">Satisfaction Rate</p>
              </div>
            </li>

            <li>
              <div class="stats-card" style="--color: 42, 94%, 55%">
                <h3 class="card-title">56+</h3>

                <p class="card-text">Partner companies</p>
              </div>
            </li>
          </ul>
        </div>
      </section>

       <section class="section course" id="courses" aria-label="course">
        <div class="container">

          <p class="section-subtitle">Courses We Offer </p>

          <h2 class="h2 section-title">Pick A Course To Get Started</h2>

          <ul class="grid-list">

            <li>
              <div class="course-card">

                <figure class="card-banner img-holder" style="--width: 370; --height: 220;">
                  <img src="https://iili.io/JJAp5Na.jpg" width="370" height="220" loading="lazy"
                    alt="Build Responsive Real- World Websites with HTML and CSS" class="img-cover">
                </figure>



                <div class="card-content">


                  <h3 class="h3">
                    <a href="#" class="card-title">Computer Science Engineering</a>
                  </h3>

                  <ul class="card-meta-list">

                    <li class="card-meta-item">
                      <ion-icon name="library-outline" aria-hidden="true"></ion-icon>

                      <span class="span">8 Lessons</span>
                    </li>

                    <li class="card-meta-item">
                      <ion-icon name="people-outline" aria-hidden="true"></ion-icon>

                      <span class="span">20 Students</span>
                    </li>

                  </ul>

                </div>

              </div>
            </li>

            <li>
              <div class="course-card">

                <figure class="card-banner img-holder" style="--width: 370; --height: 220;">
                  <img src="https://iili.io/JJAmn2t.jpg" width="370" height="220" loading="lazy"
                    alt="Java Programming Masterclass for Software Developers" class="img-cover">
                </figure>


                <div class="card-content">


                  <h3 class="h3">
                    <a href="#" class="card-title"> Electronics and Communication Engineering</a>
                  </h3>

                  <div class="wrapper">

                  </div>

                  <ul class="card-meta-list">

                    <li class="card-meta-item">

                      <span class="span">15 Lessons</span>
                    </li>

                    <li class="card-meta-item">

                      <span class="span">35 Students</span>
                    </li>

                  </ul>

                </div>

              </div>
            </li>

            <li>
              <div class="course-card">

                <figure class="card-banner img-holder" style="--width: 370; --height: 220;">
                  <img src="https://iili.io/JJAbJWl.jpg" width="370" height="220" loading="lazy"
                    alt="The Complete Camtasia Course for Content Creators" class="img-cover">
                </figure>

               

                <div class="card-content">

        
                  <h3 class="h3">
                    <a href="#" class="card-title">Electrical and Electronics Engineering</a>
                  </h3>

                  <div class="wrapper">

            
                  </div>


                  <ul class="card-meta-list">

                    <li class="card-meta-item">

                      <span class="span">13 Lessons</span>
                    </li>

                    <li class="card-meta-item">

                      <span class="span">18 Students</span>
                    </li>

                  </ul>

                </div>

              </div>
            </li>

          </ul>
        </div>
      </section>

      <!-- 
        - #ABOUT
      -->

      <section class="section about" id="about" aria-label="about">
        <div class="container">

          <figure class="about-banner">

            <div class="img-holder" style="--width: 520; --height: 370;">
              <img src="./assets/img/abt-img.jpg" width="520" height="370" loading="lazy" alt="about banner"
                class="img-cover">
            </div>
          
            <img src="./assets/img/about-shape-3.png" width="722" height="528" loading="lazy" alt=""
              class="shape about-shape-3">

          </figure>

          <div class="about-content">

            <p class="section-subtitle">About Us</p>

            <h2 class="h2 section-title">
              Over 10 Years Of <span class="span">Quality Teaching</span> for Skill Development
            </h2>

            <p class="section-text">
              Lorem ipsum dolor sit amet consectur adipiscing elit sed eiusmod ex tempor incididunt labore dolore magna
              aliquaenim ad
              minim.
            </p>

            <ul class="about-list">

              <li class="about-item">
                <ion-icon name="checkmark-done-outline" aria-hidden="true"></ion-icon>

                <span class="span">Expert Trainers</span>
              </li>

              <li class="about-item">
                <ion-icon name="checkmark-done-outline" aria-hidden="true"></ion-icon>

                <span class="span">We Teach Concept</span>
              </li>

              <li class="about-item">
                <ion-icon name="checkmark-done-outline" aria-hidden="true"></ion-icon>

                <span class="span">100% placement</span>
              </li>

            </ul>

          </div>

        </div>
      </section>
    </article>
  </main>
  <!-- 
    - #FOOTER
  -->

  <footer class="footer" style="background-image: url('./assets/images/footer-bg.png')">

    <div class="footer-top section">
      <div class="container grid-list">

        <div class="footer-brand">

          <a href="#" class="logo">
            <img src="https://iili.io/JJAL0vf.png" width="162" height="50" alt="EduWeb logo">
          </a>

          <p class="footer-brand-text">
            Lorem ipsum dolor amet consecto adi pisicing elit sed eiusm tempor incidid unt labore dolore.
          </p>

          <div class="wrapper">
            <span class="span">Add:</span>

            <address class="address">70-80 Upper St Norwich NR2</address>
          </div>

          <div class="wrapper">
            <span class="span">Call:</span>

            <a href="tel:+011234567890" class="footer-link">+01 123 4567 890</a>
          </div>

          <div class="wrapper">
            <span class="span">Email:</span>

            <a href="mailto:info@eduweb.com" class="footer-link">info@eduweb.com</a>
          </div>

        </div>

        <ul class="footer-list">

          <li>
            <p class="footer-list-title">Platform</p>
          </li>

          <li>
            <a href="#" class="footer-link">About</a>
          </li>

          <li>
            <a href="#" class="footer-link">Courses</a>
          </li>

          <li>
            <a href="#" class="footer-link">Instructor</a>
          </li>

          <li>
            <a href="#" class="footer-link">Events</a>
          </li>

          <li>
            <a href="#" class="footer-link">Instructor Profile</a>
          </li>

          <li>
            <a href="#" class="footer-link">Purchase Guide</a>
          </li>

        </ul>

        <ul class="footer-list">

          <li>
            <p class="footer-list-title">Links</p>
          </li>

          <li>
            <a href="#" class="footer-link">Contact Us</a>
          </li>

          <li>
            <a href="#" class="footer-link">Gallery</a>
          </li>

          <li>
            <a href="#" class="footer-link">News & Articles</a>
          </li>

          <li>
            <a href="#" class="footer-link">FAQ's</a>
          </li>

          <li>
            <a href="#" class="footer-link">Sign In/Registration</a>
          </li>

          <li>
            <a href="#" class="footer-link">Coming Soon</a>
          </li>

        </ul>

        <div class="footer-list">

          <p class="footer-list-title">Contacts</p>

          <p class="footer-list-text">
            Enter your email address to register to our newsletter subscription
          </p>

          <form action="" class="newsletter-form">
            <input type="email" name="email_address" placeholder="Your email" required class="input-field">

            <button type="submit" class="btn has-before">
              <span class="span">Subscribe</span>

              <ion-icon name="arrow-forward-outline" aria-hidden="true"></ion-icon>
            </button>
          </form>

          <ul class="social-list">

            <li>
              <a href="#" class="social-link">
                <ion-icon name="logo-facebook"></ion-icon>
              </a>
            </li>

            <li>
              <a href="#" class="social-link">
                <ion-icon name="logo-linkedin"></ion-icon>
              </a>
            </li>

            <li>
              <a href="#" class="social-link">
                <ion-icon name="logo-instagram"></ion-icon>
              </a>
            </li>

            <li>
              <a href="#" class="social-link">
                <ion-icon name="logo-twitter"></ion-icon>
              </a>
            </li>

            <li>
              <a href="#" class="social-link">
                <ion-icon name="logo-youtube"></ion-icon>
              </a>
            </li>

          </ul>

        </div>
      </div>
    </div>
    <div class="footer-bottom">
      <div class="container">
        <p class="copyright">
          Copyright 2022 All Rights Reserved by <a href="#" class="copyright-link">no one</a>
        </p>

      </div>
    </div>
  </footer>
  <!-- 
    - #BACK TO TOP
  -->
  <a href="#top" class="back-top-btn" aria-label="back top top" data-back-top-btn>
    <ion-icon name="chevron-up" aria-hidden="true"></ion-icon>
  </a>
  <!-- 
    - custom js link
  -->
  <script src="../assets/jspages/indi.js" defer></script>

  <!-- 
    - ionicon link
  -->
  <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
  <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

</body>
</html>