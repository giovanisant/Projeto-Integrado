import { BrowserRouter, Route, Routes } from "react-router-dom"
import './App.css'
import Home from'./pages/home/index'
import Redef from './pages/redef_senha/index'

function App() {

    return (
        <BrowserRouter>
            <Routes>
                <Route path='/' element={<Home/>}/>
                <Route path='/redef' element={<Redef/>}/>
                <Route path='*' element={<h1>Not Found</h1>}/>
            </Routes>
        </BrowserRouter>
    )
}

export default App