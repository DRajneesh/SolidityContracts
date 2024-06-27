/*Develop a contract with a function addProductDetails that allows 
adding product details (productId, productName, price). 
Utilize a struct to organize and store this information in a mapping.*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract addProductdetails{

    struct product{
        string productName;
        uint   price;
    }

    mapping (uint => product ) public products;

    function addproductdetails(uint productId, string memory productName,uint price)public {
            product memory newProduct = product(productName,price);
            products[productId]=newProduct;
    }
}