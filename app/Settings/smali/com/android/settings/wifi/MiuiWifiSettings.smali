.class public Lcom/android/settings/wifi/MiuiWifiSettings;
.super Lcom/android/settings/wifi/WifiSettings;
.source "MiuiWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/MiuiWifiSettings$ArrowClickListener;
    }
.end annotation


# instance fields
.field private mIsWifiSetupWizard:Z

.field private mNextButton:Landroid/widget/Button;

.field private mNotifyOpenNetworks:Landroid/preference/CheckBoxPreference;

.field private mWifiEnablePreference:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;-><init>()V

    return-void
.end method

.method private addAccessPoint(Ljava/util/List;Lcom/android/settings/wifi/MiuiAccessPoint;)V
    .locals 1
    .parameter
    .parameter "accessPoint"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/wifi/AccessPoint;",
            ">;",
            "Lcom/android/settings/wifi/MiuiAccessPoint;",
            ")V"
        }
    .end annotation

    .prologue
    .line 377
    .local p1, accessPoints:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/wifi/AccessPoint;>;"
    new-instance v0, Lcom/android/settings/wifi/MiuiWifiSettings$ArrowClickListener;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/wifi/MiuiWifiSettings$ArrowClickListener;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings;Lcom/android/settings/wifi/AccessPoint;)V

    .line 378
    .local v0, arrowClickListener:Lcom/android/settings/wifi/MiuiWifiSettings$ArrowClickListener;
    invoke-virtual {p2, v0}, Lcom/android/settings/wifi/MiuiAccessPoint;->setArrowClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    return-void
.end method

.method private initUI()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 101
    iget-boolean v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsWifiSetupWizard:Z

    if-eqz v2, :cond_1

    .line 102
    const-string v2, "wifi_settings"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/MiuiWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 103
    .local v1, wifiSettings:Landroid/preference/Preference;
    if-eqz v1, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 119
    .end local v1           #wifiSettings:Landroid/preference/Preference;
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    const-string v2, "wifi_add_network"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/MiuiWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 110
    .local v0, addWifi:Landroid/preference/Preference;
    if-eqz v0, :cond_2

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 114
    :cond_2
    const-string v2, "notify_open_networks"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/MiuiWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNotifyOpenNetworks:Landroid/preference/CheckBoxPreference;

    .line 116
    iget-object v5, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNotifyOpenNetworks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "wifi_networks_available_notification_on"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 118
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNotifyOpenNetworks:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    move v2, v4

    .line 116
    goto :goto_1
.end method

.method private isWifiConnected()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 389
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 391
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 392
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private manuallyAddNetwork()V
    .locals 3

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/EditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 227
    const-string v1, "edit_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 228
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/MiuiWifiSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 230
    :cond_0
    return-void
.end method


# virtual methods
.method protected addMessagePreference(I)V
    .locals 2
    .parameter "messageId"

    .prologue
    .line 169
    const-string v1, "nearby_wifi"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/MiuiWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 170
    .local v0, wifiList:Landroid/preference/PreferenceCategory;
    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiEnablePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 174
    return-void
.end method

.method protected changeNextButtonState(Z)V
    .locals 2
    .parameter "connected"

    .prologue
    .line 384
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 385
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNextButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const v0, 0x7f0c039b

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    .line 386
    return-void

    .line 385
    :cond_0
    const v0, 0x7f0c0848

    goto :goto_0
.end method

