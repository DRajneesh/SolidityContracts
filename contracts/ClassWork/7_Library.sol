/*Problem Statement 7: Library

Objective: Build a contract myLibrary .
add functionalities by your own self
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyLibrary {
    address public librarian;
    uint public No_of_Members;
    uint public No_of_books;
    

    struct MemberDetails {
        string MName;
        string joinDate;
        string MGender;
    }

    struct member {
        bool isMember;
        MemberDetails details;
        uint256 OwnedbookBook;
    }

    struct bookDetail {
        bool isAvailable;
        string BName;
        string issuerperson;
        address Borrower;
        string genre;
    }

    mapping(uint256 => bookDetail) public books;
    mapping(uint256 => member) public members;

    constructor() {
        librarian = msg.sender;
    }

    function RegisterMember(
        uint256 uid,
        string memory _name,
        string memory _joinDate,
        string memory _Gender
    ) public {
        require(msg.sender != librarian, "you are not allowed");
        MemberDetails memory memberdetails = MemberDetails(
            _name,
            _joinDate,
            _Gender
        );
        member memory newmember = member(true, memberdetails, 0);
        members[uid] = newmember;
    }

    function addBook(uint256 bookid, string memory bName,string memory genre) public {
        require(msg.sender == librarian, "You are not Librarian");
        bookDetail memory newBook = bookDetail(
            true,
            bName,
            "Nobody",
            0x0000000000000000000000000000000000000000,
            genre
        );
        books[bookid] = newBook;
    }

    function borrowBook(uint256 bookid, uint256 uid) public {
        require(msg.sender != librarian, "you are not permitted");
        books[bookid].isAvailable = false;
        books[bookid].Borrower = msg.sender;
        books[bookid].issuerperson=members[uid].details.MName;
        members[uid].OwnedbookBook += 1;
    }

    function returnbook(uint256 bookid, uint256 uid) public {
        require(msg.sender != librarian, "you are not permitted");
        require(books[bookid].Borrower == msg.sender, "you have no real book");
        books[bookid].isAvailable = true;
         books[bookid].issuerperson="Nobody";
        books[bookid].Borrower = 0x0000000000000000000000000000000000000000;
        members[uid].OwnedbookBook -= 1;
    }
}
