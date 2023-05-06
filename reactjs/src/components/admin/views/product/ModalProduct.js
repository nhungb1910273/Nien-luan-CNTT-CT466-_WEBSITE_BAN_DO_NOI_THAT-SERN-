import React,{Component} from "react";
import { Button, Modal, ModalHeader, ModalBody, ModalFooter } from 'reactstrap';
import { emitter } from "../../../../utils/emitter";

import { CKEditor } from '@ckeditor/ckeditor5-react';
import ClassicEditor from '@ckeditor/ckeditor5-build-classic';

// import { SketchPicker } from 'react-color';


export default class ModalProduct extends Component {
    
      
    constructor(props){
        super(props);
        this.state = {
            name: '',
            image: '',
            price: '',
            priceDiscount: '',
            percent: '',
            description:'',
            context:'',
            typeId:'',
            listColor: [
                {color:"#00000"}
            ]
        }
        this.listenToEmitter();
    }

    listenToEmitter(){
        emitter.on('EVENT_CLEAR_MODAL_DATA',()=>{
            //reset state
            this.setState ({
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
    }

    toggle=()=>{
        this.props.toggleFromParent()
    }
 
    handleOnChangeInput = (event,id) => {
        let copyState = { ...this.state };
        copyState[id] = event.target.value;
        this.setState({
            ...copyState,
        })
        console.log(this.state)
    }

    checkValidateInput=()=>{
        let isValue = true;
        let arrInput = ['name','price','priceDiscount','percent','description','context','typeId'];
        for(let i = 0; i< arrInput.length;i++){
            if(!this.state[arrInput[i]]){
                isValue = false;
                alert('Missing parameter: '+ arrInput[i]);
                break;
            }
        }
        return isValue;

    }

    handleAddNewProduct = async()=>{
        let isValid = this.checkValidateInput();
        if(isValid === true){
            // call api create modal
            // this.props.createNewProduct(this.state);

        }
    }
    
    handleAddColor = ()=>{
        this.setState({
            listColor:[...this.state.listColor,{color:''}]
        })
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
                <ModalHeader toggle={()=>{this.toggle()}}>Create a new product</ModalHeader>
                <ModalBody>
                    <div className="container">
                        <div className="">
                            <div className="row g-3">
                                <div className="col-md-8">
                                    <label className="form-label">Name</label>
                                    <input type="text" required value={this.state.name} className="form-control" onChange={(event) => {this.handleOnChangeInput(event,"name")}} />
                                </div>
                                
                                <div className="col-md-4">
                                    <label className="form-label">Type</label>
                                    <select name="type" className="form-select">
                                        <option value="{this.state.typeId}">Ghế</option>
                                        <option value="{this.state.typeId}">Bàn</option>
                                    </select>
                                </div>
                                <div class="mb-3 col-md-6">
                                    <label for="formFile" >Image show</label>
                                    <input className="form-control" type="file" id="formFile"/>
                                </div>
                                <div class="mb-3 col-md-6">
                                    <label for="formFile" >Image second show</label>
                                    <input className="form-control" type="file" id="formFile"/>
                                </div>
                                <div className="col-md-5">
                                    <label className="form-label">Price</label>
                                    <input 
                                        type="number" 
                                        className="form-control" 
                                        value={this.state.price} 
                                        minLength={8} 
                                        name="price" 
                                        required 
                                        onChange={(event) => {this.handleOnChangeInput(event,"price")}} 
                                    />
                                </div>
                                <div className="col-md-5">
                                    <label className="form-label">Price discount</label>
                                    <input 
                                        type="number" 
                                        className="form-control" 
                                        value={this.state.priceDiscount} 
                                        minLength={8} 
                                        name="priceDiscount" 
                                        required 
                                        onChange={(event) => {this.handleOnChangeInput(event,"priceDiscount")}} 
                                    />
                                </div>
                                <div className="col-md-2 mb-3">
                                    <label className="form-label">Percent</label>
                                    <input 
                                        type="number" 
                                        className="form-control" 
                                        required 
                                        value={this.state.percent} 
                                        onChange={(event) => {this.handleOnChangeInput(event,"percent")}} 
                                    />
                                </div>
                                {this.state.listColor.map((item,index)=>(
                                    
                                        <div className="col-12" key={index}>
                                            <label>Color: </label>
                                            <div className="d-flex algin-item-center mt-2">
                                                <input type="color" name="color" value={item.color} onChange={(event)=>this.handleOnChangeInput(event,index)} />
                                                <p className="mx-2" style={ { color: `${ item.color }`,margin:'0px' } }>{item.color}</p>
                                            </div>
                                            {this.state.listColor.length - 1 === index && this.state.listColor.length < 4 && (
                                                 <div className="col-12">
                                                    <button style={{color:'rgba(13,18,22,.7)',}} onClick={()=>this.handleAddColor()} >+ Add color</button>
                                                </div>
                                            )}
                                        </div>
                                    ))}
                                
                                {/* <div className="col-12">
                                    <label>Color: </label>
                                    <div className="d-flex algin-item-center mt-2">
                                        <input type="color" onChange={(event)=>this.handleOnChangeInput(event,"background1")} value={this.state.background}/>
                                        <p className="mx-2" style={ { color: `${ this.state.background }`,margin:'0px' } }>{this.state.background}</p>
                                    </div>
                                </div> */}

                                <div className="col-12">
                                    <CKEditor
                                        editor={ ClassicEditor }
                                        data="<p>Hello from CKEditor 5!</p>"
                                        onReady={ editor => {
                                            // You can store the "editor" and use when it is needed.
                                            console.log( 'Editor is ready to use!', editor );
                                        } }
                                        onChange={ ( event, editor ) => {
                                            const data = editor.getData();
                                            console.log( { event, editor, data } );
                                        } }
                                        onBlur={ ( event, editor ) => {
                                            console.log( 'Blur.', editor );
                                        } }
                                        onFocus={ ( event, editor ) => {
                                            console.log( 'Focus.', editor );
                                        } }                             
                                    />
                                </div>
                            </div>
                        </div>
                    </div>
                </ModalBody>
                <ModalFooter>
                    <Button color="primary" onClick={()=>{this.handleAddNewProduct()}}>Create</Button>
                    <Button color="secondary" onClick={()=>{this.toggle()}}>Cancel</Button>
                </ModalFooter>
            </Modal>
        )
    }
}