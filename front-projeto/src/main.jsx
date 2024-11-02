import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import './index.css'

import Home from '../src/pages/home/index'
import App from './App'

createRoot(document.getElementById('root')).render(
  <StrictMode>
    <App />
  </StrictMode>
)