import React from 'react'
import './style.css'

import Logo_m from '../../assets/imagens/logo.png'
import User from '../../assets/imagens/user.png'

function Home() {

  return (
      <div className='container'>
          <div className='user'>
            <div>
              <img src={Logo_m} alt="Logo GDR" />
            </div>
            <div className='foto'>
               <img src={User} alt="Foto do Usuario" />
            </div>

            <h2>User</h2>
            <p>Cargo</p>
            <div className='sair'>
              sair
            </div>
            <div className='botao'>
              <button>Usuários</button>
              <button>Clientes</button>
              <button>Agendamentos</button>
              <button>Relatórios</button>
              <button>Serviços</button>
              <button>Configurações</button>
            </div>
          </div>

          
      </div>
  )
}
  
export default Home
  