.class public Lcom/android/settings/analytics/AnalyticService;
.super Landroid/app/IntentService;
.source "AnalyticService.java"


# instance fields
.field private mTracker:Lmiui/analytics/XiaomiAnalytics;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "AnalyticService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method private getTraffic(Landroid/content/pm/PackageInfo;Landroid/net/NetworkStats;Landroid/net/INetworkStatsSession;JJ)J
    .locals 5
    .parameter "info"
    .parameter "stats"
    .parameter "session"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 152
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 153
    .local v0, entry:Landroid/net/NetworkStats$Entry;
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p2, v0, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;I)Landroid/net/NetworkStats$Entry;

    .line 154
    iget-wide v1, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v3, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v1, v3

    return-wide v1
.end method

.method private trackApkInstaller(Landroid/content/pm/PackageInfo;JJ)V
    .locals 4
    .parameter "info"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 121
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    iget-wide v2, p1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v2, v2, p2

    if-lez v2, :cond_0

    iget-wide v2, p1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v2, v2, p4

    if-gtz v2, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/analytics/AnalyticService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, source:Ljava/lang/String;
    if-nez v1, :cond_1

    const-string v0, ""

    .line 126
    .local v0, installer:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/settings/analytics/AnalyticService;->mTracker:Lmiui/analytics/XiaomiAnalytics;

    const-string v3, "installer"

    invoke-virtual {v2, v3, v0}, Lmiui/analytics/XiaomiAnalytics;->trackEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    .end local v0           #installer:Ljava/lang/String;
    .end local v1           #source:Ljava/lang/String;
    :cond_0
    return-void

    .restart local v1       #source:Ljava/lang/String;
    :cond_1
    move-object v0, v1

    .line 125
    goto :goto_0
.end method

.method private trackApkInstallerAndTraffic()V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v20

    .line 91
    .local v20, calendar:Ljava/util/Calendar;
    const/16 v7, 0xb

    const/4 v9, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7, v9}, Ljava/util/Calendar;->set(II)V

    .line 92
    const/16 v7, 0xc

    const/4 v9, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7, v9}, Ljava/util/Calendar;->set(II)V

    .line 93
    const/16 v7, 0xd

    const/4 v9, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7, v9}, Ljava/util/Calendar;->set(II)V

    .line 94
    invoke-virtual/range {v20 .. v20}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 95
    .local v5, endQueryTime:J
    const-wide/32 v11, 0x5265c00

    sub-long v3, v5, v11

    .line 97
    .local v3, startQueryTime:J
    const-string v7, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/settings/analytics/AnalyticService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/telephony/TelephonyManager;

    .line 99
    .local v26, telephony:Landroid/telephony/TelephonyManager;
    const-string v7, "netstats"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v25

    .line 101
    .local v25, statsService:Landroid/net/INetworkStatsService;
    invoke-interface/range {v25 .. v25}, Landroid/net/INetworkStatsService;->forceUpdate()V

    .line 102
    invoke-interface/range {v25 .. v25}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v1

    .line 103
    .local v1, session:Landroid/net/INetworkStatsSession;
    invoke-virtual/range {v26 .. v26}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    .line 105
    .local v2, mobileTemplate:Landroid/net/NetworkTemplate;
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v8

    .line 106
    .local v8, wifiTemplate:Landroid/net/NetworkTemplate;
    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Landroid/net/INetworkStatsSession;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;

    move-result-object v22

    .line 107
    .local v22, mobileStats:Landroid/net/NetworkStats;
    const/4 v13, 0x0

    move-object v7, v1

    move-wide v9, v3

    move-wide v11, v5

    invoke-interface/range {v7 .. v13}, Landroid/net/INetworkStatsSession;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;

    move-result-object v13

    .line 109
    .local v13, wifiStats:Landroid/net/NetworkStats;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/analytics/AnalyticService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    .line 110
    .local v24, pm:Landroid/content/pm/PackageManager;
    const/16 v7, 0x1000

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v23

    .line 111
    .local v23, pkgList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageInfo;

    .local v10, info:Landroid/content/pm/PackageInfo;
    move-object/from16 v9, p0

    move-object v11, v1

    move-object/from16 v12, v22

    move-wide v14, v3

    move-wide/from16 v16, v5

    .line 112
    invoke-direct/range {v9 .. v17}, Lcom/android/settings/analytics/AnalyticService;->trackAppDailyTraffic(Landroid/content/pm/PackageInfo;Landroid/net/INetworkStatsSession;Landroid/net/NetworkStats;Landroid/net/NetworkStats;JJ)V

    move-object/from16 v14, p0

    move-object v15, v10

    move-wide/from16 v16, v3

    move-wide/from16 v18, v5

    .line 114
    invoke-direct/range {v14 .. v19}, Lcom/android/settings/analytics/AnalyticService;->trackApkInstaller(Landroid/content/pm/PackageInfo;JJ)V

    goto :goto_0

    .line 117
    .end local v10           #info:Landroid/content/pm/PackageInfo;
    :cond_0
    invoke-interface {v1}, Landroid/net/INetworkStatsSession;->close()V

    .line 118
    return-void