.method protected constructAccessPoints()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v1, accessPoints:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/wifi/AccessPoint;>;"
    new-instance v2, Lcom/android/settings/wifi/WifiSettings$Multimap;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiSettings$Multimap;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    .line 335
    .local v2, apMap:Lcom/android/settings/wifi/WifiSettings$Multimap;,"Lcom/android/settings/wifi/WifiSettings$Multimap<Ljava/lang/String;Lcom/android/settings/wifi/AccessPoint;>;"
    iget-object v11, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    .line 336
    .local v4, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v4, :cond_0

    .line 337
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 338
    .local v3, config:Landroid/net/wifi/WifiConfiguration;
    new-instance v0, Lcom/android/settings/wifi/MiuiAccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v0, v11, v3}, Lcom/android/settings/wifi/MiuiAccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 339
    .local v0, accessPoint:Lcom/android/settings/wifi/MiuiAccessPoint;
    iget-object v11, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v12, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v11, v12}, Lcom/android/settings/wifi/MiuiAccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 340
    iget-object v11, v0, Lcom/android/settings/wifi/MiuiAccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v11, v0}, Lcom/android/settings/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 344
    .end local v0           #accessPoint:Lcom/android/settings/wifi/MiuiAccessPoint;
    .end local v3           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_0
    iget-object v11, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v10

    .line 345
    .local v10, results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v10, :cond_6

    .line 346
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/ScanResult;

    .line 347
    .local v9, result:Landroid/net/wifi/ScanResult;
    const/4 v5, 0x0

    .line 348
    .local v5, found:Z
    const/4 v6, 0x0

    .line 351
    .local v6, hide:Z
    iget-object v11, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v11, :cond_2

    iget-object v11, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, v9, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v12, "[IBSS]"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 353
    :cond_2
    const/4 v6, 0x1

    .line 356
    :cond_3
    iget-object v11, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v11}, Lcom/android/settings/wifi/WifiSettings$Multimap;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 357
    .local v0, accessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {v0, v9}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 358
    const/4 v5, 0x1

    .line 359
    check-cast v0, Lcom/android/settings/wifi/MiuiAccessPoint;

    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->addAccessPoint(Ljava/util/List;Lcom/android/settings/wifi/MiuiAccessPoint;)V

    goto :goto_2

    .line 363
    :cond_5
    if-nez v6, :cond_1

    if-nez v5, :cond_1

    .line 364
    new-instance v0, Lcom/android/settings/wifi/MiuiAccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v0, v11, v9}, Lcom/android/settings/wifi/MiuiAccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    .line 365
    .local v0, accessPoint:Lcom/android/settings/wifi/MiuiAccessPoint;
    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->addAccessPoint(Ljava/util/List;Lcom/android/settings/wifi/MiuiAccessPoint;)V

    .line 366
    iget-object v11, v0, Lcom/android/settings/wifi/MiuiAccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v11, v0}, Lcom/android/settings/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 372
    .end local v0           #accessPoint:Lcom/android/settings/wifi/MiuiAccessPoint;
    .end local v5           #found:Z
    .end local v6           #hide:Z
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #result:Landroid/net/wifi/ScanResult;
    :cond_6
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 373
    return-object v1
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->onActivityCreated(Landroid/os/Bundle;)V

    .line 95
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->initUI()V

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "wifi_enable"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiEnablePreference:Landroid/preference/CheckBoxPreference;

    .line 97
    new-instance v0, Lcom/android/settings/wifi/MiuiWifiEnabler;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiEnablePreference:Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/MiuiWifiEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/MiuiWifiEnabler;

    .line 98
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v6, -0x1

    .line 247
    sparse-switch p1, :sswitch_data_0

    .line 296
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiSettings;->onActivityResult(IILandroid/content/Intent;)V

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 249
    :sswitch_0
    if-ne p2, v6, :cond_0

    .line 250
    const-string v5, "config"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 251
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_0

    .line 252
    iget-object v5, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v6, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v7, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v5, v6, v1, v7}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->refreshAccessPoints()V

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/android/settings/wifi/WifiConfigurationManager;->addWifi(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 260
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    :sswitch_1
    if-ne p2, v6, :cond_0

    .line 261
    const-string v5, "network_id"

    invoke-virtual {p3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 262
    .local v3, networkId:I
    if-eq v3, v6, :cond_2

    .line 263
    iget-object v5, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v6, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v7, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v5, v6, v3, v7}, Landroid/net/wifi/WifiManager;->forget(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 264
    const-string v5, "config"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 265
    .restart local v1       #config:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/android/settings/wifi/WifiConfigurationManager;->deleteWifiConfiguration(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 291
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->refreshAccessPoints()V

    goto :goto_0

    .line 267
    :cond_2
    const-string v5, "iswps"

    const/4 v6, 0x0

    invoke-virtual {p3, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 268
    .local v2, isWps:Z
    if-eqz v2, :cond_3

    .line 269
    const-string v5, "config"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WpsInfo;

    .line 270
    .local v1, config:Landroid/net/wifi/WpsInfo;
    if-eqz v1, :cond_1

    goto :goto_1

    .line 274
    .end local v1           #config:Landroid/net/wifi/WpsInfo;
    :cond_3
    const-string v5, "config"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 275
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_1

    .line 276
    iget-object v5, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v6, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v7, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v5, v6, v1, v7}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 277
    const-string v5, "ssid"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 278
    .local v4, ssid:Ljava/lang/String;
    const-string v5, "bssid"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, bssid:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 280
    iput-object v4, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 281
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 282
    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 284
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/android/settings/wifi/WifiConfigurationManager;->updateWifiConfiguration(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_1

    .line 247
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "wifi_setup_wizard"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "firstRun"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsWifiSetupWizard:Z

    .line 61
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .parameter "menu"
    .parameter "view"
    .parameter "info"

    .prologue
    .line 66
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsWifiSetupWizard:Z

    if-eqz v0, :cond_0

    .line 243
    :goto_0
    return-void

    .line 242
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 71
    const v1, 0x7f0400ba

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 72
    .local v0, rootView:Landroid/view/View;
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 217
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 218
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->manuallyAddNetwork()V

    .line 219
    const/4 v0, 0x1

    .line 221
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/4 v7, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 179
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, key:Ljava/lang/String;
    const-string v5, "notify_open_networks"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_networks_available_notification_on"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_0

    move v3, v4

    :cond_0
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 212
    :goto_0
    return v4

    .line 185
    .restart local p2
    :cond_1
    const-string v5, "manually_add_network"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 186
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->manuallyAddNetwork()V

    goto :goto_0

    .line 188
    :cond_2
    const-string v5, "wifi_enable"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 189
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/MiuiWifiEnabler;

    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/settings/wifi/MiuiWifiEnabler;->checkedChanged(Z)V

    goto :goto_0

    .line 193
    .restart local p2
    :cond_3
    instance-of v5, p2, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v5, :cond_8

    move-object v0, p2

    .line 194
    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 195
    .local v0, accessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/AccessPoint;->setChecked(Z)V

    .line 196
    iget-object v1, v0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 197
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    iget v5, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v5, v7, :cond_7

    iget v5, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eqz v5, :cond_5

    iget v5, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_5

    if-eqz v1, :cond_4

    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v3, v5, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 202
    :cond_5
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    iget v5, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v3, v5, :cond_6

    .line 203
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v5, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget v6, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget-object v7, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v3, v5, v6, v7}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 205
    :cond_6
    invoke-virtual {v0, v4}, Lcom/android/settings/wifi/AccessPoint;->setChecked(Z)V

    goto :goto_0

    .line 209
    :cond_7
    iput v7, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    .line 212
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_8
    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 77
    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 78
    const v0, 0x7f090026

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNextButton:Landroid/widget/Button;

    .line 79
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsWifiSetupWizard:Z

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNextButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 81
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->isWifiConnected()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->changeNextButtonState(Z)V

    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNextButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/wifi/MiuiWifiSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/MiuiWifiSettings$1;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    :cond_0
    return-void
.end method

.method submit(Lcom/android/settings/wifi/WifiConfigController;)V
    .locals 2
    .parameter "configController"

    .prologue
    .line 321
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 322
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/wifi/WifiConfigurationManager;->addWifi(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 326
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->submit(Lcom/android/settings/wifi/WifiConfigController;)V

    .line 327
    return-void
.end method

.method protected updateAccessPoints()V
    .locals 7

    .prologue
    .line 123
    iget-object v5, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v4

    .line 124
    .local v4, wifiState:I
    const-string v5, "nearby_wifi"

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/MiuiWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 125
    .local v3, wifiList:Landroid/preference/PreferenceCategory;
    packed-switch v4, :pswitch_data_0

    .line 162
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNotifyOpenNetworks:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_1

    .line 163
    iget-object v5, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNotifyOpenNetworks:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 165
    :cond_1
    return-void

    .line 128
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->constructAccessPoints()Ljava/util/List;

    move-result-object v1

    .line 129
    .local v1, accessPoints:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/settings/wifi/AccessPoint;>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 130
    if-nez v3, :cond_2

    .line 131
    new-instance v3, Landroid/preference/PreferenceCategory;

    .end local v3           #wifiList:Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 132
    .restart local v3       #wifiList:Landroid/preference/PreferenceCategory;
    const-string v5, "nearby_wifi"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 133
    const v5, 0x7f0c077e

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 134
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceCategory;->setOrder(I)V

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 139
    :goto_1
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 140
    .local v0, accessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 137
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    invoke-virtual {v3}, Landroid/preference/PreferenceCategory;->removeAll()V

    goto :goto_1

    .line 142
    :cond_3
    if-eqz v3, :cond_4

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 145
    :cond_4
    iget-object v5, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiEnablePreference:Landroid/preference/CheckBoxPreference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 149
    .end local v1           #accessPoints:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/settings/wifi/AccessPoint;>;"
    :pswitch_1
    if-eqz v3, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 155
    :pswitch_2
    const v5, 0x7f0c01bd

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/MiuiWifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 159
    :pswitch_3
    const v5, 0x7f0c01d1

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/MiuiWifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
