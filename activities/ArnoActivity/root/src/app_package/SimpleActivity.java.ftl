package ${packageName};

import <#if appCompat>android.support.v7.app.ActionBarActivity<#else>android.app.Activity</#if>;
<#if applicationPackage??>import ${applicationPackage}.R;</#if>

import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.OptionsItem;
import org.androidannotations.annotations.OptionsMenu;

<#if hugoProj>import hugo.weaving.DebugLog;</#if>
<#if timberProj>import timber.log.Timber;</#if>

@EActivity(R.layout.${layoutName})
@OptionsMenu(R.menu.${menuName})
public class ${activityClass} extends ${(appCompat)?string('ActionBar','')}Activity {

  	@AfterViews
    <#if hugoProj>@DebugLog</#if>
    public void init() {
        //init...
    }


    <#if hugoProj>@DebugLog</#if>  
    @OptionsItem(R.id.action_settings)
    public void showSettings() {
        <#if timberProj>Timber.d("Supposed to be showing settings right now");</#if>
    }
}
