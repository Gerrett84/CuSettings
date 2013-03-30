.class public Lcom/android/settings/analytics/SettingsAnalyticsHelper;
.super Ljava/lang/Object;
.source "SettingsAnalyticsHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static trackSkipLockscreen(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "skipLockscreen"

    .prologue
    .line 25
    invoke-static {}, Lmiui/analytics/XiaomiAnalytics;->getInstance()Lmiui/analytics/XiaomiAnalytics;

    move-result-object v0

    .line 26
    .local v0, analyticsInstance:Lmiui/analytics/XiaomiAnalytics;
    invoke-virtual {v0, p0}, Lmiui/analytics/XiaomiAnalytics;->startSession(Landroid/content/Context;)V

    .line 27
    const-string v1, "skip_lockscreen"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiui/analytics/XiaomiAnalytics;->trackEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    invoke-virtual {v0}, Lmiui/analytics/XiaomiAnalytics;->endSession()V

    .line 29
    return-void
.end method

.method public static trackUnlockscreenType(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "unlockscreenType"

    .prologue
    .line 18
    invoke-static {}, Lmiui/analytics/XiaomiAnalytics;->getInstance()Lmiui/analytics/XiaomiAnalytics;

    move-result-object v0

    .line 19
    .local v0, analyticsInstance:Lmiui/analytics/XiaomiAnalytics;
    invoke-virtual {v0, p0}, Lmiui/analytics/XiaomiAnalytics;->startSession(Landroid/content/Context;)V

    .line 20
    const-string v1, "unlockscreen_type"

    invoke-virtual {v0, v1, p1}, Lmiui/analytics/XiaomiAnalytics;->trackEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    invoke-virtual {v0}, Lmiui/analytics/XiaomiAnalytics;->endSession()V

    .line 22
    return-void
.end method
