.class public Lcom/android/settings/wifi/WifiConfigurationManager;
.super Ljava/lang/Object;
.source "WifiConfigurationManager.java"


# static fields
.field private static sWifiMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mWifiCertFileMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/WifiConfigurationManager;->sWifiMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigurationManager;->mContext:Landroid/content/Context;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigurationManager;->mWifiCertFileMap:Ljava/util/HashMap;

    .line 50
    return-void
.end method

.method private addBackupWifi(Ljava/util/ArrayList;Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .parameter
    .parameter "configuration"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;",
            "Landroid/net/wifi/WifiConfiguration;",
            ")V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, addWifiList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez p2, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    sget-object v2, Lcom/android/settings/wifi/WifiConfigurationManager;->sWifiMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 75
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 79
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_3
    if-eqz p2, :cond_0

    .line 80
    const-string v2, "restore"

    iput-object v2, p2, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 81
    invoke-static {p2}, Lcom/android/settings/wifi/WifiConfigurationManager;->addWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 82
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static addWifi(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .parameter "context"
    .parameter "configuration"

    .prologue
    .line 168
    if-nez p1, :cond_0

    .line 178
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const/4 v2, 0x1

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v0, wifiList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/wifi/WifiConfiguration;>;"
    const-string v1, "restore"

    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 175
    invoke-static {p1}, Lcom/android/settings/wifi/WifiConfigurationManager;->addWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 176
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/settings/wifi/WifiConfigurationManager;->addWifiList(Landroid/content/Context;Ljava/util/ArrayList;IZ)V

    goto :goto_0
.end method

.method private static addWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .parameter "configuration"

    .prologue
    .line 506
    invoke-static {p0}, Lcom/android/settings/wifi/WifiConfigurationManager;->getWifiConfigurationKey(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, key:Ljava/lang/String;
    sget-object v1, Lcom/android/settings/wifi/WifiConfigurationManager;->sWifiMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    return-void
.end method

.method public static addWifiList(Landroid/content/Context;Ljava/util/ArrayList;IZ)V
    .locals 7
    .parameter "context"
    .parameter
    .parameter "type"
    .parameter "trimSsid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p1, addWifiList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/wifi/WifiConfiguration;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v4, wifiBatchOperations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 264
    .local v0, confguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0, p3}, Lcom/android/settings/wifi/WifiConfigurationManager;->makeWifiEntryValues(Landroid/net/wifi/WifiConfiguration;Z)Landroid/content/ContentValues;

    move-result-object v3

    .line 265
    .local v3, values:Landroid/content/ContentValues;
    if-ltz p2, :cond_0

    .line 266
    const-string v5, "sync_state"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 268
    :cond_0
    sget-object v5, Lmiui/provider/Wifi;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 273
    .local v2, op:Landroid/content/ContentProviderOperation;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 277
    .end local v0           #confguration:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #op:Landroid/content/ContentProviderOperation;
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_1
    return-void

    .line 279
    :catch_0
    move-exception v5

    goto :goto_1

    .line 278
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method public static deleteWifiConfiguration(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 8
    .parameter "context"
    .parameter "deleteConfig"

    .prologue
    const/4 v7, 0x1

    .line 597
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 598
    .local v3, v:Landroid/content/ContentValues;
    const-string v4, "deleted"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 599
    const-string v1, "ssid=? and sync_state<>3"

    .line 601
    .local v1, selection:Ljava/lang/String;
    new-array v2, v7, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 602
    .local v2, selectionArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lmiui/provider/Wifi;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 604
    const-string v1, "ssid=? and bssid=\"restore\""

    .line 606
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lmiui/provider/Wifi;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 608
    new-instance v0, Landroid/content/Intent;

    const-string v4, "miui.intent.action.WIFI_SYNC"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 609
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 610
    invoke-static {p0}, Lcom/android/settings/wifi/WifiConfigurationManager;->requestSync(Landroid/content/Context;)V

    .line 611
    return-void
.end method

.method public static getWifiConfiguratinKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .locals 2
    .parameter "scanResult"

    .prologue
    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "restore"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getWifiConfiguration(Landroid/database/Cursor;)Landroid/net/wifi/WifiConfiguration;
    .locals 20
    .parameter "c"

    .prologue
    .line 329
    new-instance v6, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v6}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 330
    .local v6, configuration:Landroid/net/wifi/WifiConfiguration;
    const-string v17, "ssid"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 331
    const-string v17, "bssid"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v6, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 332
    const-string v17, "psk"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v6, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 333
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 334
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v6, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 336
    :cond_0
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "wepkey0"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    .line 337
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const-string v19, "wepkey1"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    .line 338
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    const-string v19, "wepkey2"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    .line 339
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    const-string v19, "wepkey3"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    .line 340
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ge v9, v0, :cond_2

    .line 341
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v9

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 342
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v18, v17, v9

    .line 340
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 345
    :cond_2
    const-string v17, "wep_tx_keyidx"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v6, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 346
    const-string v17, "priority"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v6, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 347
    const-string v17, "scan_ssid"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    if-nez v17, :cond_b

    const/16 v17, 0x1

    :goto_1
    move/from16 v0, v17

    iput-boolean v0, v6, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 348
    const-string v17, "keyMgmt"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 349
    .local v11, kmgmt:Ljava/lang/String;
    sget-object v17, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v11, v0, v1}, Lcom/android/settings/wifi/WifiConfigurationManager;->parseString(Ljava/lang/String;[Ljava/lang/String;Ljava/util/BitSet;)V

    .line 350
    const-string v17, "proto"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 351
    .local v16, proto:Ljava/lang/String;
    sget-object v17, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lcom/android/settings/wifi/WifiConfigurationManager;->parseString(Ljava/lang/String;[Ljava/lang/String;Ljava/util/BitSet;)V

    .line 352
    const-string v17, "authAlg"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 353
    .local v3, authalg:Ljava/lang/String;
    sget-object v17, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v3, v0, v1}, Lcom/android/settings/wifi/WifiConfigurationManager;->parseString(Ljava/lang/String;[Ljava/lang/String;Ljava/util/BitSet;)V

    .line 354
    const-string v17, "pairwise"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 355
    .local v12, pairwise:Ljava/lang/String;
    sget-object v17, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v12, v0, v1}, Lcom/android/settings/wifi/WifiConfigurationManager;->parseString(Ljava/lang/String;[Ljava/lang/String;Ljava/util/BitSet;)V

    .line 356
    const-string v17, "groupCipher"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 357
    .local v8, group:Ljava/lang/String;
    sget-object v17, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v8, v0, v1}, Lcom/android/settings/wifi/WifiConfigurationManager;->parseString(Ljava/lang/String;[Ljava/lang/String;Ljava/util/BitSet;)V

    .line 358
    const-string v17, "eap"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 359
    .local v7, eap:Ljava/lang/String;
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v17, v0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_3

    const/4 v7, 0x0

    .end local v7           #eap:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 360
    const-string v17, "phase2"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 361
    .local v14, phase2:Ljava/lang/String;
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v17, v0

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_4

    const/4 v14, 0x0

    .end local v14           #phase2:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 362
    const-string v17, "identity"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 363
    .local v10, identity:Ljava/lang/String;
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v17, v0

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_5

    const/4 v10, 0x0

    .end local v10           #identity:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 364
    const-string v17, "anonymousIdentity"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 366
    .local v2, anonymousidentity:Ljava/lang/String;
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v17, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_6

    const/4 v2, 0x0

    .end local v2           #anonymousidentity:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 367
    const-string v17, "password"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 368
    .local v13, password:Ljava/lang/String;
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v17, v0

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_7

    const/4 v13, 0x0

    .end local v13           #password:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 369
    const-string v17, "clientCert"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 370
    .local v5, clientCert:Ljava/lang/String;
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v17, v0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_8

    const/4 v5, 0x0

    .end local v5           #clientCert:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 371
    const-string v17, "privateKey"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 372
    .local v15, privateKey:Ljava/lang/String;
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v17, v0

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_9

    const/4 v15, 0x0

    .end local v15           #privateKey:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 373
    const-string v17, "caCert"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 374
    .local v4, cacert:Ljava/lang/String;
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v17, v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_a

    const/4 v4, 0x0

    .end local v4           #cacert:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 375
    return-object v6

    .line 347
    .end local v3           #authalg:Ljava/lang/String;
    .end local v8           #group:Ljava/lang/String;
    .end local v11           #kmgmt:Ljava/lang/String;
    .end local v12           #pairwise:Ljava/lang/String;
    .end local v16           #proto:Ljava/lang/String;
    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_1
.end method

.method public static getWifiConfigurationKey(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 2
    .parameter "configuration"

    .prologue
    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "restore"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    goto :goto_0
.end method

.method private static insertWifiConfiguration(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "config"
    .parameter "values"
    .parameter "ssid"

    .prologue
    .line 241
    if-nez p1, :cond_0

    .line 242
    invoke-static {p0, p3}, Lcom/android/settings/wifi/WifiConfigurationManager;->parseSystemWifi(Landroid/content/Context;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    .line 244
    :cond_0
    if-nez p1, :cond_1

    .line 258
    :goto_0
    return-void

    .line 248
    :cond_1
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/android/settings/wifi/WifiConfigurationManager;->makeWifiEntryValues(Landroid/net/wifi/WifiConfiguration;Z)Landroid/content/ContentValues;

    move-result-object v0

    .line 249
    .local v0, v:Landroid/content/ContentValues;
    const-string v2, "bssid"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, value:Ljava/lang/String;
    const-string v2, "bssid"

    if-nez v1, :cond_2

    const-string v1, ""

    .end local v1           #value:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v2, "latitude"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 252
    .restart local v1       #value:Ljava/lang/String;
    const-string v2, "latitude"

    if-nez v1, :cond_3

    const-string v1, ""

    .end local v1           #value:Ljava/lang/String;
    :cond_3
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v2, "longitude"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 254
    .restart local v1       #value:Ljava/lang/String;
    const-string v2, "longitude"

    if-nez v1, :cond_4

    const-string v1, ""

    .end local v1           #value:Ljava/lang/String;
    :cond_4
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v2, "uuid"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 256
    .restart local v1       #value:Ljava/lang/String;
    const-string v2, "uuid"

    if-nez v1, :cond_5

    const-string v1, ""

    .end local v1           #value:Ljava/lang/String;
    :cond_5
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lmiui/provider/Wifi;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method private static makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "set"
    .parameter "strings"

    .prologue
    .line 651
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 652
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v1, -0x1

    .line 654
    .local v1, nextSetBit:I
    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {p0, v2, v3}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    move-result-object p0

    .line 656
    :goto_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 657
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 661
    :cond_0
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-lez v2, :cond_1

    .line 662
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 665
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static makeWifiEntryValues(Landroid/net/wifi/WifiConfiguration;Z)Landroid/content/ContentValues;
    .locals 30
    .parameter "configuration"
    .parameter "trimSsid"

    .prologue
    .line 440
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 441
    .local v24, v:Landroid/content/ContentValues;
    if-nez p0, :cond_0

    .line 502
    :goto_0
    return-object v24

    .line 445
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 446
    .local v23, ssid:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 447
    .local v5, bssid:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 448
    .local v21, psk:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v26, v0

    .line 449
    .local v26, webkeys:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    move/from16 v25, v0

    .line 450
    .local v25, webTxKeyIdx:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v17, v0

    .line 451
    .local v17, priority:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v27, v0

    if-eqz v27, :cond_3

    const/16 v22, 0x0

    .line 452
    .local v22, scanSsid:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v27, v0

    sget-object v28, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-static/range {v27 .. v28}, Lcom/android/settings/wifi/WifiConfigurationManager;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 453
    .local v13, kmgmt:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    move-object/from16 v27, v0

    sget-object v28, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    invoke-static/range {v27 .. v28}, Lcom/android/settings/wifi/WifiConfigurationManager;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 454
    .local v20, proto:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    move-object/from16 v27, v0

    sget-object v28, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    invoke-static/range {v27 .. v28}, Lcom/android/settings/wifi/WifiConfigurationManager;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 455
    .local v4, authalg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    move-object/from16 v27, v0

    sget-object v28, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    invoke-static/range {v27 .. v28}, Lcom/android/settings/wifi/WifiConfigurationManager;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 456
    .local v14, pairwise:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    move-object/from16 v27, v0

    sget-object v28, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    invoke-static/range {v27 .. v28}, Lcom/android/settings/wifi/WifiConfigurationManager;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 457
    .local v11, group:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v10

    .line 458
    .local v10, eap:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v16

    .line 459
    .local v16, phase2:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v12

    .line 460
    .local v12, identity:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v3

    .line 461
    .local v3, anonymousidentity:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v15

    .line 462
    .local v15, password:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v8

    .line 463
    .local v8, clientCert:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v18

    .line 464
    .local v18, privateKey:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v6

    .line 465
    .local v6, cacert:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/settings/wifi/WifiConfigurationManager;->readCertFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 466
    .local v9, clientCertFile:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/android/settings/wifi/WifiConfigurationManager;->readCertFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 467
    .local v19, privateKeyFile:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings/wifi/WifiConfigurationManager;->readCertFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 469
    .local v7, cacertFile:Ljava/lang/String;
    if-eqz p1, :cond_1

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_1

    .line 470
    const/16 v27, 0x1

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .line 472
    :cond_1
    const-string v27, "ssid"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const-string v27, "bssid"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_2

    .line 475
    const-string v27, "uuid"

    const-string v28, ":"

    const-string v29, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    :cond_2
    const-string v27, "psk"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string v27, "wepkey0"

    const/16 v28, 0x0

    aget-object v28, v26, v28

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string v27, "wepkey1"

    const/16 v28, 0x1

    aget-object v28, v26, v28

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const-string v27, "wepkey2"

    const/16 v28, 0x2

    aget-object v28, v26, v28

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string v27, "wepkey3"

    const/16 v28, 0x3

    aget-object v28, v26, v28

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const-string v27, "wep_tx_keyidx"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 483
    const-string v27, "priority"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 484
    const-string v27, "scan_ssid"

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 485
    const-string v27, "keyMgmt"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const-string v27, "proto"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const-string v27, "authAlg"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-string v27, "pairwise"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const-string v27, "groupCipher"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    const-string v27, "eap"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const-string v27, "phase2"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const-string v27, "identity"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const-string v27, "anonymousIdentity"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const-string v27, "password"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string v27, "clientCert"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const-string v27, "privateKey"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const-string v27, "caCert"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const-string v27, "clientCertFile"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const-string v27, "privateKeyFile"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string v27, "caCertFile"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 451
    .end local v3           #anonymousidentity:Ljava/lang/String;
    .end local v4           #authalg:Ljava/lang/String;
    .end local v6           #cacert:Ljava/lang/String;
    .end local v7           #cacertFile:Ljava/lang/String;
    .end local v8           #clientCert:Ljava/lang/String;
    .end local v9           #clientCertFile:Ljava/lang/String;
    .end local v10           #eap:Ljava/lang/String;
    .end local v11           #group:Ljava/lang/String;
    .end local v12           #identity:Ljava/lang/String;
    .end local v13           #kmgmt:Ljava/lang/String;
    .end local v14           #pairwise:Ljava/lang/String;
    .end local v15           #password:Ljava/lang/String;
    .end local v16           #phase2:Ljava/lang/String;
    .end local v18           #privateKey:Ljava/lang/String;
    .end local v19           #privateKeyFile:Ljava/lang/String;
    .end local v20           #proto:Ljava/lang/String;
    .end local v22           #scanSsid:I
    :cond_3
    const/16 v22, 0x1

    goto/16 :goto_1
.end method

.method private static parsePairValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "pair"

    .prologue
    .line 689
    const/16 v1, 0x3d

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 690
    .local v0, pairValue:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 691
    return-object v0
.end method

.method private static parseString(Ljava/lang/String;[Ljava/lang/String;Ljava/util/BitSet;)V
    .locals 3
    .parameter "type"
    .parameter "strings"
    .parameter "bitset"

    .prologue
    .line 669
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 678
    :cond_0
    return-void

    .line 672
    :cond_1
    const/16 v1, 0x2d

    const/16 v2, 0x5f

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 673
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 674
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 675
    invoke-virtual {p2, v0}, Ljava/util/BitSet;->set(I)V

    .line 673
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static parseSystemWifi(Landroid/content/Context;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 11
    .parameter "context"
    .parameter "ssid"

    .prologue
    const/4 v8, 0x0

    .line 87
    const/4 v1, 0x0

    .line 88
    .local v1, configuration:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 89
    .local v0, cacheDir:Ljava/io/File;
    new-instance v7, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    const-string v10, "wpa_supplicant.conf"

    invoke-direct {v7, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 92
    .local v7, wifiFile:Ljava/io/File;
    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, dest:Ljava/lang/String;
    const-string v6, "/data/misc/wifi/wpa_supplicant.conf"

    .line 94
    .local v6, src:Ljava/lang/String;
    invoke-static {v6, v3}, Lmiui/os/Shell;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    .line 95
    const/16 v9, 0x309

    invoke-static {v3, v9}, Lmiui/os/Shell;->chmod(Ljava/lang/String;I)Z

    .line 96
    invoke-virtual {v7}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-nez v9, :cond_1

    .line 121
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 122
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 130
    .end local v3           #dest:Ljava/lang/String;
    .end local v6           #src:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v8

    .line 99
    .restart local v3       #dest:Ljava/lang/String;
    .restart local v6       #src:Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 101
    .local v5, reader:Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .local v4, line:Ljava/lang/String;
    move-object v2, v1

    .line 104
    .end local v1           #configuration:Landroid/net/wifi/WifiConfiguration;
    .local v2, configuration:Landroid/net/wifi/WifiConfiguration;
    :goto_1
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    .line 105
    if-nez v4, :cond_4

    move-object v1, v2

    .line 117
    .end local v2           #configuration:Landroid/net/wifi/WifiConfiguration;
    .restart local v1       #configuration:Landroid/net/wifi/WifiConfiguration;
    :cond_2
    :goto_2
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 121
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 122
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 126
    .end local v3           #dest:Ljava/lang/String;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .end local v6           #src:Ljava/lang/String;
    :cond_3
    :goto_3
    if-eqz v1, :cond_0

    iget-object v9, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v9, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v8, v1

    .line 127
    goto :goto_0

    .line 108
    .end local v1           #configuration:Landroid/net/wifi/WifiConfiguration;
    .restart local v2       #configuration:Landroid/net/wifi/WifiConfiguration;
    .restart local v3       #dest:Ljava/lang/String;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    .restart local v6       #src:Ljava/lang/String;
    :cond_4
    :try_start_4
    const-string v9, "network={"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 109
    if-eqz v2, :cond_5

    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v9, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v1, v2

    .line 110
    .end local v2           #configuration:Landroid/net/wifi/WifiConfiguration;
    .restart local v1       #configuration:Landroid/net/wifi/WifiConfiguration;
    goto :goto_2

    .line 112
    .end local v1           #configuration:Landroid/net/wifi/WifiConfiguration;
    .restart local v2       #configuration:Landroid/net/wifi/WifiConfiguration;
    :cond_5
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 114
    .end local v2           #configuration:Landroid/net/wifi/WifiConfiguration;
    .restart local v1       #configuration:Landroid/net/wifi/WifiConfiguration;
    :goto_4
    :try_start_5
    invoke-static {v4, v1}, Lcom/android/settings/wifi/WifiConfigurationManager;->setWifiConfigurationField(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 115
    if-eqz v4, :cond_2

    move-object v2, v1

    .end local v1           #configuration:Landroid/net/wifi/WifiConfiguration;
    .restart local v2       #configuration:Landroid/net/wifi/WifiConfiguration;
    goto :goto_1

    .line 118
    .end local v2           #configuration:Landroid/net/wifi/WifiConfiguration;
    .end local v3           #dest:Ljava/lang/String;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .end local v6           #src:Ljava/lang/String;
    .restart local v1       #configuration:Landroid/net/wifi/WifiConfiguration;
    :catch_0
    move-exception v9

    .line 121
    :goto_5
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 122
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    goto :goto_3

    .line 121
    :catchall_0
    move-exception v8

    :goto_6
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 122
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_6
    throw v8

    .line 121
    .end local v1           #configuration:Landroid/net/wifi/WifiConfiguration;
    .restart local v2       #configuration:Landroid/net/wifi/WifiConfiguration;
    .restart local v3       #dest:Ljava/lang/String;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    .restart local v6       #src:Ljava/lang/String;
    :catchall_1
    move-exception v8

    move-object v1, v2

    .end local v2           #configuration:Landroid/net/wifi/WifiConfiguration;
    .restart local v1       #configuration:Landroid/net/wifi/WifiConfiguration;
    goto :goto_6

    .line 118
    .end local v1           #configuration:Landroid/net/wifi/WifiConfiguration;
    .restart local v2       #configuration:Landroid/net/wifi/WifiConfiguration;
    :catch_1
    move-exception v9

    move-object v1, v2

    .end local v2           #configuration:Landroid/net/wifi/WifiConfiguration;
    .restart local v1       #configuration:Landroid/net/wifi/WifiConfiguration;
    goto :goto_5

    .end local v1           #configuration:Landroid/net/wifi/WifiConfiguration;
    .restart local v2       #configuration:Landroid/net/wifi/WifiConfiguration;
    :cond_7
    move-object v1, v2

    .end local v2           #configuration:Landroid/net/wifi/WifiConfiguration;
    .restart local v1       #configuration:Landroid/net/wifi/WifiConfiguration;
    goto :goto_4
.end method

.method public static readCertFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "filepath"

    .prologue
    .line 551
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 552
    const/4 v3, 0x0

    .line 593
    :cond_0
    :goto_0
    return-object v3

    .line 555
    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 557
    .local v4, file:Ljava/io/File;
    const/4 v3, 0x0

    .line 558
    .local v3, content:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 559
    const/4 v5, 0x0

    .line 560
    .local v5, input:Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 562
    .local v0, bout:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 563
    .end local v5           #input:Ljava/io/FileInputStream;
    .local v6, input:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v8, 0x200

    invoke-direct {v1, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 564
    .end local v0           #bout:Ljava/io/ByteArrayOutputStream;
    .local v1, bout:Ljava/io/ByteArrayOutputStream;
    const/16 v8, 0x200

    :try_start_2
    new-array v2, v8, [B

    .line 565
    .local v2, buf:[B
    const/4 v7, 0x0

    .line 566
    .local v7, n:I
    :goto_1
    invoke-virtual {v6, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    if-ltz v7, :cond_3

    .line 567
    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b

    goto :goto_1

    .line 573
    .end local v2           #buf:[B
    .end local v7           #n:I
    :catch_0
    move-exception v8

    move-object v0, v1

    .end local v1           #bout:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #bout:Ljava/io/ByteArrayOutputStream;
    move-object v5, v6

    .line 578
    .end local v6           #input:Ljava/io/FileInputStream;
    .restart local v5       #input:Ljava/io/FileInputStream;
    :goto_2
    if-eqz v5, :cond_2

    .line 580
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 584
    :cond_2
    :goto_3
    if-eqz v0, :cond_0

    .line 586
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 587
    :catch_1
    move-exception v8

    goto :goto_0

    .line 569
    .end local v0           #bout:Ljava/io/ByteArrayOutputStream;
    .end local v5           #input:Ljava/io/FileInputStream;
    .restart local v1       #bout:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #buf:[B
    .restart local v6       #input:Ljava/io/FileInputStream;
    .restart local v7       #n:I
    :cond_3
    const/4 v2, 0x0

    .line 571
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b

    move-result-object v3

    .line 578
    if-eqz v6, :cond_4

    .line 580
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 584
    :cond_4
    :goto_4
    if-eqz v1, :cond_0

    .line 586
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    .line 587
    :catch_2
    move-exception v8

    goto :goto_0

    .line 575
    .end local v1           #bout:Ljava/io/ByteArrayOutputStream;
    .end local v2           #buf:[B
    .end local v6           #input:Ljava/io/FileInputStream;
    .end local v7           #n:I
    .restart local v0       #bout:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #input:Ljava/io/FileInputStream;
    :catch_3
    move-exception v8

    .line 578
    :goto_5
    if-eqz v5, :cond_5

    .line 580
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 584
    :cond_5
    :goto_6
    if-eqz v0, :cond_0

    .line 586
    :try_start_9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_0

    .line 587
    :catch_4
    move-exception v8

    goto :goto_0

    .line 578
    :catchall_0
    move-exception v8

    :goto_7
    if-eqz v5, :cond_6

    .line 580
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 584
    :cond_6
    :goto_8
    if-eqz v0, :cond_7

    .line 586
    :try_start_b
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 589
    :cond_7
    :goto_9
    throw v8

    .line 581
    .end local v0           #bout:Ljava/io/ByteArrayOutputStream;
    .end local v5           #input:Ljava/io/FileInputStream;
    .restart local v1       #bout:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #buf:[B
    .restart local v6       #input:Ljava/io/FileInputStream;
    .restart local v7       #n:I
    :catch_5
    move-exception v8

    goto :goto_4

    .end local v1           #bout:Ljava/io/ByteArrayOutputStream;
    .end local v2           #buf:[B
    .end local v6           #input:Ljava/io/FileInputStream;
    .end local v7           #n:I
    .restart local v0       #bout:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #input:Ljava/io/FileInputStream;
    :catch_6
    move-exception v8

    goto :goto_3

    :catch_7
    move-exception v8

    goto :goto_6

    :catch_8
    move-exception v9

    goto :goto_8

    .line 587
    :catch_9
    move-exception v9

    goto :goto_9

    .line 578
    .end local v5           #input:Ljava/io/FileInputStream;
    .restart local v6       #input:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6           #input:Ljava/io/FileInputStream;
    .restart local v5       #input:Ljava/io/FileInputStream;
    goto :goto_7

    .end local v0           #bout:Ljava/io/ByteArrayOutputStream;
    .end local v5           #input:Ljava/io/FileInputStream;
    .restart local v1       #bout:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #input:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v8

    move-object v0, v1

    .end local v1           #bout:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #bout:Ljava/io/ByteArrayOutputStream;
    move-object v5, v6

    .end local v6           #input:Ljava/io/FileInputStream;
    .restart local v5       #input:Ljava/io/FileInputStream;
    goto :goto_7

    .line 575
    .end local v5           #input:Ljava/io/FileInputStream;
    .restart local v6       #input:Ljava/io/FileInputStream;
    :catch_a
    move-exception v8

    move-object v5, v6

    .end local v6           #input:Ljava/io/FileInputStream;
    .restart local v5       #input:Ljava/io/FileInputStream;
    goto :goto_5

    .end local v0           #bout:Ljava/io/ByteArrayOutputStream;
    .end local v5           #input:Ljava/io/FileInputStream;
    .restart local v1       #bout:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #input:Ljava/io/FileInputStream;
    :catch_b
    move-exception v8

    move-object v0, v1

    .end local v1           #bout:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #bout:Ljava/io/ByteArrayOutputStream;
    move-object v5, v6

    .end local v6           #input:Ljava/io/FileInputStream;
    .restart local v5       #input:Ljava/io/FileInputStream;
    goto :goto_5

    .line 573
    :catch_c
    move-exception v8

    goto :goto_2

    .end local v5           #input:Ljava/io/FileInputStream;
    .restart local v6       #input:Ljava/io/FileInputStream;
    :catch_d
    move-exception v8

    move-object v5, v6

    .end local v6           #input:Ljava/io/FileInputStream;
    .restart local v5       #input:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private static requestSync(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 614
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 615
    .local v0, accountManager:Landroid/accounts/AccountManager;
    const-string v2, "com.xiaomi"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 616
    .local v1, accounts:[Landroid/accounts/Account;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_1

    .line 622
    :cond_0
    :goto_0
    return-void

    .line 619
    :cond_1
    new-instance v2, Landroid/accounts/Account;

    aget-object v3, v1, v4

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    aget-object v4, v1, v4

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "wifi"

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private static setEnterpriseField(Landroid/net/wifi/WifiConfiguration$EnterpriseField;Ljava/lang/String;)V
    .locals 3
    .parameter "enterpriseField"
    .parameter "line"

    .prologue
    .line 681
    invoke-static {p1}, Lcom/android/settings/wifi/WifiConfigurationManager;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 682
    .local v0, value:Ljava/lang/String;
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 683
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 685
    :cond_0
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 686
    return-void
.end method

.method private setWifiConfiguration(Landroid/database/Cursor;)V
    .locals 7
    .parameter "c"

    .prologue
    .line 300
    invoke-static {p1}, Lcom/android/settings/wifi/WifiConfigurationManager;->getWifiConfiguration(Landroid/database/Cursor;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 301
    .local v3, configuration:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiConfigurationManager;->addWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 303
    const-string v6, "clientCertFile"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, clientCertFile:Ljava/lang/String;
    const-string v6, "privateKeyFile"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 307
    .local v5, privateKeyFile:Ljava/lang/String;
    const-string v6, "caCertFile"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, cacertFile:Ljava/lang/String;
    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 318
    :goto_0
    return-void

    .line 312
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 313
    .local v1, certMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    invoke-static {v3}, Lcom/android/settings/wifi/WifiConfigurationManager;->getWifiConfigurationKey(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v4

    .line 317
    .local v4, key:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigurationManager;->mWifiCertFileMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static setWifiConfigurationField(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V
    .locals 7
    .parameter "line"
    .parameter "configuration"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 379
    if-eqz p1, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 384
    const-string v1, "ssid"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 385
    invoke-static {p0}, Lcom/android/settings/wifi/WifiConfigurationManager;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 386
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 387
    :cond_2
    const-string v1, "bssid"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 388
    invoke-static {p0}, Lcom/android/settings/wifi/WifiConfigurationManager;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    goto :goto_0

    .line 389
    :cond_3
    const-string v1, "psk"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 390
    invoke-static {p0}, Lcom/android/settings/wifi/WifiConfigurationManager;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 391
    :cond_4
    sget-object v1, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 392
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-static {p0}, Lcom/android/settings/wifi/WifiConfigurationManager;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    goto :goto_0

    .line 393
    :cond_5
    sget-object v1, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 394
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-static {p0}, Lcom/android/settings/wifi/WifiConfigurationManager;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    goto :goto_0

    .line 395
    :cond_6
    sget-object v1, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 396
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-static {p0}, Lcom/android/settings/wifi/WifiConfigurationManager;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    goto :goto_0

    .line 397
    :cond_7
    sget-object v1, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 398
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-static {p0}, Lcom/android/settings/wifi/WifiConfigurationManager;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    goto/16 :goto_0

    .line 399
    :cond_8
    const-string v1, "wep_tx_keyidx"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 400
    invoke-static {p0}, Lcom/android/settings/wifi/WifiConfigurationManager;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    goto/16 :goto_0

    .line 401
    :cond_9
    const-string v1, "priority"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 402
    invoke-static {p0}, Lcom/android/settings/wifi/WifiConfigurationManager;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    goto/16 :goto_0

    .line 403
    :cond_a
    const-string v1, "scan_ssid"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 404
    invoke-static {p0}, Lcom/android/settings/wifi/WifiConfigurationManager;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    goto/16 :goto_0

    .line 405
    :cond_b
    const-string v1, "key_mgmt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 406
    invoke-static {p0}, Lcom/android/settings/wifi/WifiConfigurationManager;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, type:Ljava/lang/String;
    sget-object v1, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-static {v0, v1, v2}, Lcom/android/settings/wifi/WifiConfigurationManager;->parseString(Ljava/lang/String;[Ljava/lang/String;Ljava/util/BitSet;)V

    goto/16 :goto_0

    .line 408
    .end local v0           #type:Ljava/lang/String;
    :cond_c
    const-string v1, "proto"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 409
    invoke-static {p0}, Lcom/android/settings/wifi/WifiConfigurationManager;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 410
    .restart local v0       #type:Ljava/lang/String;
    sget-object v1, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-static {v0, v1, v2}, Lcom/android/settings/wifi/WifiConfigurationManager;->parseString(Ljava/lang/String;[Ljava/lang/String;Ljava/util/BitSet;)V

    goto/16 :goto_0

    .line 411
    .end local v0           #type:Ljava/lang/String;
    :cond_d
    const-string v1, "auth_alg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 412
    invoke-static {p0}, Lcom/android/settings/wifi/WifiConfigurationManager;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 413
    .restart local v0       #type:Ljava/lang/String;
    sget-object v1, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-static {v0, v1, v2}, Lcom/android/settings/wifi/WifiConfigurationManager;->parseString(Ljava/lang/String;[Ljava/lang/String;Ljava/util/BitSet;)V

    goto/16 :goto_0

    .line 414
    .end local v0           #type:Ljava/lang/String;
    :cond_e
    const-string v1, "pairwise"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 415
    invoke-static {p0}, Lcom/android/settings/wifi/WifiConfigurationManager;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 416
    .restart local v0       #type:Ljava/lang/String;
    sget-object v1, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-static {v0, v1, v2}, Lcom/android/settings/wifi/WifiConfigurationManager;->parseString(Ljava/lang/String;[Ljava/lang/String;Ljava/util/BitSet;)V

    goto/16 :goto_0

    .line 417
    .end local v0           #type:Ljava/lang/String;
    :cond_f
    const-string v1, "group"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 418
    invoke-static {p0}, Lcom/android/settings/wifi/WifiConfigurationManager;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 419
    .restart local v0       #type:Ljava/lang/String;
    sget-object v1, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-static {v0, v1, v2}, Lcom/android/settings/wifi/WifiConfigurationManager;->parseString(Ljava/lang/String;[Ljava/lang/String;Ljava/util/BitSet;)V

    goto/16 :goto_0

    .line 420
    .end local v0           #type:Ljava/lang/String;
    :cond_10
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 421
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-static {v1, p0}, Lcom/android/settings/wifi/WifiConfigurationManager;->setEnterpriseField(Landroid/net/wifi/WifiConfiguration$EnterpriseField;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 422
    :cond_11
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 423
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-static {v1, p0}, Lcom/android/settings/wifi/WifiConfigurationManager;->setEnterpriseField(Landroid/net/wifi/WifiConfiguration$EnterpriseField;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 424
    :cond_12
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 425
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-static {v1, p0}, Lcom/android/settings/wifi/WifiConfigurationManager;->setEnterpriseField(Landroid/net/wifi/WifiConfiguration$EnterpriseField;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 426
    :cond_13
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 427
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-static {v1, p0}, Lcom/android/settings/wifi/WifiConfigurationManager;->setEnterpriseField(Landroid/net/wifi/WifiConfiguration$EnterpriseField;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 428
    :cond_14
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 429
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-static {v1, p0}, Lcom/android/settings/wifi/WifiConfigurationManager;->setEnterpriseField(Landroid/net/wifi/WifiConfiguration$EnterpriseField;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 430
    :cond_15
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 431
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-static {v1, p0}, Lcom/android/settings/wifi/WifiConfigurationManager;->setEnterpriseField(Landroid/net/wifi/WifiConfiguration$EnterpriseField;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 432
    :cond_16
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 433
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-static {v1, p0}, Lcom/android/settings/wifi/WifiConfigurationManager;->setEnterpriseField(Landroid/net/wifi/WifiConfiguration$EnterpriseField;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 434
    :cond_17
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 435
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-static {v1, p0}, Lcom/android/settings/wifi/WifiConfigurationManager;->setEnterpriseField(Landroid/net/wifi/WifiConfiguration$EnterpriseField;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static updateWifiConfiguration(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 14
    .parameter "context"
    .parameter "values"
    .parameter "ssid"
    .parameter "bssid"
    .parameter "isUpdate"

    .prologue
    .line 186
    const-string v1, "deleted"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 187
    .local v9, deleted:Ljava/lang/Integer;
    if-nez v9, :cond_0

    .line 188
    const-string v1, "deleted"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 190
    :cond_0
    const-string v4, "ssid= ? "

    .line 191
    .local v4, selection:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v5, v1

    .line 192
    .local v5, selectionArgs:[Ljava/lang/String;
    const-string v6, "sync_state desc "

    .line 193
    .local v6, sortOrder:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/Wifi;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 195
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_5

    .line 196
    :cond_1
    const-string v1, "ssid"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 197
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-static {p0, v1, p1, v0}, Lcom/android/settings/wifi/WifiConfigurationManager;->insertWifiConfiguration(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Landroid/content/ContentValues;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    :goto_0
    if-eqz v8, :cond_2

    .line 234
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 238
    :cond_2
    :goto_1
    return-void

    .line 199
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/Wifi;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 233
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_4

    .line 234
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1

    .line 204
    :cond_5
    const/4 v7, 0x0

    .line 205
    .local v7, config:Landroid/net/wifi/WifiConfiguration;
    const/4 v1, -0x1

    :try_start_2
    invoke-interface {v8, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 206
    const/4 v11, 0x0

    .line 207
    .local v11, isSameWifiConfiguration:Z
    :cond_6
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 208
    invoke-static {v8}, Lcom/android/settings/wifi/WifiConfigurationManager;->getWifiConfiguration(Landroid/database/Cursor;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    .line 209
    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 210
    .local v10, id:Ljava/lang/String;
    sget-object v1, Lmiui/provider/Wifi;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 211
    .local v13, uri:Landroid/net/Uri;
    const-string v1, "sync_state"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 212
    .local v12, state:I
    const/4 v1, 0x3

    if-ne v12, v1, :cond_a

    .line 213
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v13, p1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bssid=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "deleted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 216
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/Wifi;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 217
    const/4 v11, 0x1

    .line 229
    .end local v10           #id:Ljava/lang/String;
    .end local v12           #state:I
    .end local v13           #uri:Landroid/net/Uri;
    :cond_7
    :goto_2
    if-nez v11, :cond_8

    .line 230
    move-object/from16 v0, p2

    invoke-static {p0, v7, p1, v0}, Lcom/android/settings/wifi/WifiConfigurationManager;->insertWifiConfiguration(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Landroid/content/ContentValues;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 233
    :cond_8
    if-eqz v8, :cond_9

    .line 234
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 237
    :cond_9
    invoke-static {p0}, Lcom/android/settings/wifi/WifiConfigurationManager;->requestSync(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 219
    .restart local v10       #id:Ljava/lang/String;
    .restart local v12       #state:I
    .restart local v13       #uri:Landroid/net/Uri;
    :cond_a
    :try_start_3
    iget-object v1, v7, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-static {v1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 220
    if-eqz p4, :cond_b

    .line 221
    const/4 v11, 0x1

    .line 222
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v13, p1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 233
    :cond_b
    if-eqz v8, :cond_2

    .line 234
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1
.end method

.method public static updateWifiConfiguration(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .parameter "context"
    .parameter "configuration"

    .prologue
    .line 181
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/settings/wifi/WifiConfigurationManager;->makeWifiEntryValues(Landroid/net/wifi/WifiConfiguration;Z)Landroid/content/ContentValues;

    move-result-object v0

    .line 182
    .local v0, values:Landroid/content/ContentValues;
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiConfigurationManager;->updateWifiConfiguration(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 183
    return-void
.end method

.method public static writeCertFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "filepath"
    .parameter "content"

    .prologue
    .line 625
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 648
    :cond_0
    :goto_0
    return-void

    .line 629
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 630
    .local v0, file:Ljava/io/File;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 631
    const/4 v1, 0x0

    .line 633
    .local v1, output:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 634
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 635
    .end local v1           #output:Ljava/io/FileOutputStream;
    .local v2, output:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 636
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 640
    if-eqz v2, :cond_0

    .line 642
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 643
    :catch_0
    move-exception v3

    goto :goto_0

    .line 637
    .end local v2           #output:Ljava/io/FileOutputStream;
    .restart local v1       #output:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v3

    .line 640
    :goto_1
    if-eqz v1, :cond_0

    .line 642
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 643
    :catch_2
    move-exception v3

    goto :goto_0

    .line 638
    :catch_3
    move-exception v3

    .line 640
    :goto_2
    if-eqz v1, :cond_0

    .line 642
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 643
    :catch_4
    move-exception v3

    goto :goto_0

    .line 640
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_2

    .line 642
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 644
    :cond_2
    :goto_4
    throw v3

    .line 643
    :catch_5
    move-exception v4

    goto :goto_4

    .line 640
    .end local v1           #output:Ljava/io/FileOutputStream;
    .restart local v2       #output:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #output:Ljava/io/FileOutputStream;
    .restart local v1       #output:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 638
    .end local v1           #output:Ljava/io/FileOutputStream;
    .restart local v2       #output:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v3

    move-object v1, v2

    .end local v2           #output:Ljava/io/FileOutputStream;
    .restart local v1       #output:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 637
    .end local v1           #output:Ljava/io/FileOutputStream;
    .restart local v2       #output:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v3

    move-object v1, v2

    .end local v2           #output:Ljava/io/FileOutputStream;
    .restart local v1       #output:Ljava/io/FileOutputStream;
    goto :goto_1
.end method


# virtual methods
.method public getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .parameter "key"

    .prologue
    .line 516
    sget-object v0, Lcom/android/settings/wifi/WifiConfigurationManager;->sWifiMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method public initWifiList()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 53
    sget-object v0, Lcom/android/settings/wifi/WifiConfigurationManager;->sWifiMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    const-string v3, "deleted=0"

    .line 58
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigurationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/Wifi;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 59
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 63
    const/4 v0, -0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 64
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    invoke-direct {p0, v6}, Lcom/android/settings/wifi/WifiConfigurationManager;->setWifiConfiguration(Landroid/database/Cursor;)V

    goto :goto_1

    .line 67
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public parseRestoreWifi()V
    .locals 9

    .prologue
    .line 134
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigurationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 135
    .local v1, cacheDir:Ljava/io/File;
    new-instance v5, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    const-string v7, "wpa_supplicant.conf"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 136
    .local v5, wifiFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 165
    :goto_0
    return-void

    .line 140
    :cond_0
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 142
    .local v4, reader:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 143
    .local v3, line:Ljava/lang/String;
    const/4 v2, 0x0

    .line 144
    .local v2, configuration:Landroid/net/wifi/WifiConfiguration;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v0, addWifiList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 148
    if-nez v3, :cond_2

    .line 158
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 159
    invoke-direct {p0, v0, v2}, Lcom/android/settings/wifi/WifiConfigurationManager;->addBackupWifi(Ljava/util/ArrayList;Landroid/net/wifi/WifiConfiguration;)V

    .line 160
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigurationManager;->mContext:Landroid/content/Context;

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static {v6, v0, v7, v8}, Lcom/android/settings/wifi/WifiConfigurationManager;->addWifiList(Landroid/content/Context;Ljava/util/ArrayList;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v0           #addWifiList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v2           #configuration:Landroid/net/wifi/WifiConfiguration;
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #reader:Ljava/io/BufferedReader;
    :goto_2
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 151
    .restart local v0       #addWifiList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/wifi/WifiConfiguration;>;"
    .restart local v2       #configuration:Landroid/net/wifi/WifiConfiguration;
    .restart local v3       #line:Ljava/lang/String;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :cond_2
    :try_start_1
    const-string v6, "network={"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 152
    invoke-direct {p0, v0, v2}, Lcom/android/settings/wifi/WifiConfigurationManager;->addBackupWifi(Ljava/util/ArrayList;Landroid/net/wifi/WifiConfiguration;)V

    .line 153
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    .end local v2           #configuration:Landroid/net/wifi/WifiConfiguration;
    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 155
    .restart local v2       #configuration:Landroid/net/wifi/WifiConfiguration;
    :cond_3
    invoke-static {v3, v2}, Lcom/android/settings/wifi/WifiConfigurationManager;->setWifiConfigurationField(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 156
    if-nez v3, :cond_1

    goto :goto_1

    .line 161
    .end local v0           #addWifiList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v2           #configuration:Landroid/net/wifi/WifiConfiguration;
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #reader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method public removeWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .parameter "wifiConfig"

    .prologue
    .line 520
    if-nez p1, :cond_0

    .line 525
    :goto_0
    return-void

    .line 523
    :cond_0
    invoke-static {p1}, Lcom/android/settings/wifi/WifiConfigurationManager;->getWifiConfigurationKey(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v0

    .line 524
    .local v0, key:Ljava/lang/String;
    sget-object v1, Lcom/android/settings/wifi/WifiConfigurationManager;->sWifiMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public restoreCert(Ljava/lang/String;)V
    .locals 4
    .parameter "key"

    .prologue
    .line 542
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigurationManager;->mWifiCertFileMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 543
    .local v1, certMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 544
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 545
    .local v0, certKey:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/android/settings/wifi/WifiConfigurationManager;->writeCertFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 548
    .end local v0           #certKey:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public updateCurrentWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V
    .locals 6
    .parameter "context"
    .parameter "currentLatitude"
    .parameter "currentLongtitude"
    .parameter "configuration"

    .prologue
    .line 528
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 529
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "bssid"

    iget-object v3, p4, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const-string v2, "latitude"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const-string v2, "longitude"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const-string v2, "uuid"

    iget-object v3, p4, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    const-string v4, ":"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-object v2, p4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v3, p4, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, v1, v2, v3, v4}, Lcom/android/settings/wifi/WifiConfigurationManager;->updateWifiConfiguration(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 535
    iget-object v2, p4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiConfigurationManager;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 536
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 537
    iget-object v2, p4, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 539
    :cond_0
    return-void
.end method

.method public updateWifiList()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 284
    sget-object v0, Lcom/android/settings/wifi/WifiConfigurationManager;->sWifiMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 285
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigurationManager;->mWifiCertFileMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 286
    const-string v3, "deleted=0"

    .line 287
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigurationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/Wifi;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 288
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 297
    :goto_0
    return-void

    .line 292
    :cond_0
    const/4 v0, -0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 293
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    invoke-direct {p0, v6}, Lcom/android/settings/wifi/WifiConfigurationManager;->setWifiConfiguration(Landroid/database/Cursor;)V

    goto :goto_1

    .line 296
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
