// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract ContratoInicial {
  address[16] public perrosAdoptados;

  function adoptar(uint perroIndex) public returns(bool){
    require(perroIndex >=0 && perroIndex<= 15,"Fuera de Rango");
    bool adoptarConExito=true;

    if(perrosAdoptados[perroIndex] ==address(0)){
      perrosAdoptados[perroIndex]= msg.sender;
    }else{
      adoptarConExito=false;
    }
    return adoptarConExito;

  }

  function desadoptar(uint perroIndex) public returns(bool){
    require(perroIndex >=0 && perroIndex<= 15,"Fuera de Rango");
    bool desAdoptarConExito=true;
  
    if(perrosAdoptados[perroIndex] ==msg.sender){
      perrosAdoptados[perroIndex]= address(0);
    }else{
      desAdoptarConExito=false;
    }
    return desAdoptarConExito;

  }

  function getPerrosAdoptados() public view returns (address[16] memory){
    return perrosAdoptados;
  }
}
