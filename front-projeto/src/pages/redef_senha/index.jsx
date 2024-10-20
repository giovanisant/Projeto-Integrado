import React from 'react'
import './Style.css'

import Logo from '../../assets/imagens/logo.png'

function Redef() {

  return (
      <div className='container'>
          <h1>Redefinição de Senha</h1>
          <form>
            <p>Insira o endereço de e-mail verificado da sua conta de usuário e lhe enviaremos um link para redefinir sua senha.</p>

            <input name='email' type="email" placeholder='E-mail' />
            <button type='submit'>Enviar</button>
          </form>

          <img src={Logo} alt="Logo GDR" />
      </div>
  )
}

export default Redef
