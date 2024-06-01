import React from "react";
import App from "./components/App";
import { createRoot } from "react-dom/client";

import "./styles/index.css";

const rootElement = document.getElementById("root");
if (rootElement) {
   createRoot(rootElement).render(<App />);
}
