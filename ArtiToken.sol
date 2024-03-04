// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0; 
contract AtifSayisi{
    struct atifSayisi {  
        uint referenceCount;
        uint atifSayisi;
        uint kazanilantoken;
        uint articleid;

    }
        

    
    struct atif {
        string owner;
        uint id;
        string title;
        string content; 
    }

     string public url;

       constructor() {
        owner = msg.sender;
        require(msg.sender == owner);
        
     }


     
       
       address public owner; 
       

     mapping(uint => atif) private atifsayisi;

   function addArticle(uint articleid, string memory ownername, string memory title, string memory content) public {
    atif memory newArticle = atif(ownername, articleid, title, content);
    atifmiktari[articleid] = newArticle;
}
    
    mapping(uint => atif) private atifmiktari;
    mapping(uint => uint) private kazanilantoken;
    
    
    mapping(uint => atifSayisi) private atifSayisiMap;

    function referenceArticle(uint _atifSayisi) public {
    atifSayisiMap[_atifSayisi].referenceCount++; 
}

    function tokensayisi(uint _atifSayisi) public {
    kazanilantoken[_atifSayisi] = atifSayisiMap[_atifSayisi].referenceCount * 10;
    }
 }