import React from 'react';
import App from './components/App';
import { createRoot } from 'react-dom/client';
import './styles/index.css';

const rootElement = document.getElementById('root');

if (rootElement) {
   const root = createRoot(rootElement);
   root.render(
      <React.StrictMode>
         <App />
      </React.StrictMode>,
   );
} else {
   console.error('Root element not found');
}
