import React from "react";
import { Link } from "react-router-dom";
import "../App.css";


interface User {
  email: string;
  // Remove the index signature or replace with a stricter type if needed
  // [key: string]: any;
}

interface NavbarProps {
  user: User | null;
  onLogout: () => void;
}

const Navbar: React.FC<NavbarProps> = ({ user, onLogout }) => (
  <header className="main-header">
    <div className="header-left">
      <span className="brand">Flora Coffee Shop</span>
    </div>
    <nav className="main-nav">
      <Link to="/" className="active">Dashboard</Link>
      <Link to="/rewards">Rewards</Link>
      <Link to="/giftcard">Gift Cards</Link>
      <Link to="/location">Locations</Link>
      <Link to="/about">About Us</Link>
      <Link to="/contact">Contact</Link>
      {user && user.email && (
        <button className="btn" style={{ marginLeft: "1.2rem" }} onClick={onLogout}>
          Logout
        </button>
      )}
    </nav>
  </header>
);

export default Navbar;