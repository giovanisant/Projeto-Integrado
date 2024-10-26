import { BrowserRouter, Route, Routes } from "react-router-dom"
import './App.css'

import Login from './pages/login/index'
import Redef from './pages/redef_senha/index'
import Home from './pages/home/index'

function App() {

    return (
        <BrowserRouter>
            <Routes>
                <Route path='/' element={<Login/>}/>
                <Route path='/redefinir_senha' element={<Redef/>}/>
                <Route path='/home' element={<Home/>}/>
                <Route path='*' element={<h1>Not Found</h1>}/>
            </Routes>
        </BrowserRouter>
    )
}

export default App