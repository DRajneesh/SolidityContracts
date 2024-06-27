/*Construct a contract with a function updateProductPrice that takes 
productId and newPrice as inputs. 
Utilize the products mapping to update the price of a specific product.*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UpdatePrice{

    
    struct product{
        string productName;
        uint   price;
    }

    mapping (uint => product ) public products;

    function addproductdetails(uint productId, string memory productName,uint price)public {
            product memory newProduct = product(productName,price);
            products[productId]=newProduct;
    }

    function updateProductPrice(uint Pid,uint newPrice) public {
            products[Pid].price=newPrice;
    }
}