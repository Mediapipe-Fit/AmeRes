#!/bin/bash

source scripts/utils.sh
. scripts/envVar.sh
. scripts/ccutils.sh

export PATH=${PWD}/../bin:$PATH
export FABRIC_CFG_PATH=$PWD/../config/

setGlobals buyer
# peer chaincode invoke -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com --tls --cafile "${PWD}/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem" -C people -n people -c '{"Args":["CreateAsset","Seller_User1","8","3000000","25000","","User1","buyer"]}' 
#  peer chaincode invoke -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com --tls --cafile "${PWD}/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem" -C people -n people -c '{"Args":["CreateAsset","민준","256","50000","25000","","User1","buyer"]}' 
#  peer chaincode invoke -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com --tls --cafile "${PWD}/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem" -C people -n people -c '{"Args":["CreateAsset","재석","48","100000","25000","","User1","buyer"]}' 
#  peer chaincode invoke -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com --tls --cafile "${PWD}/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem" -C people -n people -c '{"Args":["CreateAsset","아리","73","90000","25000","","User2","seller"]}' 
#  peer chaincode invoke -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com --tls --cafile "${PWD}/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem" -C people -n people -c '{"Args":["CreateAsset","노틸러스","27","25000","25000","","User2","seller"]}' 
 peer chaincode invoke -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com --tls --cafile "${PWD}/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem" -C people -n people -c '{"Args":["ReadAsset","Seller_User1"]}' 
setGlobals seller
#peer chaincode invoke -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com --tls --cafile "${PWD}/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem" -C people -n people -c '{"Args":["CreateAsset","asset2","fuck","5","25000","done"]}' 
# peer chaincode query -C people -n people -c '{"Args":["GetAllAssets"]}' 

setGlobals tax
# peer chaincode invoke -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com --tls --cafile "${PWD}/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem" -C revenue -n revenue -c '{"Args":["InitLedger"]}' 
# peer chaincode query -C revenue -n revenue -c '{"Args":["GetAllAssets"]}' 

setGlobals koreapower
# peer chaincode invoke -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com --tls --cafile "${PWD}/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem" -C market -n market -c '{"Args":["CreateAsset","sha256","너","나","5","25000","done","2022-04-21/23:15:45645"]}' 
# peer chaincode query -C market -n market -c '{"Args":["GetAllAssets"]}' 