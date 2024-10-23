import React from 'react'
import './Style.css'

import Logo_g from '../../assets/imagens/logo-g.png'

function Redef() {

  return (
      <div className='container'>
          <h1>Redefinição de Senha</h1>
          <form>
            <p>Insira o endereço de e-mail verificado da sua conta de usuário e lhe enviaremos um link para redefinir sua senha.</p>

            <input name='email' type="email" placeholder='E-mail' />
            <button type='submit'>Enviar</button>
          </form>

          <div className='imagem'><img src={Logo_g} alt="Logo GDR" /></div>

      </div>
  )
}

export default Redef
