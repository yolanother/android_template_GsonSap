<?xml version="1.0"?>
<recipe>
    <merge from="AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
    <instantiate from="src/app_package/Service.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}.java" />
    <instantiate from="accessoryservices.xml.ftl"
                   to="res/xml/accessoryservices_${className?lower_case}.xml" />
    <instantiate from="consumer_accessoryservices.xml.ftl"
                   to="${escapeXmlAttribute(rootOut)}/consumer_accessoryservices_${className?lower_case}.xml" />

    <copy from="libs/sdk-v1.0.0.jar"
            to="${escapeXmlAttribute(libsOut)}/sdk-v1.0.0.jar" />
    <copy from="libs/accessory-v2.1.11.jar"
            to="${escapeXmlAttribute(libsOut)}/accessory-v2.1.11.jar" />
    <copy from="libs/gson-2.3.jar"
            to="${escapeXmlAttribute(libsOut)}/gson-2.3.jar" />
    <copy from="libs/gsonsapprovider.jar"
            to="${escapeXmlAttribute(libsOut)}/gsonsapprovider.jar" />


    <open file="${escapeXmlAttribute(srcOut)}/${className}.java" />
</recipe>
