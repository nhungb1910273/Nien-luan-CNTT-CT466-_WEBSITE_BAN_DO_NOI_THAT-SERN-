import React,{Component} from "react";
import { Button, Modal, ModalHeader, ModalBody, ModalFooter } from 'reactstrap';
import { emitter } from "../../../../utils/emitter";
import _ from 'lodash';
export default class ModalEditUser extends Component {
    constructor(props){
        super(props);
        this.state = {
            id: '',
            name: '',
            image: '',
            price: '',
            priceDiscount: '',
            percent: '',
            description:'',
            context:'',
            typeId:'',
            errMessage:'',
        }
        this.listenToEmitter();
    }
    // fire event: child -> parent (props)
    // parent -> child (ref)
    // => both: emitter(event)

    listenToEmitter(){
        // emitter.on('EVENT_CLEAR_MODAL_DATA',data =>{
        //     console.log('listen emitter from parent: ',data)
        // })
        emitter.on('EVENT_CLEAR_MODAL_DATA',()=>{
            //reset state
            this.setState ({
                id: '',
                name: '',
                image: '',
                price: '',
                priceDiscount: '',
                percent: '',
                description:'',
                context:'',
                typeId:'',
            })
        })
    }

    componentDidMount(){
        
        let product = this.props.currentProduct;
        // let  {currentUser} = this.props

        if(product && !_.isEmpty(product)){
            this.setState({
                id: product.id,
                name: product.name,
                image: product.image,
                firstName: product.firstName,
                lastName:product.lastName,
                address: product.address,
                phoneNumber: product.phoneNumber
            })
        }
    }

    toggle=()=>{
        this.props.toggleFromParent()
    }
    
    handleOnChangeInput = (event,id) => {
        //good code
        let copyState = { ...this.state };
        copyState[id] = event.target.value;
        this.setState({
            ...copyState
        })
    }

    checkValidateInput=()=>{
        let isValue = true;
        let arrInput = ['email','password','firstName','lastName','phoneNumber'];
        for(let i = 0; i< arrInput.length;i++){
            console.log(this.state[arrInput[i]],arrInput[i])
            if(!this.state[arrInput[i]]){
                isValue = false;
                alert('Missing parameter: '+arrInput[i]);
                break;
            }
        }
        return isValue;
    }

    handleSaveUser =()=>{
        let isValid = this.checkValidateInput();
        if(isValid === true){
            // call api edit user modal
            this.props.editUser(this.state);
        }
    }
    render(){
        // console.log('check child prop',this.props);
        // console.log('check child open modal',this.props.isOpen)
        return(
            <Modal 
                isOpen={this.props.isOpen} 
                toggle={()=>{this.toggle()}} 
                className={this.props.className}
                size="lg"
                centered
            >
                <ModalHeader toggle={()=>{this.toggle()}}>Edit a new user</ModalHeader>
                <ModalBody>
                    <div className="container">
                        <div className="">
                            <form className="row g-3" action="/post-crud" method="POST">
                                <div className="col-md-6">
                                    <label className="form-label">Email</label>
                                    <input 
                                        type="email" 
                                        required 
                                        value={this.state.email} 
                                        className="form-control" 
                                        onChange={(event) => {this.handleOnChangeInput(event,"email")}} 
                                        disabled
                                        />
                                </div>
                                <div className="col-md-6">
                                    <label className="form-label">Password</label>
                                    <input 
                                        type="password" 
                                        className="form-control" 
                                        value={this.state.password} 
                                        minLength={8} 
                                        name="password" 
                                        required 
                                        onChange={(event) => {this.handleOnChangeInput(event,"password")}} 
                                    />
                                </div>
                                <div className="col-12">
                                    <label className="form-label">Address</label>
                                    <input 
                                        type="text" 
                                        className="form-control" 
                                        required 
                                        value={this.state.address} 
                                        onChange={(event) => {this.handleOnChangeInput(event,"address")}} 
                                    />
                                </div>
                                <div className="col-md-6">
                                    <label className="form-label">Firstname</label>
                                    <input 
                                        type="text" 
                                        className="form-control" 
                                        required 
                                        value={this.state.firstName} 
                                        onChange={(event) => {this.handleOnChangeInput(event,"firstName")}} 
                                    />
                                </div>
                                <div className="col-md-6">
                                    <label className="form-label">Lastname</label>
                                    <input 
                                        type="text" 
                                        className="form-control" 
                                        required value={this.state.lastName} 
                                        onChange={(event) => {this.handleOnChangeInput(event,"lastName")}} 

                                    />
                                </div>
                                <div className="col-md-6">
                                    <label className="form-label">Phone number</label>
                                    <input 
                                        type="text" 
                                        className="form-control" 
                                        required 
                                        value={this.state.phoneNumber} 
                                        onChange={(event) => {this.handleOnChangeInput(event,"phoneNumber")}} 
                                        
                                    />
                                </div>
                                {/* <div className="col-md-4">
                                    <label className="form-label">Gender</label>
                                    <select name="gender" className="form-select">
                                        <option value="1">Male</option>
                                        <option value="0">Female</option>
                                    </select>
                                </div>
                                <div className="col-md-2">
                                        <label className="form-label">Role</label>
                                    <select name="roleId" className="form-select">
                                        <option value="1">Admin</option>
                                        <option value="2">Doctor</option>
                                        <option value="3">Patient</option>
                                    </select>
                                </div> */}
                                {/* <div className="col-12">
                                    <button type="submit" className="btn btn-primary" >Sign in</button>
                                </div> */}
                            </form>
                        </div>
                    </div>
                </ModalBody>
                <ModalFooter>
                    <Button color="primary" onClick={()=>{this.handleSaveUser()}}>Save changes</Button>{' '}
                    <Button color="secondary" onClick={()=>{this.toggle()}}>Cancel</Button>
                </ModalFooter>
            </Modal>
        )
    }
}