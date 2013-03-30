.class public Lcom/android/settings/AnalyticsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AnalyticsReceiver.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTracker:Lmiui/analytics/XiaomiAnalytics;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private trackInnerStorageUsage()V
    .locals 12

    .prologue
    .line 45
    new-instance v6, Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

    invoke-direct {v6}, Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;-><init>()V

    iget-wide v0, v6, Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;->free:J

    .line 46
    .local v0, availableSize:J
    sget-boolean v6, Lmiui/os/Build;->IS_MITWO:Z

    if-eqz v6, :cond_0

    .line 47
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    .line 48
    .local v4, path:Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 49
    .local v5, stat:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 50
    .local v2, blockSize:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v6, v2

    add-long/2addr v0, v6

    .line 52
    .end local v2           #blockSize:J
    .end local v4           #path:Ljava/io/File;
    .end local v5           #stat:Landroid/os/StatFs;
    :cond_0
    iget-object v6, p0, Lcom/android/settings/AnalyticsReceiver;->mTracker:Lmiui/analytics/XiaomiAnalytics;

    const-string v7, "data_avail"

    long-to-double v8, v0

    const-wide v10, 0x41cdcd6500000000L

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lmiui/analytics/XiaomiAnalytics;->trackEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method private trackLockScreenIntentType(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 38
    const-string v1, "eventObj"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 39
    .local v0, trackEvent:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 40
    const-string v0, ""

    .line 41
    .end local v0           #trackEvent:Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/AnalyticsReceiver;->mTracker:Lmiui/analytics/XiaomiAnalytics;

    const-string v2, "eventId"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lmiui/analytics/XiaomiAnalytics;->trackEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/android/settings/AnalyticsReceiver;->mContext:Landroid/content/Context;

    .line 24
    invoke-static {}, Lmiui/analytics/XiaomiAnalytics;->getInstance()Lmiui/analytics/XiaomiAnalytics;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/AnalyticsReceiver;->mTracker:Lmiui/analytics/XiaomiAnalytics;

    .line 25
    iget-object v1, p0, Lcom/android/settings/AnalyticsReceiver;->mTracker:Lmiui/analytics/XiaomiAnalytics;

    iget-object v2, p0, Lcom/android/settings/AnalyticsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lmiui/analytics/XiaomiAnalytics;->startSession(Landroid/content/Context;)V

    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.COLLECT_ANALYTICS_DATA_AWELOCKSCREEEN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    invoke-direct {p0, p2}, Lcom/android/settings/AnalyticsReceiver;->trackLockScreenIntentType(Landroid/content/Intent;)V

    .line 34
    :goto_0
    iget-object v1, p0, Lcom/android/settings/AnalyticsReceiver;->mTracker:Lmiui/analytics/XiaomiAnalytics;

    invoke-virtual {v1}, Lmiui/analytics/XiaomiAnalytics;->endSession()V

    .line 35
    return-void

    .line 31
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/AnalyticsReceiver;->trackInnerStorageUsage()V

    goto :goto_0
.end method
