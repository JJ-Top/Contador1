// SPDX-License-Identifier: JAIRO LAMUS
pragma solidity ^0.7.5;

contract Contador1 {
    
    //scope global o local, es el estado del contrado
    //declaracion de variables de estado de un SmartContract

    uint256 v_count;
    
    //cuando hacemos el deploy del contrato a la blockchain tenemos que inicializar ese estado, 
    //usamos una funcion constructora
    //es la unica vez que se llama esa funcion
    
    constructor(){
        v_count=49;    
    }
    
    //function Contador(uint256 _count) public { //_count es el receptor del valor pasado por argumento cuando se vaya a hacer el deploy del smartcontract, cuando se suba a la blocjckchain
    //    v_count = _count;
    //}
    
    function setCount(uint256 _count) public { //public lo pueden ver otras transacciones de afuera del contrato
        v_count = _count;
    }
    
    function setIncrementCount() public {
        v_count +=1;
    }
    
    //Esta funcion no consume gas
    //view le dice al nodo o maquina virtual que esta ejecutando esta funcion, esta llamada no va a cambiar nada del estado del contrato
    //              solo leera la variable para retornarlo
    //returns hay que ponerlo para saber el tipo de valor a retornar
    function getCount() public view returns(uint256){
        return v_count;    
    }
    
    //Esta funcion no consume gas
    //pure quiere decir que ni va escribir ni leer nada del contrato, ni siquiera lee algo del contratp
    function getNumber() public pure returns(uint256){
        return 34;
    }
    
    //Ejecutar instrucciones de un smart contract de Ethereum requiere Gas, que es una unidad q representa actividad computacional.
    //esta unidad se paga con ETH
    
    
    
    
}