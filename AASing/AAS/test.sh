#!/bin/bash

source scripts/utils.sh
. scripts/envVar.sh
. scripts/ccutils.sh

export PATH=${PWD}/../bin:$PATH
export FABRIC_CFG_PATH=$PWD/../config/

 setGlobals buyer

#  peer chaincode query -C people -n people -c '{"Args":["GetAllAssets"]}' 
#peer chaincode query -C people -n people -c '{"Args":["GetAssetHistory","asset3"]}' 


# setGlobals buyer
# peer chaincode invoke -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com --tls --cafile "${PWD}/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem" -C people -n people -c '{"Args":["CreateAsset","Seller_User1","5","2000","seller"]}' 
# peer chaincode invoke -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com --tls --cafile "${PWD}/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem" -C people -n people -c '{"Args":["CreateAsset","Seller_User2","10","5000","seller"]}' 
# peer chaincode invoke -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com --tls --cafile "${PWD}/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem" -C people -n people -c '{"Args":["CreateAsset","Buyer_User1","0","22000","buyer"]}' 
# peer chaincode invoke -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com --tls --cafile "${PWD}/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem" -C people -n people -c '{"Args":["CreateAsset","Buyer_User2","0","45000","buyer"]}' 
peer chaincode invoke -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com --tls --cafile "${PWD}/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem" -C people -n people -c '{"Args":["UpdateAsset","Buyer_User2","5","100000","buyer"]}' 
peer chaincode invoke -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com --tls --cafile "${PWD}/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem" -C people -n people -c '{"Args":["UpdateAsset","Buyer_User1","0","0","buyer"]}' 
peer chaincode invoke -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com --tls --cafile "${PWD}/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem" -C people -n people -c '{"Args":["UpdateAsset","Seller_User2","0","0","seller"]}' 
peer chaincode invoke -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com --tls --cafile "${PWD}/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem" -C people -n people -c '{"Args":["UpdateAsset","Seller_User1","0","0","seller"]}' 
# peer chaincode query -C people -n people -c '{"Args":["GetAllAssets"]}' 

setGlobals tax
# peer chaincode invoke -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com --tls --cafile "${PWD}/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem" -C revenue -n revenue -c '{"Args":["CreateAsset","TAX","REVENUE","3"]}' 
# peer chaincode invoke -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com --tls --cafile "${PWD}/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem" -C revenue -n revenue -c '{"Args":["UpdateAsset","TAX","REVENUE","6"]}' 
# peer chaincode query -C revenue -n revenue -c '{"Args":["ReadAsset","TAX"]}' 


setGlobals koreapower
peer chaincode invoke -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com --tls --cafile "${PWD}/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem" -C market -n market -c '{"Args":["UpdateAsset","Seller_User1","Seller_User1"," ","10","8000","SALE","time"]}' 
peer chaincode invoke -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com --tls --cafile "${PWD}/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem" -C market -n market -c '{"Args":["UpdateAsset","Seller_User2","Seller_User2"," ","5","10000","SALE","time"]}' 
# peer chaincode invoke -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com --tls --cafile "${PWD}/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem" -C market -n market -c '{"Args":["CreateAsset","Seller_User1","Seller_User1"," ","5","10000","SALE","time"]}' 
# peer chaincode invoke -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com --tls --cafile "${PWD}/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem" -C market -n market -c '{"Args":["CreateAsset","Seller_User2","Seller_User2"," ","5","10000","SALE","time"]}' 
# peer chaincode invoke -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com --tls --cafile "${PWD}/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem" -C market -n market -c '{"Args":["DeleteAsset","c5c46e15156d8150673641cc1f5aea1a2c2b5945697f86f3aac3e3ac460546d1"]}' 
#peer chaincode query -C market -n market -c '{"Args":["GetAllAssets"]}' 