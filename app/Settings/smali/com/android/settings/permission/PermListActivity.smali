.class public Lcom/android/settings/permission/PermListActivity;
.super Landroid/preference/PreferenceActivity;
.source "PermListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/permission/PermListActivity$LBEConnection;
    }
.end annotation


# instance fields
.field private mHipSService:Lcom/lbe/security/service/privacy/HIPSService;

.field private mLBEConnection:Lcom/android/settings/permission/PermListActivity$LBEConnection;

.field private mPermMonitorEnable:Landroid/preference/CheckBoxPreference;

.field private mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/permission/PermListActivity;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/settings/permission/PermListActivity;->mPermMonitorEnable:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/permission/PermListActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/settings/permission/PermListActivity;->enableMonitor(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/permission/PermListActivity;)Lcom/lbe/security/service/privacy/HIPSService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/settings/permission/PermListActivity;->mHipSService:Lcom/lbe/security/service/privacy/HIPSService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/permission/PermListActivity;Lcom/lbe/security/service/privacy/HIPSService;)Lcom/lbe/security/service/privacy/HIPSService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/settings/permission/PermListActivity;->mHipSService:Lcom/lbe/security/service/privacy/HIPSService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/permission/PermListActivity;)Lcom/lbe/security/service/sdkhelper/SDKHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/settings/permission/PermListActivity;->mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/permission/PermListActivity;Lcom/lbe/security/service/sdkhelper/SDKHelper;)Lcom/lbe/security/service/sdkhelper/SDKHelper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/settings/permission/PermListActivity;->mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/permission/PermListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/settings/permission/PermListActivity;->updateUI()V

    return-void
.end method

