<?xml version="1.0"?>
<globals>/Applications/Developpement/Android Studio 4.app/plugins/android/lib/templates/activities/ArnoActivity/recipe.xml.ftl
    <global id="manifestOut" value="${manifestDir}" />
    <global id="appCompat" type="boolean" value="${(minApiLevel lt 14)?string}" />
    <!-- e.g. getSupportActionBar vs. getActionBar -->
    <global id="Support" value="${(minApiLevel lt 14)?string('Support','')}" />
    <global id="srcOut" value="${srcDir}/${slashedPackageName(packageName)}" />
    <global id="resOut" value="${resDir}" />
    <global id="menuName" value="${classToResource(activityClass)}" />
    <global id="relativePackage" value="<#if relativePackage?has_content>${relativePackage}<#else>${packageName}</#if>" />
    
     <global id="topOut" value="." />
     <global id="appOut" value="./app" />



     <global id="hugoProj" type="boolean" value="${isHugoProject?string}" />
     <global id="timberProj" type="boolean" value="${isTimberProject?string}" />
     <global id="ottoProj" type="boolean" value="${isOttoProject?string}" />
      <global id="picassoProj" type="boolean" value="${isPicassoProject?string}" />
      <global id="croutonProj" type="boolean" value="${isCroutonProject?string}" />

     <global id="mavenUrl" value="http://maven2.rd.francetelecom.fr/proxy/repository/public" />
     <global id="mavenUrl2" value="http://maven2.rd.francetelecom.fr/proxy/repository/inhouse" />
</globals>
