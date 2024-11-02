import React from 'react'
import { Link }  from 'react-router-dom'
import './css/style.css'


import { useForm } from 'react-hook-form'
import axios from 'axios'
import { useNavigate } from 'react-router-dom'
import * as Yup from 'yup';
import { yupResolver } from '@hookform/resolvers/yup';

import Logo_g from '../../assets/imagens/logo-g.png'

const schema = Yup.object().shape({
    email: Yup.string().email('Email inválido').required('Email é obrigatório'),
    senha: Yup.string().required('Senha é obrigatória'),
})

function Login() {

  const { register, handleSubmit, formState: { error } } = useForm({
    resolver: yupResolver(schema),
  })

  const navigate = useNavigate()

  const onSubmit = async (data) => {
    try {
      const response = await axios.post('http://localhost:5173/', data)
      if (response.data.sucess) {
        navigate('/home')
      } 
      } catch (error) {
        alert('Email ou senha inválidos')
      }
  }

  return (
      <div className='containerum'>
          <div className='form'>
            <form>
              <h1>Login</h1>
              
              <input name='email' type="email" placeholder='Email' autocomplete="email" {...register('email')}/>
              
              <input name='senha' type='password' placeholder='Senha' autocomplete="current-password" {...register('senha')}/>
              
              <button type='submit' onClick={onSubmit}>Entrar</button>
              
              <Link to={'redefinir_senha'}>Esqueci a senha</Link>

            </form>
          </div>

        <div className='img'>

          <img src={Logo_g} alt="Logo GDR" />

        </div>
      </div>
  )
}

export default Login
