import Select from 'react-select';
import { useEffect,useState } from 'react';
import { getAllCategories } from '../../../services/categoryService';

const SelectCategory =(props)=>{
    const [value,setValue]=useState({});
    const val= props.value;

    const Arrays = (data, fieldName, fieldValue) => {
        let arrayItem = [];
        if (data && Array.isArray(data)) {
            data.map((item, key) => {
                arrayItem.push({ value: item[fieldValue], label: item[fieldName] });
                return null;
            });
        }
        return arrayItem;
    };

    const [getList,setGetList]=useState([]);

    useEffect (()=>{
        const getAllCategoriesFromReact = async() =>{
            let response = await getAllCategories('ALL');
            if(response && response.data.errCode === 0){
                var data = response.data.categories;
                setGetList(data);
                for(let i=0;i<data.length;i++){
                    if(data[i].id === val){
                        setValue({
                            value:data[i].id,
                            label:data[i].name
                        })
                    }
                }
            }
        }
        getAllCategoriesFromReact();
    },[val])
    
    
    const handleSelectChange = (name) => {
        console.log(name);
        props.onSelected(name.value)
    };

    
    return(
        <Select 
            name="categoryId" 
            
            isSearchable={true} 
            onChange={handleSelectChange} 
            options={Arrays(getList, "name", "id")} 
            />
    )
}

export default SelectCategory;