<?xml version="1.0"?>
<recipe>

    <#if appCompat><dependency mavenUrl="com.android.support:appcompat-v7:19.+"/></#if>

    <merge from="AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <instantiate from="res/menu/main.xml.ftl"
            to="${escapeXmlAttribute(resOut)}/menu/${menuName}.xml" />

    <merge from="res/values/strings.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/strings.xml" />

    <merge from="res/values/dimens.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/dimens.xml" />
    <merge from="res/values-w820dp/dimens.xml"
             to="${escapeXmlAttribute(resOut)}/values-w820dp/dimens.xml" />

    <instantiate from="res/layout/activity_simple.xml.ftl" to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

    <instantiate from="src/app_package/SimpleActivity.java.ftl" to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

  
      <merge from="build.gradle.root.ftl" to="${escapeXmlAttribute(topOut)}/build.gradle" />
      <merge from="build.gradle.ftl" to="${escapeXmlAttribute(appOut)}/build.gradle" />
<!--je ne sais pas pourquoi, mais le merge ne fonctionne pas ici -->
      <instantiate from="gradle.properties.root.ftl" to="${escapeXmlAttribute(topOut)}/gradle.properties" />
      <merge from="gradle.properties.ftl" to="${escapeXmlAttribute(appOut)}/gradle.properties" />
      
      <instantiate from="gitignore_template" to="${escapeXmlAttribute(topOut)}/.gitignore" />


  

    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
    <open file="${escapeXmlAttribute(appOut)}/build.gradle" />
    <open file="${escapeXmlAttribute(topOut)}/build.gradle" />
    
</recipe>