.method private addPreference(Ljava/lang/String;Ljava/util/List;)V
    .locals 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/settings/permission/PermListActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/preference/PreferenceCategory;

    move v8, v1

    .line 61
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 63
    :try_start_0
    new-instance v9, Landroid/preference/Preference;

    invoke-direct {v9, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 64
    iget-object v1, p0, Lcom/android/settings/permission/PermListActivity;->mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;

    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/lbe/security/service/sdkhelper/SDKHelper;->getPermissionName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 65
    new-instance v0, Lcom/lbe/security/service/privacy/PackageFilter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v10, 0x0

    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/lbe/security/service/privacy/PackageFilter;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;[I)V

    .line 66
    iget-object v1, p0, Lcom/android/settings/permission/PermListActivity;->mHipSService:Lcom/lbe/security/service/privacy/HIPSService;

    invoke-virtual {v1, v0}, Lcom/lbe/security/service/privacy/HIPSService;->getPackageCount(Lcom/lbe/security/service/privacy/PackageFilter;)I

    move-result v1

    .line 67
    iget-object v2, p0, Lcom/android/settings/permission/PermListActivity;->mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;

    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/lbe/security/service/sdkhelper/SDKHelper;->getPermissionHint(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 69
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/permission/PermDetailActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    const-string v2, "permission"

    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 71
    invoke-virtual {v9, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 72
    invoke-virtual {v6, v9}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Lcom/lbe/security/sdk/SDKException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_1
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    .line 76
    :cond_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private enableMonitor(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/permission/PermListActivity;->mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;

    invoke-virtual {v0, p1}, Lcom/lbe/security/service/sdkhelper/SDKHelper;->setHIPSEnabled(Z)V

    .line 113
    invoke-direct {p0}, Lcom/android/settings/permission/PermListActivity;->updateMonitor()V

    .line 114
    return-void
.end method

.method private updateMonitor()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 117
    const v0, 0x7f0c06d5

    invoke-virtual {p0, v0}, Lcom/android/settings/permission/PermListActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 118
    .local v8, titleText:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/permission/PermListActivity;->mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;

    invoke-virtual {v0}, Lcom/lbe/security/service/sdkhelper/SDKHelper;->getHIPSEnabled()Z

    move-result v7

    .line 119
    .local v7, isHipEnabled:Z
    if-eqz v7, :cond_0

    .line 120
    iget-object v9, p0, Lcom/android/settings/permission/PermListActivity;->mHipSService:Lcom/lbe/security/service/privacy/HIPSService;

    new-instance v0, Lcom/lbe/security/service/privacy/PackageFilter;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/lbe/security/service/privacy/PackageFilter;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;[I)V

    invoke-virtual {v9, v0}, Lcom/lbe/security/service/privacy/HIPSService;->getPackageCount(Lcom/lbe/security/service/privacy/PackageFilter;)I

    move-result v6

    .line 121
    .local v6, count:I
    const v0, 0x7f0c06d4

    new-array v1, v10, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/permission/PermListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 123
    .end local v6           #count:I
    :cond_0
    iget-object v0, p0, Lcom/android/settings/permission/PermListActivity;->mPermMonitorEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v8}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/permission/PermListActivity;->mPermMonitorEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 125
    return-void
.end method

.method private updateUI()V
    .locals 4

    .prologue
    .line 51
    const-string v2, "perm_monitor_enable"

    invoke-virtual {p0, v2}, Lcom/android/settings/permission/PermListActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/permission/PermListActivity;->mPermMonitorEnable:Landroid/preference/CheckBoxPreference;

    .line 52
    iget-object v2, p0, Lcom/android/settings/permission/PermListActivity;->mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lbe/security/service/sdkhelper/SDKHelper;->findPermissionByGroup(I)Ljava/util/List;

    move-result-object v1

    .line 53
    .local v1, securityList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/settings/permission/PermListActivity;->mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/lbe/security/service/sdkhelper/SDKHelper;->findPermissionByGroup(I)Ljava/util/List;

    move-result-object v0

    .line 54
    .local v0, privacyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v2, "perm_monitor_security"

    invoke-direct {p0, v2, v1}, Lcom/android/settings/permission/PermListActivity;->addPreference(Ljava/lang/String;Ljava/util/List;)V

    .line 55
    const-string v2, "perm_monitor_privacy"

    invoke-direct {p0, v2, v0}, Lcom/android/settings/permission/PermListActivity;->addPreference(Ljava/lang/String;Ljava/util/List;)V

    .line 56
    invoke-direct {p0}, Lcom/android/settings/permission/PermListActivity;->updateMonitor()V

    .line 57
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    new-instance v0, Lcom/android/settings/permission/PermListActivity$LBEConnection;

    const-string v1, "com.lbe.security.miui"

    invoke-direct {v0, p0, p0, v1}, Lcom/android/settings/permission/PermListActivity$LBEConnection;-><init>(Lcom/android/settings/permission/PermListActivity;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/permission/PermListActivity;->mLBEConnection:Lcom/android/settings/permission/PermListActivity$LBEConnection;

    .line 40
    iget-object v0, p0, Lcom/android/settings/permission/PermListActivity;->mLBEConnection:Lcom/android/settings/permission/PermListActivity$LBEConnection;

    invoke-static {v0}, Lcom/lbe/security/sdk/SDKService;->bindSDKService(Lcom/lbe/security/sdk/SDKConnection;)Z

    .line 41
    const v0, 0x7f060034

    invoke-virtual {p0, v0}, Lcom/android/settings/permission/PermListActivity;->addPreferencesFromResource(I)V

    .line 42
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/permission/PermListActivity;->mLBEConnection:Lcom/android/settings/permission/PermListActivity$LBEConnection;

    invoke-static {v0}, Lcom/lbe/security/sdk/SDKService;->unbindSDKService(Lcom/lbe/security/sdk/SDKConnection;)V

    .line 47
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 48
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 81
    const-string v2, "perm_monitor_enable"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 82
    iget-object v2, p0, Lcom/android/settings/permission/PermListActivity;->mPermMonitorEnable:Landroid/preference/CheckBoxPreference;

    if-nez v2, :cond_0

    .line 108
    :goto_0
    return v1

    .line 85
    :cond_0
    iget-object v2, p0, Lcom/android/settings/permission/PermListActivity;->mPermMonitorEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    .line 86
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 87
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0c06e8

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 88
    const v2, 0x7f0c06e9

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 89
    const/high16 v2, 0x104

    new-instance v3, Lcom/android/settings/permission/PermListActivity$1;

    invoke-direct {v3, p0}, Lcom/android/settings/permission/PermListActivity$1;-><init>(Lcom/android/settings/permission/PermListActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 95
    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/permission/PermListActivity$2;

    invoke-direct {v3, p0}, Lcom/android/settings/permission/PermListActivity$2;-><init>(Lcom/android/settings/permission/PermListActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 102
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 104
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings/permission/PermListActivity;->enableMonitor(Z)V

    goto :goto_0

    .line 108
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method
