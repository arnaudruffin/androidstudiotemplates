package ${packageName};

import android.app.Application;
import org.androidannotations.annotations.EApplication;
import timber.log.Timber;


@EApplication
public class MyApplication extends Application {

   @Override
    public void onCreate() {
        super.onCreate();

        //init log
        if (BuildConfig.DEBUG) {
            Timber.plant(new Timber.DebugTree());
        }

    }
}
