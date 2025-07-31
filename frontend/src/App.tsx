import React, { useEffect, useState } from "react";
import { BrowserRouter as Router, Route, Routes, Navigate } from "react-router-dom";
import Navbar from "./component/Navbar";
import Home from "./component/Home";

interface User {
  email: string;
  // Remove the index signature or replace with a stricter type if needed
  // [key: string]: any;
}

const App: React.FC = () => {
  const [user, setUser] = useState<User | null>(() => {
    try {
      return JSON.parse(localStorage.getItem("currentUser") || "null");
    } catch {
      return null;
    }
  });

  // Simulate login for demo (remove in production)
  useEffect(() => {
    if (!user) {
      // Uncomment to simulate a logged-in user:
      // localStorage.setItem("currentUser", JSON.stringify({ email: "test@flora.com" }));
      // setUser({ email: "test@flora.com" });
    }
  }, [user]);

  const handleLogout = () => {
    localStorage.removeItem("currentUser");
    setUser(null);
    window.location.href = "/";
  };

  return (
    <Router>
      <Navbar user={user} onLogout={handleLogout} />
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/logout" element={<Logout onLogout={handleLogout} />} />
        {/* Add more routes as needed */}
      </Routes>
    </Router>
  );
};

interface LogoutProps {
  onLogout: () => void;
}

const Logout: React.FC<LogoutProps> = ({ onLogout }) => {
  useEffect(() => {
    onLogout();
  }, [onLogout]);
  return <Navigate to="/" />;
};

export default App;