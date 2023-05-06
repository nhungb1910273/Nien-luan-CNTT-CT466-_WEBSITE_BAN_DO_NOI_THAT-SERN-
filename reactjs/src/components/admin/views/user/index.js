import {useEffect, useState} from 'react';
// import { FormattedMessage } from 'react-intl';
// import { connect } from 'react-redux';
import '../../../styles/Login.css';
// import ModalUser from './ModalUser';
// import ModalEditUser from './ModalEditUser';
// import { emitter } from "../../../../utils/emitter";
import {ThreeDots} from 'react-loader-spinner';
import Pagination from '../../../pagination';
import { getAllUsers} from '../../../services/userService';

const ListUser = () => {

    const [arrUsers,setArrUsers]=useState([]);
    const [search, setSearch] = useState('');

    // const [pagColor,setPagColor]=useState([]);
    const [isloaded,setIsLoaded]=useState(false);
    const [offset, setOffset] = useState(0);
    const [perPage]=useState(10);
    const [currentPage,setCurrentPage]=useState(0);
    const [pageCount,setPageCount]=useState(0);

    useEffect(()=>{
        getAllUsersFromReact();
    // eslint-disable-next-line react-hooks/exhaustive-deps
    },[perPage,offset]);

    const getAllUsersFromReact = async()=>{
        setIsLoaded(false);
        const response = await getAllUsers('ALL');
        if(response && response.data.errCode === 0){
            var tdata = response.data.users;
            var slice = tdata.slice(offset, offset + perPage)
            setPageCount(Math.ceil(tdata.length / perPage));
            // setPagColor(tdata);
            setArrUsers(slice);
            setIsLoaded(true);
        }
    }
    const handlePageClick = (e) => {
        const selectedPage = e.selected;
        const offset = selectedPage * perPage;
        setCurrentPage(selectedPage);
        setOffset(offset);
        // loadMoreData();
    };
    const handleSearch = (event) => {
        setSearch(event.target.value);
      };
    
    // const data = {
    //     const filter = arrUsers.filter((item) =>
    //     item.name.toLowerCase().includes(search.toLowerCase())
    //     ),
    //   };
    //   console.log(data);
    
    // const handleDeleteUser= async(User)=>{
    //     console.log('Delete!',User)
    //     try {
    //         let res = await deleteUserService(User.id);
    //         if(res && res.data.errCode === 0){
    //             await getAllUsersFromReact();
    //         }else{
    //             alert(res.data.errMessage)
    //         }
    //     } catch (error) {
    //         console.log(error)
    //     }
    // }


    return (
        <div className='list'>
            <div className="row">
                <div className="col-lg-5 col-md-9 col-lg-6">
                    <h3 className="mt-30 page-title">User</h3>
                </div>
                {/* <div className="col-lg-5 col-md-3 col-lg-6 back-btn">
                    <Button variant="contained" onClick={(e) => this.handleBack()}><i className="fas fa-arrow-left" /> Back</Button>
                </div> */}
            </div>
            <ol className="breadcrumb mb-30">
                <li className="breadcrumb-item"><a href="/">Dashboard</a></li>
                <li className="breadcrumb-item active">User</li>
            </ol>
            <div className='form-container'>
                <h4 className='text-center form-title'>List Of Users</h4>
                <div className='form-body'>
                    <div class="search" htmlFor="search">
                        <i class="fa-solid fa-magnifying-glass"></i>
                        <input className="form-control" id="search" type="text" onChange={handleSearch} placeholder="Search username, email and phone number..." />
                    </div>
                    {/* <div className='d-flex justify-content-end'>

                        <form className="d-flex">
                            <input
                                className='form-control'
                                type="text"
                                placeholder="Search...."
                                // onChange={e=>setSearchInput(e.target.value)}
                                // value={searchInput} 

                                />
                            <button type='submit' style={{whiteSpace:"nowrap"}} className='btn btn-primary'>Search</button>
                        </form>
                    </div> */}
                    <div className='table-responsive mt-5'>
                        <table className="table table-hover">
                            <thead>
                                <tr>
                                    <th className='text-center align-middle form-title'>#</th>
                                    <th className='text-center align-middle form-title'>Id</th>
                                    <th className='text-center align-middle form-title'>Username</th>
                                    <th className='text-center align-middle form-title'>Email</th>
                                    <th className='text-center align-middle form-title'>Phone Number</th>
                                </tr>
                            </thead>
                            <tbody>
                                { isloaded ? arrUsers && arrUsers.map((item,index)=>{
                                    return(
                                        <tr key={item.id}>
                                            <td className='text-center align-middle'>{index+1}</td>
                                            <td className='text-center align-middle'>{item.id}</td>
                                            <td className='text-center align-middle'>{item.username}</td>
                                            <td className='text-center align-middle'>{item.email}</td>
                                            <td className='text-center align-middle'>{item.phoneNumber}</td>
                                            
                                        </tr>
                                    )
                                })
                                : 
                                <ThreeDots 
                                    height="60" 
                                    width="60" 
                                    radius="9"
                                    color="#FF6600" 
                                    ariaLabel="three-dots-loading"
                                    wrapperStyle={{}}
                                    wrapperClassName=""
                                    visible={true}
                                    />
                                }
                                
                            </tbody>
                        </table>
                    </div>
                    {isloaded &&
                        <Pagination handlePageClick={handlePageClick} pageCount={pageCount} currentPage={currentPage} />
                    }
                </div>
            </div>
        </div>

    )

}
export default ListUser;

