let config = {
    "caddress": "0x830a2b7a09c6ae70f408d12031cee0e5683106cc",
    "cabi": [
        {
            "constant": false,
            "inputs": [
                {
                    "name": "_dId",
                    "type": "uint256"
                },
                {
                    "name": "_dName",
                    "type": "string"
                },
                {
                    "name": "_dEmail",
                    "type": "string"
                },
                {
                    "name": "_dContNum",
                    "type": "uint256"
                },
                {
                    "name": "_dEducation",
                    "type": "string"
                },
                {
                    "name": "_dAdd",
                    "type": "string"
                }
            ],
            "name": "setDoctorDetails",
            "outputs": [],
            "payable": false,
            "stateMutability": "nonpayable",
            "type": "function"
        },
        {
            "constant": false,
            "inputs": [
                {
                    "name": "_pId",
                    "type": "uint256"
                },
                {
                    "name": "_pName",
                    "type": "string"
                },
                {
                    "name": "_pEmail",
                    "type": "string"
                },
                {
                    "name": "_pContNum",
                    "type": "uint256"
                },
                {
                    "name": "_padd",
                    "type": "string"
                },
                {
                    "name": "_consultedDoctor",
                    "type": "uint256"
                }
            ],
            "name": "setPatientDetails",
            "outputs": [],
            "payable": false,
            "stateMutability": "nonpayable",
            "type": "function"
        },
        {
            "inputs": [
                {
                    "name": "_receptionist",
                    "type": "address"
                }
            ],
            "payable": false,
            "stateMutability": "nonpayable",
            "type": "constructor"
        },
        {
            "constant": true,
            "inputs": [
                {
                    "name": "_dId",
                    "type": "uint256"
                }
            ],
            "name": "getDoctorDetails",
            "outputs": [
                {
                    "name": "",
                    "type": "string"
                },
                {
                    "name": "",
                    "type": "string"
                },
                {
                    "name": "",
                    "type": "uint256"
                },
                {
                    "name": "",
                    "type": "string"
                },
                {
                    "name": "",
                    "type": "string"
                }
            ],
            "payable": false,
            "stateMutability": "view",
            "type": "function"
        },
        {
            "constant": true,
            "inputs": [
                {
                    "name": "_pId",
                    "type": "uint256"
                }
            ],
            "name": "getPatientInfo",
            "outputs": [
                {
                    "name": "",
                    "type": "string"
                },
                {
                    "name": "",
                    "type": "string"
                },
                {
                    "name": "",
                    "type": "uint256"
                },
                {
                    "name": "",
                    "type": "string"
                },
                {
                    "name": "",
                    "type": "uint256"
                }
            ],
            "payable": false,
            "stateMutability": "view",
            "type": "function"
        },
        {
            "constant": true,
            "inputs": [],
            "name": "OwnerOfHospital",
            "outputs": [
                {
                    "name": "",
                    "type": "address"
                }
            ],
            "payable": false,
            "stateMutability": "view",
            "type": "function"
        },
        {
            "constant": true,
            "inputs": [],
            "name": "receptionist",
            "outputs": [
                {
                    "name": "",
                    "type": "address"
                }
            ],
            "payable": false,
            "stateMutability": "view",
            "type": "function"
        }
    ]
}