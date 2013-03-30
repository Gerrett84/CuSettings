.class public Lcom/android/settings/wifi/WifiConfigActivity;
.super Landroid/app/Activity;
.source "WifiConfigActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private mChannel:Landroid/net/wifi/WifiManager$Channel;

.field private mDialog:Lcom/android/settings/wifi/WifiDialog;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 39
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 40
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v1

    .line 41
    .local v1, configController:Lcom/android/settings/wifi/WifiConfigController;
    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 42
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 44
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #configController:Lcom/android/settings/wifi/WifiConfigController;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiConfigActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 23
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Landroid/net/wifi/WifiManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/WifiManager$ChannelListener;)Landroid/net/wifi/WifiManager$Channel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    .line 25
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "wifi_config"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 26
    .local v0, wifiConfiguration:Landroid/net/wifi/WifiConfiguration;
    new-instance v1, Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 27
    new-instance v1, Lcom/android/settings/wifi/WifiDialog;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    const/4 v3, 0x1

    invoke-direct {v1, p0, p0, v2, v3}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;Z)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 28
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    new-instance v2, Lcom/android/settings/wifi/WifiConfigActivity$1;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiConfigActivity$1;-><init>(Lcom/android/settings/wifi/WifiConfigActivity;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 34
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiDialog;->show()V

    .line 35
    return-void
.end method
