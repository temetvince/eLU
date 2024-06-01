import React from "react";
import App from "./App";
import { createRoot } from "react-dom/client";

const rootElement = document.getElementById("root");
if (rootElement) {
   createRoot(rootElement).render(<App />);
}
