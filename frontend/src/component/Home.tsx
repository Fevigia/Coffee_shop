import React from "react";
import "./app.css";

const Home: React.FC = () => (
  <>
    <section className="hero-section">
      <div
        className="hero-bg"
        style={{
          backgroundImage:
            "url('https://tse4.mm.bing.net/th/id/OIP.-lFXetHk7TS3e1nfYC1sZgHaE8?rs=1&pid=ImgDetMain&o=7&rm=3')",
        }}
      ></div>
      <div className="hero-overlay"></div>
      <div className="hero-content">
        <h1>Welcome to Flora Coffee Shop</h1>
        <p>
          Experience the finest coffee in a warm, inviting atmosphere. Enjoy handcrafted beverages and delicious pastries.
        </p>
        <a href="/menu" className="explore-btn">
          Explore Menu
        </a>
      </div>
    </section>

    <section className="featured-section">
      <h2>Featured Products</h2>
      <div className="featured-grid">
        <div className="featured-card">
          <img src="https://tse1.mm.bing.net/th/id/OIP.BQ4ps9IlGDUfTFum28koywHaHa?rs=1&pid=ImgDetMain&o=7&rm=3" alt="Signature Latte" />
          <h3>Signature Latte</h3>
          <p>Our most popular latte with our unique blend of house-roasted beans.</p>
        </div>
        <div className="featured-card">
          <img src="https://howdykitchen.com/wp-content/uploads/2024/07/Iced-Caramel-Macchiato.jpg" alt="Iced Caramel Macchiato" />
          <h3>Iced Caramel Macchiato</h3>
          <p>Refreshing iced coffee with sweet caramel and creamy milk.</p>
        </div>
        <div className="featured-card">
          <img src="https://img.freepik.com/premium-photo/commercial-advertising-freshly-croissant_1057389-16542.jpg" alt="Freshly Baked Croissant" />
          <h3>Freshly Baked Croissant</h3>
          <p>Airy and buttery croissant, perfect with your coffee.</p>
        </div>
      </div>
    </section>

    <section className="story-section">
      <h2>Our Story</h2>
      <p>Flora Coffee Shop is dedicated to providing a delightful coffee experience. We source our beans from the best farms and roast them in-house to ensure the highest quality. Our baristas are passionate about crafting the perfect coffee, and our cozy atmosphere is designed for you to relax and enjoy. Join us and become a part of the Flora family.</p>
      <a href="#" className="about-btn">Learn More About Us</a>
    </section>

    <footer className="main-footer">
      <div className="footer-links">
        <a href="#">Privacy Policy</a>
        <a href="#">Terms of Service</a>
        <a href="#">Contact Us</a>
      </div>
      <div className="footer-copy">&copy;2024 Flora Coffee Shop. All rights reserved.</div>
    </footer>
  </>
);

export default Home;