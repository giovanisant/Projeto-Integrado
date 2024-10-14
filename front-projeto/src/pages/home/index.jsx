import './Style.css'

function Home() {

  return (
      <div className='container'>
          <form>
            <h1>Login</h1>
            <input name='email' type="email" placeholder='E-mail' autocomplete="email" required maxlength="30"/>
            <input name='senha' type='password' placeholder='Senha' autocomplete="current-password" required minlength="8" maxlength="20"/>
            <button type='submit'>Entrar</button>
            <a href="#" >Esqueci a senha</a>
            <a href="#" >Cadastrar</a>
          </form>
          
      </div>
  )
}

export default Home
