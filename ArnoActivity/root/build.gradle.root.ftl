// Top-level build file where you can add configuration options common to all sub-projects/modules.
/**TODO APRES INIT :
 - à ajouter dans buildscript/dependencies (le merge ne fonctionne pas correctement)
        classpath "com.neenbedankt.gradle.plugins:android-apt:$aptPluginVersion"
         <#if hugoProj>classpath "com.jakewharton.hugo:hugo-plugin:$hugoPluginVersion"</#if>
 - (optionnel) Penser à changer l'ordre des repo maven pour mettre mavenLocal en premier
*/

buildscript {
    repositories {
        mavenLocal()
<#if mavenUrl != "mavenCentral">
        maven {
            url '${mavenUrl}'
        }
</#if>
<#if mavenUrl2 != "mavenCentral">
        maven {
            url '${mavenUrl2}'
        }
</#if>
        mavenCentral()
    }
   
}

allprojects {
    repositories {
        mavenLocal()
<#if mavenUrl != "mavenCentral">
        maven {
            url '${mavenUrl}'
        }
</#if>
<#if mavenUrl2 != "mavenCentral">
        maven {
            url '${mavenUrl2}'
        }
</#if>
        mavenCentral()
    }
}
