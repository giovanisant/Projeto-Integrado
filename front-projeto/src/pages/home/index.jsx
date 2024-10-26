import React from 'react'
import './style.css'

function Home() {

  return (
      <div className='container'>
          <div className='user'>
            <div className='picture'>
               <p>foto</p> 
            </div>

            <h2>User</h2>
            <p>Cargo</p>
            <div className='singout'>
              sair
            </div>
            <div className='botao'>
              <a href="#">Cadastrar Usuário</a>
              <a href="#">Cadastrar cliente</a>
            </div>
          </div>
      </div>
  )
}
  
export default Home
  