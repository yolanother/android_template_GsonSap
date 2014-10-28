package ${packageName};

import com.samsung.gear.gsonsapproviderservice.GenericGsonSapRequest;
import com.samsung.gear.gsonsapproviderservice.GsonSapProvider;
import com.samsung.gear.gsonsapproviderservice.GsonSapProvider.JsonSapProviderConnection.Requester;
import com.samsung.gear.gsonsapproviderservice.annotations.Channel;

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
