<?xml version="1.0" encoding="utf-8"?>

<resources>
    <application name="${sapServiceName}">
    <serviceProfile
         role = "consumer"
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
