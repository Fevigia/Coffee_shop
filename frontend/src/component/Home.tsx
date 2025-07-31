import React from "react";
import "../App.css";
const Home: React.FC = () => (
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
);

export default Home;