import chroma from "chroma-js";
import { useEffect,useState } from 'react';
import { getAllColors } from '../../../services/productService';
import Select from 'react-select';


const SelectColor =(props)=>{
  const dot = (color = 'transparent') => ({
    alignItems: 'center',
    display: 'flex',
  
    ':before': {
      backgroundColor: color,
      borderRadius: 10,
      content: '" "',
      display: 'block',
      marginRight: 8,
      height: 10,
      width: 10,
    },
  });
  
  const colourStyles = {
    control: (styles) => ({ ...styles, backgroundColor: 'white' }),
    option: (styles, { data, isDisabled, isFocused, isSelected }) => {
      const color = chroma(data.color);
      return {
        ...styles,
        backgroundColor: isDisabled
          ? undefined
          : isSelected
          ? data.color
          : isFocused
          ? color.alpha(0.1).css()
          : undefined,
        color: isDisabled
          ? '#ccc'
          : isSelected
          ? chroma.contrast(color, 'white') > 2
            ? 'white'
            : 'black'
          : data.color,
        cursor: isDisabled ? 'not-allowed' : 'default',
  
        ':active': {
          ...styles[':active'],
          backgroundColor: !isDisabled
            ? isSelected
              ? data.color
              : color.alpha(0.3).css()
            : undefined,
        },
      };
    },
    input: (styles) => ({ ...styles, ...dot() }),
    placeholder: (styles) => ({ ...styles, ...dot('#ccc') }),
    singleValue: (styles, { data }) => ({ ...styles, ...dot(data.color) }),
  };
  
  const Arrays = (data, fieldName, fieldValue,fieldColor) => {
      let arrayItem = [];
      if (data && Array.isArray(data)) {
          data.map((item) => {
              arrayItem.push({ value: item[fieldValue],label: item[fieldName],color: item[fieldColor],name:'colorId' });
              return null;
          });
      }
      return arrayItem;
  };
  const [getList,setGetList]=useState({});

  useEffect (()=>{
      const getAllColorsFromReact = async() =>{
          let response = await getAllColors('ALL');
          if(response && response.data.errCode === 0){
              setGetList(response.data.colors);
          }
      }
      getAllColorsFromReact();
  },[])


 

  const handleSelectChange=(selected,index)=>{
    const {name,value}=selected;
    const list = [...props.listDetail];
    list[index][name] = value;
    props.onChangeColor(list);
  }
  return(
      <Select
          options={Arrays(getList, "name", "id","code")}
          // value={Arrays(getList, "name", "id","code")[0]}
          styles={colourStyles}
          onChange={(selected)=>handleSelectChange(selected,props.index)}
      />
  )
}
export default SelectColor;
   
