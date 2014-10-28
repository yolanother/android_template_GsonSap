<?xml version="1.0" encoding="utf-8"?>

<!DOCTYPE resources [
<!ELEMENT resources (application)>
<!ELEMENT application (serviceProfile)+>
<!ATTLIST application name CDATA #REQUIRED>
<!ELEMENT serviceProfile (supportedTransports, serviceChannel+) >
<!ATTLIST application xmlns:android CDATA #IMPLIED>
<!ATTLIST serviceProfile xmlns:android CDATA #IMPLIED>
<!ATTLIST serviceProfile serviceImpl CDATA #REQUIRED>
<!ATTLIST serviceProfile role (provider | consumer) #REQUIRED>
<!ATTLIST serviceProfile name CDATA #REQUIRED>
<!ATTLIST serviceProfile id CDATA #REQUIRED>
<!ATTLIST serviceProfile version CDATA #REQUIRED>
<!ATTLIST serviceProfile serviceLimit (ANY | ONE_ACCESSORY | ONE_PEERAGENT)  "ANY">
<!ATTLIST serviceProfile serviceTimeout CDATA "10">
<!ELEMENT supportedTransports (transport)+>
<!ATTLIST supportedTransports xmlns:android CDATA #IMPLIED>
<!ELEMENT transport EMPTY> 
<!ATTLIST transport xmlns:android CDATA #IMPLIED>
<!ATTLIST transport type (TRANSPORT_WIFI|TRANSPORT_BT|TRANSPORT_BLE|TRANSPORT_USB) #REQUIRED>
<!ELEMENT serviceChannel EMPTY> 
<!ATTLIST serviceChannel xmlns:android CDATA #IMPLIED>
<!ATTLIST serviceChannel id CDATA #REQUIRED>
<!ATTLIST serviceChannel dataRate (Low | High | low | high) #REQUIRED>
<!ATTLIST serviceChannel priority (Low | Medium | High | low | medium | high) #REQUIRED>
<!ATTLIST serviceChannel reliability (enable | disable | ENABLE | DISABLE ) #REQUIRED>
]>
<resources>
    <application name="${sapServiceName}">
    <serviceProfile
         serviceImpl="${packageName}.${className}"
         role = "provider"
                      name = "${sapServiceName}"
                      id = "${sapServiceId}"
                      version = "2.0"
                      serviceLimit = "${sapServiceLimit}"
                      serviceTimeout = "${sapServiceTimeout}">
         <supportedTransports>
            <transport type = "TRANSPORT_BT"/>
         </supportedTransports>
         <serviceChannel id = "${sapChannel}"
                         dataRate = "${sapDataRate}"
                         priority = "${sapPriority}"
                         reliability = "${sapReliability}"/>
    </serviceProfile>
    </application>
</resources>
