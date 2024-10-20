import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import Redef from './pages/redef_senha/index'
import './index.css'

createRoot(document.getElementById('root')).render(
  <StrictMode>
    <Redef />
  </StrictMode>
)