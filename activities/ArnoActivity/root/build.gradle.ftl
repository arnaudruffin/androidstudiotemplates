
/**TODO APRES INIT
 - ajouter à dependencies:
	apt "org.androidannotations:androidannotations:$AAVersion" 
 - nettoyer les "apply plugin " (un "apply plugin" par ligne, le merge foire tout)
*/

<#if isLibraryProject?? && isLibraryProject>
apply plugin: 'android-library'
<#else>
apply plugin: 'android'
</#if>
apply plugin: 'android-apt' 
<#if hugoProj>apply plugin: 'hugo'</#if>





dependencies {
    <#if dependencyList?? >
    <#list dependencyList as dependency>
    compile '${dependency}'
    </#list>
    </#if>
    compile "org.androidannotations:androidannotations-api:$AAVersion"
    <#if timberProj>compile "com.jakewharton.timber:timber:$TimberVersion"</#if>
}

apt {
    arguments {
        androidManifestFile variant.processResources.manifestFile
        resourcePackageName "${packageName}"
    }
}
