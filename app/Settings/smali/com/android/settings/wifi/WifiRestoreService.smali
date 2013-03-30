.class public Lcom/android/settings/wifi/WifiRestoreService;
.super Landroid/app/Service;
.source "WifiRestoreService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiRestoreService$WifiLocationListener;
    }
.end annotation


# instance fields
.field private final LOCATION_REQUEST_DELAY:J

.field private mChannel:Landroid/net/wifi/WifiManager$Channel;

.field private mHandler:Landroid/os/Handler;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mWifiConfigurationManager:Lcom/android/settings/wifi/WifiConfigurationManager;

.field private mWifiLocationListener:Lcom/android/settings/wifi/WifiRestoreService$WifiLocationListener;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 98
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->LOCATION_REQUEST_DELAY:J

    .line 102
    new-instance v0, Lcom/android/settings/wifi/WifiRestoreService$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiRestoreService$1;-><init>(Lcom/android/settings/wifi/WifiRestoreService;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->mHandler:Landroid/os/Handler;

    .line 120
    new-instance v0, Lcom/android/settings/wifi/WifiRestoreService$WifiLocationListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/WifiRestoreService$WifiLocationListener;-><init>(Lcom/android/settings/wifi/WifiRestoreService;Lcom/android/settings/wifi/WifiRestoreService$1;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiLocationListener:Lcom/android/settings/wifi/WifiRestoreService$WifiLocationListener;

    .line 22
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiRestoreService;)Lcom/android/settings/wifi/WifiRestoreService$WifiLocationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiLocationListener:Lcom/android/settings/wifi/WifiRestoreService$WifiLocationListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiRestoreService;)Landroid/location/LocationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiRestoreService;)Lcom/android/settings/wifi/WifiConfigurationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiConfigurationManager:Lcom/android/settings/wifi/WifiConfigurationManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiRestoreService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiRestoreService;->setWifiConfiguration()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiRestoreService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private saveWifiConfiguration(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .parameter "context"
    .parameter "configuration"

    .prologue
    .line 203
    if-nez p2, :cond_0

    .line 211
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiRestoreService;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 208
    invoke-static {p2}, Lcom/android/settings/wifi/WifiConfigurationManager;->getWifiConfigurationKey(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiConfigurationManager:Lcom/android/settings/wifi/WifiConfigurationManager;

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/WifiConfigurationManager;->restoreCert(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setWifiConfiguration()V
    .locals 12

    .prologue
    .line 153
    iget-object v8, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 154
    .local v1, configList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v8, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v6

    .line 155
    .local v6, results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v1, :cond_4

    .line 156
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 157
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 158
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const/4 v9, 0x1

    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 160
    :cond_1
    if-eqz v6, :cond_0

    .line 161
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/ScanResult;

    .line 162
    .local v7, scanResult:Landroid/net/wifi/ScanResult;
    iget-object v8, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 165
    iget-object v8, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 166
    invoke-static {v7}, Lcom/android/settings/wifi/WifiConfigurationManager;->getWifiConfiguratinKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v4

    .line 167
    .local v4, key:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiConfigurationManager:Lcom/android/settings/wifi/WifiConfigurationManager;

    invoke-virtual {v8, v4}, Lcom/android/settings/wifi/WifiConfigurationManager;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    .line 168
    .local v5, restoreConfig:Landroid/net/wifi/WifiConfiguration;
    if-nez v5, :cond_3

    .line 169
    iget-object v8, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiConfigurationManager:Lcom/android/settings/wifi/WifiConfigurationManager;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "restore"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/settings/wifi/WifiConfigurationManager;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    .line 171
    :cond_3
    if-eqz v5, :cond_2

    const-string v8, "restore"

    invoke-virtual {v5, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 172
    iget-object v8, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiConfigurationManager:Lcom/android/settings/wifi/WifiConfigurationManager;

    invoke-virtual {v8, v5}, Lcom/android/settings/wifi/WifiConfigurationManager;->removeWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 180
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #restoreConfig:Landroid/net/wifi/WifiConfiguration;
    .end local v7           #scanResult:Landroid/net/wifi/ScanResult;
    :cond_4
    if-eqz v6, :cond_7

    .line 181
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/ScanResult;

    .line 182
    .restart local v7       #scanResult:Landroid/net/wifi/ScanResult;
    iget-object v8, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 185
    invoke-static {v7}, Lcom/android/settings/wifi/WifiConfigurationManager;->getWifiConfiguratinKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v4

    .line 186
    .restart local v4       #key:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiConfigurationManager:Lcom/android/settings/wifi/WifiConfigurationManager;

    invoke-virtual {v8, v4}, Lcom/android/settings/wifi/WifiConfigurationManager;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    .line 187
    .restart local v5       #restoreConfig:Landroid/net/wifi/WifiConfiguration;
    if-nez v5, :cond_6

    .line 188
    iget-object v8, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiConfigurationManager:Lcom/android/settings/wifi/WifiConfigurationManager;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "restore"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/settings/wifi/WifiConfigurationManager;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    .line 190
    :cond_6
    if-eqz v5, :cond_5

    .line 191
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0, v5}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 192
    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    const/4 v8, 0x0

    iput-object v8, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 193
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 194
    invoke-direct {p0, p0, v0}, Lcom/android/settings/wifi/WifiRestoreService;->saveWifiConfiguration(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 195
    iget-object v8, p0, Lcom/android/settings/wifi/WifiRestoreService;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x2

    const-wide/16 v10, 0x7530

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 200
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #restoreConfig:Landroid/net/wifi/WifiConfiguration;
    .end local v7           #scanResult:Landroid/net/wifi/ScanResult;
    :cond_7
    return-void
.end method

.method private updateConnectedWifi()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const-wide/16 v10, 0x0

    .line 73
    iget-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v7

    .line 74
    .local v7, configList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v9

    .line 75
    .local v9, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v7, :cond_3

    if-eqz v9, :cond_3

    .line 76
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    .line 77
    .local v6, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v1, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v12, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 80
    :cond_1
    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    iget-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiLocationListener:Lcom/android/settings/wifi/WifiRestoreService$WifiLocationListener;

    invoke-virtual {v0, v6}, Lcom/android/settings/wifi/WifiRestoreService$WifiLocationListener;->setWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 85
    iget-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x64

    const/high16 v4, 0x3f00

    iget-object v5, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiLocationListener:Lcom/android/settings/wifi/WifiRestoreService$WifiLocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 87
    iget-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiRestoreService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiConfigurationManager:Lcom/android/settings/wifi/WifiConfigurationManager;

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2, v6}, Lcom/android/settings/wifi/WifiConfigurationManager;->updateCurrentWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 95
    .end local v6           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v8           #i$:Ljava/util/Iterator;
    :cond_3
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 32
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 33
    new-instance v0, Lcom/android/settings/wifi/WifiConfigurationManager;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiConfigurationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiConfigurationManager:Lcom/android/settings/wifi/WifiConfigurationManager;

    .line 34
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiRestoreService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 35
    iget-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiRestoreService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/net/wifi/WifiManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/WifiManager$ChannelListener;)Landroid/net/wifi/WifiManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    .line 36
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiRestoreService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->mLocationManager:Landroid/location/LocationManager;

    .line 37
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 42
    iget-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 43
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 44
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 48
    iget-object v1, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiConfigurationManager:Lcom/android/settings/wifi/WifiConfigurationManager;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiConfigurationManager;->initWifiList()V

    .line 49
    if-eqz p1, :cond_0

    .line 50
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, action:Ljava/lang/String;
    const-string v1, "miui.intent.action.UPDATE_CURRENT_WIFI_CONFIGURATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiRestoreService;->updateConnectedWifi()V

    .line 64
    .end local v0           #action:Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 53
    .restart local v0       #action:Ljava/lang/String;
    :cond_1
    const-string v1, "android.intent.action.RESTORE_FINISH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 54
    iget-object v1, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiConfigurationManager:Lcom/android/settings/wifi/WifiConfigurationManager;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiConfigurationManager;->parseRestoreWifi()V

    .line 55
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiRestoreService;->setWifiConfiguration()V

    goto :goto_0

    .line 57
    :cond_2
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 58
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiRestoreService;->setWifiConfiguration()V

    goto :goto_0

    .line 59
    :cond_3
    const-string v1, "miui.intent.action.WIFI_SYNC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiConfigurationManager:Lcom/android/settings/wifi/WifiConfigurationManager;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiConfigurationManager;->updateWifiList()V

    .line 61
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiRestoreService;->setWifiConfiguration()V

    goto :goto_0
.end method
