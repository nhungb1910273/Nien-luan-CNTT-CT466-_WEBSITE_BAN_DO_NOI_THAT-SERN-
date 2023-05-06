import './App.css';
import React from 'react';
import { Routes, Route } from 'react-router-dom';
import RootRouter from './components/admin/rootRouter';
import RootRouterWeb from './components/web/rootRouter';
import NotFound from './components/404NotFound/NotFound';
import Register from './components/auth/Register';
import Login from './components/auth/Login';
const App =()=> {

    return (
      <>
        <Routes>
          <Route path='/admin/*' element={<RootRouter />} />
          <Route exact path='/*' element={<RootRouterWeb />} />
          <Route exact path='/register' element={<Register />} />
          <Route exact path='/login' element={<Login />} />
          <Route path="*" element={<NotFound />} />
          
        </Routes>
      </>
    );
  }
export default App;