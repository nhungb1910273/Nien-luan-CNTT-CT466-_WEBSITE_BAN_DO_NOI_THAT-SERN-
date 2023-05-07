import React, { useState } from "react";
import {Nav} from 'react-bootstrap';
import Dropdown from 'react-bootstrap/Dropdown';
import { Route, Routes } from "react-router-dom";
// import Header from "./Header/Navbar";
import SideBar from "./sidebar";
import logo from '../../assets/logo.jpg';
import ListProduct from "./views/product/list";
import AddProduct from "./views/product/add";
import EditProduct from "./views/product/edit";
import ListColor from "./views/product-color/list";
import ListUser from "./views/user";
import ListCategory from "./views/category/list";
import './css/style.css';
import AddBlog from "./views/blog/add";
import ListBlog from "./views/blog/list";
import EditBlog from "./views/blog/edit";
import ListOrder from "./views/order/list";
import DetailOrder from "./views/order/detail_order";
import ListComment from "./views/comment/list";
import ListFeedback from "./views/feedback/list";
import Dashboard from "./views/dashboard";
const RootRouter =()=>{
    
    const [isHide,setIsHide]=useState(false);

    const handleHide = ()=>{
        setIsHide(!isHide);
    }

    return (
        <div className="sidebar-container d-flex align-items-stretch">
            <SideBar isHide = {isHide}  />
            <div className="px-4 content" style={{marginLeft:isHide ? "0px": ""}}>
                <Nav className="justify-content-between align-items-center"
                    activeKey="/home"
                    onSelect={(selectedKey) => alert(`selected ${selectedKey}`)}>
                    <Nav.Item>
                    <button type="button" id="sidebarCollapse" class="btn btn-primary" onClick={handleHide}>
                        <i class="fa fa-bars"></i>
                        <span class="sr-only">Toggle Menu</span>
                    </button>
                    </Nav.Item>
                    <Nav.Item>
                        <Dropdown>
                            <Dropdown.Toggle variant="success" id="dropdown-basic">
                            <img src={logo} className="rounded-circle" alt="harry potter" style={{ width: '45px',height:'45px' }}/>

                            </Dropdown.Toggle>

                            <Dropdown.Menu>
                                <Dropdown.Item href="#/action-1">Action</Dropdown.Item>
                                <Dropdown.Item href="#/action-2">Another action</Dropdown.Item>
                                <Dropdown.Item href="#/action-3">Something else</Dropdown.Item>
                            </Dropdown.Menu>    
                        </Dropdown>
                    </Nav.Item>
                </Nav>
                <Routes>
                    <Route path="/" element={<Dashboard />} />
                    <Route path="list-product" element={<ListProduct />} />
                    <Route path="add-product" element={<AddProduct />} />
                    <Route path="edit-product/:id" element={<EditProduct /> }/>
                    <Route path="list-type-product" element={<ListCategory />} />
                    <Route path="color" element={<ListColor />} />
                    <Route path="orders/*" element={<ListOrder />} />
                    <Route path="orders/:id" element={<DetailOrder />} />
                    <Route path="users" element={<ListUser />} />
                    <Route path="list-blog" element={<ListBlog />} />
                    <Route path="add-blog" element={<AddBlog />} />
                    <Route path="edit-blog/:id" element={<EditBlog />} />
                    <Route path="list-comment" element={<ListComment />} />
                    <Route path="list-feedback" element={<ListFeedback />}  />
                </Routes>
            </div>
        </div>
    );
}
export default RootRouter;