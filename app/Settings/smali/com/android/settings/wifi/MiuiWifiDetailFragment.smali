.class public Lcom/android/settings/wifi/MiuiWifiDetailFragment;
.super Lcom/android/settings/BaseEditFragment;
.source "MiuiWifiDetailFragment.java"

# interfaces
.implements Lcom/android/settings/wifi/MiuiWifiConfigController$OnSubmitStateChangeListener;


# instance fields
.field private mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private mController:Lcom/android/settings/wifi/MiuiWifiConfigController;

.field private mEnabledSubmit:Z

.field private mNetworkId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/settings/BaseEditFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mNetworkId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)Lcom/android/settings/wifi/AccessPoint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    return-object v0
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ssid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, ssid:Ljava/lang/String;
    const v1, 0x7f0c0784

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, -0x1

    const/4 v4, 0x1

    .line 45
    invoke-super {p0, p1}, Lcom/android/settings/BaseEditFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 47
    .local v6, activity:Landroid/app/Activity;
    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 48
    .local v7, bundle:Landroid/os/Bundle;
    iput v10, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mNetworkId:I

    .line 49
    new-instance v0, Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {v0, v6, v7}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 50
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->setHasOptionsMenu(Z)V

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 52
    .local v2, view:Landroid/view/View;
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iput v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mNetworkId:I

    .line 53
    new-instance v0, Lcom/android/settings/wifi/MiuiWifiConfigController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/MiuiWifiConfigController;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;ZLcom/android/settings/wifi/MiuiWifiConfigController$OnSubmitStateChangeListener;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mController:Lcom/android/settings/wifi/MiuiWifiConfigController;

    .line 54
    const v0, 0x7f0901cd

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 55
    .local v9, deleteButton:Landroid/widget/Button;
    iget v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mNetworkId:I

    if-eq v0, v10, :cond_0

    .line 56
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 57
    new-instance v0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment$1;-><init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x102001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 86
    .local v8, button2:Landroid/view/View;
    invoke-virtual {v8, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 87
    return-void
.end method

.method public onCancel()V
    .locals 3

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 106
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400b9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 40
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public onSave()V
    .locals 5

    .prologue
    .line 110
    iget-boolean v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mEnabledSubmit:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mController:Lcom/android/settings/wifi/MiuiWifiConfigController;

    if-eqz v2, :cond_1

    .line 111
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mController:Lcom/android/settings/wifi/MiuiWifiConfigController;

    invoke-virtual {v2}, Lcom/android/settings/wifi/MiuiWifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 112
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 113
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 114
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "config"

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mController:Lcom/android/settings/wifi/MiuiWifiConfigController;

    invoke-virtual {v3}, Lcom/android/settings/wifi/MiuiWifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 115
    const-string v2, "bssid"

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v3, v3, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string v2, "ssid"

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v3, v3, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 122
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->onBackPressed()V

    .line 123
    return-void

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onSubmitStateChange(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mEnabledSubmit:Z

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    const v2, 0x102001a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 93
    .local v0, button2:Landroid/view/View;
    iget-boolean v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mEnabledSubmit:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 94
    return-void
.end method
