
/**TODO APRES INIT
 - ajouter à dependencies:
	apt "org.androidannotations:androidannotations:$AAVersion" 
 - nettoyer les "apply plugin " (un "apply plugin" par ligne, le merge foire tout) comme ci-dessous
 apply plugin: 'com.android.application'
apply plugin: 'android-apt'
<#if hugoProj> apply plugin: 'hugo'</#if>
*/

<#if isLibraryProject?? && isLibraryProject>
apply plugin: 'android-library'
<#else>
apply plugin: 'com.android.application'
</#if>
apply plugin: 'android-apt' 
<#if hugoProj>
apply plugin: 'hugo'
</#if>

/**APPLY TODO:

**/




dependencies {
    <#if dependencyList?? >
    <#list dependencyList as dependency>
    compile '${dependency}'
    </#list>
    </#if>
    compile "org.androidannotations:androidannotations-api:$AAVersion"
    <#if timberProj>compile "com.jakewharton.timber:timber:$TimberVersion"</#if>
    apt "org.androidannotations:androidannotations:$AAVersion" 
    <#if picassoProj>compile "com.squareup.picasso:picasso:$PicassoVersion"</#if>
    <#if ottoProj>compile "com.squareup:otto:$OttoVersion"</#if>
    <#if croutonProj>compile "de.keyboardsurfer.android.widget:crouton:$CroutonVersion"</#if>
    
}

apt {
    arguments {
        androidManifestFile variant.processResources.manifestFile
        resourcePackageName "${packageName}"
    }
}
