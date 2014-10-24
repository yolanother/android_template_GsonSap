package ${packageName};

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

import com.doubtech.gear.gsonsapprovider.GenericGsonSapRequest;
import com.doubtech.gear.gsonsapprovider.GsonSapProvider;
import com.doubtech.gear.gsonsapprovider.GsonSapProvider.JsonSapProviderConnection.Requester;

@Channel(${sapChannel})
public class ${className} extends GsonSapProvider {
    public static final String TAG = ${className}.class.getSimpleName();

    public ${className}() {
        super(TAG);
    }

    @Override
    protected void onReceive(Requester requester, Object data) {
        // TODO Handle known incoming data types here
        
    }

    @Override
    protected void onReceiveRequest(Requester requester, GenericGsonSapRequest request) {
        // TODO Handle unidentified messages here as well as any requests
        // registered as GenericGsonSapRequests
        
    }
}