.end method

.method private trackAppDailyTraffic(Landroid/content/pm/PackageInfo;Landroid/net/INetworkStatsSession;Landroid/net/NetworkStats;Landroid/net/NetworkStats;JJ)V
    .locals 19
    .parameter "info"
    .parameter "session"
    .parameter "mobileStats"
    .parameter "wifiStats"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 132
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object/from16 v16, v0

    .line 133
    .local v16, permssions:[Ljava/lang/String;
    if-eqz v16, :cond_1

    move-object/from16 v0, v16

    array-length v1, v0

    if-lez v1, :cond_1

    .line 134
    move-object/from16 v9, v16

    .local v9, arr$:[Ljava/lang/String;
    array-length v11, v9

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_0
    if-ge v10, v11, :cond_1

    aget-object v15, v9, v10

    .line 135
    .local v15, perm:Ljava/lang/String;
    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    .line 136
    invoke-direct/range {v1 .. v8}, Lcom/android/settings/analytics/AnalyticService;->getTraffic(Landroid/content/pm/PackageInfo;Landroid/net/NetworkStats;Landroid/net/INetworkStatsSession;JJ)J

    move-result-wide v12

    .local v12, mobileTraffic:J
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p2

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    .line 137
    invoke-direct/range {v1 .. v8}, Lcom/android/settings/analytics/AnalyticService;->getTraffic(Landroid/content/pm/PackageInfo;Landroid/net/NetworkStats;Landroid/net/INetworkStatsSession;JJ)J

    move-result-wide v17

    .line 138
    .local v17, wifiTraffic:J
    const-wide/16 v1, 0x0

    cmp-long v1, v12, v1

    if-gtz v1, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, v17, v1

    if-lez v1, :cond_1

    .line 139
    :cond_0
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 140
    .local v14, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string v1, "mobileTraffic"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v14, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v1, "wifiTraffic"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v14, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/analytics/AnalyticService;->mTracker:Lmiui/analytics/XiaomiAnalytics;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v14}, Lmiui/analytics/XiaomiAnalytics;->trackEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    .end local v9           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v11           #len$:I
    .end local v12           #mobileTraffic:J
    .end local v14           #params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v15           #perm:Ljava/lang/String;
    .end local v17           #wifiTraffic:J
    :cond_1
    return-void

    .line 134
    .restart local v9       #arr$:[Ljava/lang/String;
    .restart local v10       #i$:I
    .restart local v11       #len$:I
    .restart local v15       #perm:Ljava/lang/String;
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0
.end method

.method private trackInnerStorageUsage()V
    .locals 12

    .prologue
    .line 79
    sget-boolean v6, Lmiui/os/Build;->IS_MITWO:Z

    if-eqz v6, :cond_0

    .line 80
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    .line 81
    .local v4, path:Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 82
    .local v5, stat:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 83
    .local v2, blockSize:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v6, v6

    mul-long v0, v6, v2

    .line 85
    .local v0, availableSize:J
    iget-object v6, p0, Lcom/android/settings/analytics/AnalyticService;->mTracker:Lmiui/analytics/XiaomiAnalytics;

    const-string v7, "data_avail"

    long-to-double v8, v0

    const-wide v10, 0x41cdcd6500000000L

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lmiui/analytics/XiaomiAnalytics;->trackEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    .end local v0           #availableSize:J
    .end local v2           #blockSize:J
    .end local v4           #path:Ljava/io/File;
    .end local v5           #stat:Landroid/os/StatFs;
    :cond_0
    return-void
.end method

.method private trackLockScreenIntentType(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 72
    const-string v1, "eventObj"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, trackEvent:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 74
    const-string v0, ""

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/android/settings/analytics/AnalyticService;->mTracker:Lmiui/analytics/XiaomiAnalytics;

    const-string v2, "eventId"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lmiui/analytics/XiaomiAnalytics;->trackEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 46
    invoke-static {}, Lmiui/analytics/XiaomiAnalytics;->getInstance()Lmiui/analytics/XiaomiAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/analytics/AnalyticService;->mTracker:Lmiui/analytics/XiaomiAnalytics;

    .line 47
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/analytics/AnalyticService;->mTracker:Lmiui/analytics/XiaomiAnalytics;

    .line 53
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 57
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.COLLECT_ANALYTICS_DATA_AWELOCKSCREEEN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/analytics/AnalyticService;->trackLockScreenIntentType(Landroid/content/Intent;)V

    .line 69
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/analytics/AnalyticService;->trackInnerStorageUsage()V

    .line 64
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/analytics/AnalyticService;->trackApkInstallerAndTraffic()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    :catch_0
    move-exception v1

    .line 66
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
