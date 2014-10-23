<manifest xmlns:android="http://schemas.android.com/apk/res/android" >

    <uses-permission android:name="android.permission.BLUETOOTH" />
    <uses-permission android:name="android.permission.BLUETOOTH_ADMIN" />
    <uses-permission android:name="com.samsung.accessory.permission.ACCESSORY_FRAMEWORK" />
    <uses-permission android:name="com.samsung.wmanager.APP" />
    <uses-permission android:name="com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY" />

    <application>
        <service android:name="${relativePackage}.${className}"
            android:exported="true"
            android:enabled="true" >
        </service>

        <receiver android:name="com.samsung.android.sdk.accessory.ServiceConnectionIndicationBroadcastReceiver" >
            <intent-filter>
                <action android:name="android.accessory.service.action.ACCESSORY_SERVICE_CONNECTION_IND" />
            </intent-filter>
        </receiver>
        <receiver android:name="com.samsung.android.sdk.accessory.RegisterUponInstallReceiver" >
            <intent-filter>
                <action android:name="android.accessory.device.action.REGISTER_AFTER_INSTALL" />
            </intent-filter>
        </receiver>


        <meta-data
            android:name="AccessoryServicesLocation"
            android:value="/res/xml/accessoryservices_${className}.xml" />
    </application>

</manifest>
