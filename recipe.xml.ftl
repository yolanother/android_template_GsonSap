<?xml version="1.0"?>
<recipe>
    <merge from="AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
    <instantiate from="src/app_package/Service.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}.java" />
    <instantiate from="accessoryservices.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/xml/accessoryservices_${className?lower_case}.xml" />
    <instantiate from="accessoryservices.xml.ftl"
                   to="${escapeXmlAttribute(resDir)}/xml/accessoryservices_${className?lower_case}.xml" />
    <instantiate from="consumer_accessoryservices.xml.ftl"
                   to="${escapeXmlAttribute(rootOut)}/consumer_accessoryservices_${className?lower_case}.xml" />

    <merge from="build.gradle.ftl"
             to="${escapeXmlAttribute(projectOut)}/build.gradle" />

    <open file="${escapeXmlAttribute(srcOut)}/${className}.java" />
</recipe>
