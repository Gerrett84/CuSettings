.class public Lcom/android/settings/permission/AppPermissionsEditor;
.super Landroid/preference/PreferenceActivity;
.source "AppPermissionsEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/permission/AppPermissionsEditor$LBEConnection;
    }
.end annotation


# instance fields
.field private mActionStates:[Ljava/lang/String;

.field private mActionValue:[Ljava/lang/String;

.field private mAppLabel:Ljava/lang/String;

.field private mAppVersion:Ljava/lang/String;

.field private mAutoStartUpListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mAutoStartupPref:Landroid/preference/CheckBoxPreference;

.field private mHipSService:Lcom/lbe/security/service/privacy/HIPSService;

.field private mLBEConnection:Lcom/android/settings/permission/AppPermissionsEditor$LBEConnection;

.field private mLogList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lbe/security/bean/EventLog;",
            ">;"
        }
    .end annotation
.end field

.field private mLogsCategory:Landroid/preference/PreferenceCategory;

.field private mManageItem:Landroid/view/MenuItem;

.field private mPackage:Lcom/lbe/security/bean/Package;

.field private mPermsListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mPkgInfo:Landroid/content/pm/PackageInfo;

.field private mPkgManager:Landroid/content/pm/PackageManager;

.field private mPkgName:Ljava/lang/String;

.field private mPrivacyCategory:Landroid/preference/PreferenceCategory;

.field private mPrivacyIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;

.field private mSecurityCategory:Landroid/preference/PreferenceCategory;

.field private mSecurityIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTrustListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mTrustSwitchPref:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPkgName:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mAppLabel:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mAppVersion:Ljava/lang/String;

    .line 189
    new-instance v0, Lcom/android/settings/permission/AppPermissionsEditor$1;

    invoke-direct {v0, p0}, Lcom/android/settings/permission/AppPermissionsEditor$1;-><init>(Lcom/android/settings/permission/AppPermissionsEditor;)V

    iput-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mTrustListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 216
    new-instance v0, Lcom/android/settings/permission/AppPermissionsEditor$2;

    invoke-direct {v0, p0}, Lcom/android/settings/permission/AppPermissionsEditor$2;-><init>(Lcom/android/settings/permission/AppPermissionsEditor;)V

    iput-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mAutoStartUpListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 249
    new-instance v0, Lcom/android/settings/permission/AppPermissionsEditor$3;

    invoke-direct {v0, p0}, Lcom/android/settings/permission/AppPermissionsEditor$3;-><init>(Lcom/android/settings/permission/AppPermissionsEditor;)V

    iput-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPermsListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 374
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/permission/AppPermissionsEditor;)Lcom/lbe/security/bean/Package;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPackage:Lcom/lbe/security/bean/Package;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/permission/AppPermissionsEditor;)Lcom/lbe/security/service/privacy/HIPSService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mHipSService:Lcom/lbe/security/service/privacy/HIPSService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/permission/AppPermissionsEditor;Lcom/lbe/security/service/privacy/HIPSService;)Lcom/lbe/security/service/privacy/HIPSService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mHipSService:Lcom/lbe/security/service/privacy/HIPSService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/permission/AppPermissionsEditor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/permission/AppPermissionsEditor;->initUI()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/permission/AppPermissionsEditor;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/permission/AppPermissionsEditor;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPkgManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/permission/AppPermissionsEditor;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings/permission/AppPermissionsEditor;->getActionDrawableRes(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$602(Lcom/android/settings/permission/AppPermissionsEditor;Lcom/lbe/security/service/sdkhelper/SDKHelper;)Lcom/lbe/security/service/sdkhelper/SDKHelper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;

    return-object p1
.end method

.method private buildLogs()V
    .locals 9

    .prologue
    .line 334
    iget-object v6, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mLogList:Ljava/util/List;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mLogList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 335
    iget-object v6, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mLogList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lbe/security/bean/EventLog;

    .line 336
    .local v3, log:Lcom/lbe/security/bean/EventLog;
    new-instance v4, Lcom/android/settings/permission/PermissionLogPreference;

    invoke-direct {v4, p0}, Lcom/android/settings/permission/PermissionLogPreference;-><init>(Landroid/content/Context;)V

    .line 337
    .local v4, pref:Lcom/android/settings/permission/PermissionLogPreference;
    invoke-virtual {v3}, Lcom/lbe/security/bean/EventLog;->getTimestamp()J

    move-result-wide v6

    const-string v8, "yyyy-MM-dd"

    invoke-direct {p0, v6, v7, v8}, Lcom/android/settings/permission/AppPermissionsEditor;->getFormatLogTime(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, data:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/lbe/security/bean/EventLog;->getTimestamp()J

    move-result-wide v6

    const-string v8, "HH:mm"

    invoke-direct {p0, v6, v7, v8}, Lcom/android/settings/permission/AppPermissionsEditor;->getFormatLogTime(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 339
    .local v5, time:Ljava/lang/String;
    const-string v6, "%s %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v8, 0x1

    aput-object v5, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/settings/permission/PermissionLogPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 340
    invoke-virtual {v3}, Lcom/lbe/security/bean/EventLog;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/settings/permission/PermissionLogPreference;->setPermName(Ljava/lang/String;)V

    .line 342
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;

    invoke-virtual {v3}, Lcom/lbe/security/bean/EventLog;->getAction()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/lbe/security/service/sdkhelper/SDKHelper;->getActionColoredName(I)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/settings/permission/PermissionLogPreference;->setPermState(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lcom/lbe/security/sdk/SDKException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :goto_1
    iget-object v6, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mLogsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 343
    :catch_0
    move-exception v1

    .line 344
    .local v1, e:Lcom/lbe/security/sdk/SDKException;
    const-string v6, "AppPermissionsEditor"

    const-string v7, "build logs failed : getActionColoredName."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 349
    .end local v0           #data:Ljava/lang/String;
    .end local v1           #e:Lcom/lbe/security/sdk/SDKException;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #log:Lcom/lbe/security/bean/EventLog;
    .end local v4           #pref:Lcom/android/settings/permission/PermissionLogPreference;
    .end local v5           #time:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/permission/AppPermissionsEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mLogsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 351
    :cond_1
    return-void
.end method

.method private buildPermissions(Ljava/util/List;Landroid/preference/PreferenceCategory;)V
    .locals 10
    .parameter
    .parameter "cate"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/preference/PreferenceCategory;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, permsIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .line 304
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 305
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 306
    .local v3, id:I
    new-instance v5, Lcom/android/settings/permission/AppPermsEditorPreference;

    invoke-direct {v5, p0}, Lcom/android/settings/permission/AppPermsEditorPreference;-><init>(Landroid/content/Context;)V

    .line 307
    .local v5, prefItem:Lcom/android/settings/permission/AppPermsEditorPreference;
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/permission/AppPermsEditorPreference;->setKey(Ljava/lang/String;)V

    .line 309
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;

    invoke-virtual {v6, v3}, Lcom/lbe/security/service/sdkhelper/SDKHelper;->getPermissionName(I)Ljava/lang/String;

    move-result-object v4

    .line 310
    .local v4, name:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;

    iget-object v8, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPackage:Lcom/lbe/security/bean/Package;

    invoke-virtual {v6, v8, v3}, Lcom/lbe/security/service/sdkhelper/SDKHelper;->getAction(Lcom/lbe/security/bean/Package;I)I

    move-result v0

    .line 311
    .local v0, action:I
    invoke-virtual {v5, v4}, Lcom/android/settings/permission/AppPermsEditorPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v6, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;

    invoke-virtual {v6, v3}, Lcom/lbe/security/service/sdkhelper/SDKHelper;->getPermissionDesc(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/permission/AppPermsEditorPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 313
    invoke-direct {p0, v0}, Lcom/android/settings/permission/AppPermissionsEditor;->getActionDrawableRes(I)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_0

    .line 314
    invoke-direct {p0, v0}, Lcom/android/settings/permission/AppPermissionsEditor;->getActionDrawableRes(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/settings/permission/AppPermsEditorPreference;->setState(I)V

    .line 316
    :cond_0
    invoke-virtual {v5, v4}, Lcom/android/settings/permission/AppPermsEditorPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v6, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mActionStates:[Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/settings/permission/AppPermsEditorPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 318
    iget-object v6, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mActionValue:[Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/settings/permission/AppPermsEditorPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 319
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/permission/AppPermsEditorPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 320
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/settings/permission/AppPermsEditorPreference;->setPersistent(Z)V

    .line 321
    iget-object v6, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPermsListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v5, v6}, Lcom/android/settings/permission/AppPermsEditorPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 322
    iget-object v6, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mTrustSwitchPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v5, v6}, Lcom/android/settings/permission/AppPermsEditorPreference;->setEnabled(Z)V

    .line 323
    invoke-virtual {p2, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Lcom/lbe/security/sdk/SDKException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 324
    .end local v0           #action:I
    .end local v4           #name:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 325
    .local v1, e:Lcom/lbe/security/sdk/SDKException;
    const-string v6, "AppPermissionsEditor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "build permissions failed!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/lbe/security/sdk/SDKException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1           #e:Lcom/lbe/security/sdk/SDKException;
    .restart local v0       #action:I
    .restart local v4       #name:Ljava/lang/String;
    :cond_1
    move v6, v7

    .line 322
    goto :goto_1

    .line 329
    .end local v0           #action:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #id:I
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #prefItem:Lcom/android/settings/permission/AppPermsEditorPreference;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/permission/AppPermissionsEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 331
    :cond_3
    return-void
.end method

.method private buildPreferences()V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mSecurityIdList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mSecurityCategory:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/permission/AppPermissionsEditor;->buildPermissions(Ljava/util/List;Landroid/preference/PreferenceCategory;)V

    .line 298
    iget-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPrivacyIdList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPrivacyCategory:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/permission/AppPermissionsEditor;->buildPermissions(Ljava/util/List;Landroid/preference/PreferenceCategory;)V

    .line 300
    invoke-direct {p0}, Lcom/android/settings/permission/AppPermissionsEditor;->buildLogs()V

    .line 301
    return-void
.end method

.method private getActionDrawableRes(I)I
    .locals 1
    .parameter "action"

    .prologue
    .line 360
    packed-switch p1, :pswitch_data_0

    .line 371
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 362
    :pswitch_0
    const v0, 0x7f020002

    .line 363
    .local v0, res:I
    goto :goto_0

    .line 365
    .end local v0           #res:I
    :pswitch_1
    const v0, 0x7f02013a

    .line 366
    .restart local v0       #res:I
    goto :goto_0

    .line 368
    .end local v0           #res:I
    :pswitch_2
    const v0, 0x7f02013b

    .line 369
    .restart local v0       #res:I
    goto :goto_0

    .line 360
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getFormatLogTime(JLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "date"
    .parameter "format"

    .prologue
    .line 354
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 355
    .local v0, formatter:Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private initUI()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/permission/AppPermissionsEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/permission/AppPermissionsEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 137
    :cond_0
    const v1, 0x7f06000c

    invoke-virtual {p0, v1}, Lcom/android/settings/permission/AppPermissionsEditor;->addPreferencesFromResource(I)V

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/permission/AppPermissionsEditor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 140
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mHipSService:Lcom/lbe/security/service/privacy/HIPSService;

    const-string v4, "extra_package_uid"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/lbe/security/service/privacy/HIPSService;->findPackageByUid(I)Lcom/lbe/security/bean/Package;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPackage:Lcom/lbe/security/bean/Package;

    .line 141
    iget-object v1, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPackage:Lcom/lbe/security/bean/Package;

    if-nez v1, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/permission/AppPermissionsEditor;->finish()V

    .line 173
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v1, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPackage:Lcom/lbe/security/bean/Package;

    invoke-virtual {v1}, Lcom/lbe/security/bean/Package;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPkgName:Ljava/lang/String;

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/permission/AppPermissionsEditor;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPkgManager:Landroid/content/pm/PackageManager;

    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPkgManager:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPkgName:Ljava/lang/String;

    const/16 v5, 0x1000

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPkgInfo:Landroid/content/pm/PackageInfo;

    .line 150
    iget-object v1, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPkgManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mAppLabel:Ljava/lang/String;

    .line 151
    const v1, 0x7f0c03ed

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v1, v4}, Lcom/android/settings/permission/AppPermissionsEditor;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mAppVersion:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/permission/AppPermissionsEditor;->setActionBarView()V

    .line 157
    invoke-direct {p0}, Lcom/android/settings/permission/AppPermissionsEditor;->parsePermissions()V

    .line 158
    invoke-direct {p0}, Lcom/android/settings/permission/AppPermissionsEditor;->parseLogs()V

    .line 160
    const-string v1, "trust_switch_pref"

    invoke-virtual {p0, v1}, Lcom/android/settings/permission/AppPermissionsEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mTrustSwitchPref:Landroid/preference/CheckBoxPreference;

    .line 161
    iget-object v1, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mTrustSwitchPref:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPackage:Lcom/lbe/security/bean/Package;

    invoke-virtual {v4}, Lcom/lbe/security/bean/Package;->isTrust()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 162
    iget-object v1, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mTrustSwitchPref:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mTrustListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 163
    const-string v1, "auto_startup_pref"

    invoke-virtual {p0, v1}, Lcom/android/settings/permission/AppPermissionsEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mAutoStartupPref:Landroid/preference/CheckBoxPreference;

    .line 164
    iget-object v4, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mAutoStartupPref:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x4000

    and-int/2addr v1, v5

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 166
    iget-object v1, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mAutoStartupPref:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mAutoStartUpListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 167
    const-string v1, "privacy_relative"

    invoke-virtual {p0, v1}, Lcom/android/settings/permission/AppPermissionsEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPrivacyCategory:Landroid/preference/PreferenceCategory;

    .line 168
    const-string v1, "security_relative"

    invoke-virtual {p0, v1}, Lcom/android/settings/permission/AppPermissionsEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mSecurityCategory:Landroid/preference/PreferenceCategory;

    .line 169
    const-string v1, "logs"

    invoke-virtual {p0, v1}, Lcom/android/settings/permission/AppPermissionsEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mLogsCategory:Landroid/preference/PreferenceCategory;

    .line 171
    invoke-direct {p0}, Lcom/android/settings/permission/AppPermissionsEditor;->buildPreferences()V

    goto/16 :goto_0

    :cond_2
    move v1, v3

    .line 164
    goto :goto_2

    .line 152
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private parseLogs()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    .line 284
    new-instance v1, Lcom/lbe/security/service/privacy/EventFilter;

    invoke-direct {v1}, Lcom/lbe/security/service/privacy/EventFilter;-><init>()V

    .line 285
    .local v1, eventFilter:Lcom/lbe/security/service/privacy/EventFilter;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/lbe/security/service/privacy/EventFilter;->timestop:Ljava/lang/Long;

    .line 286
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide v4, 0x9a7ec800L

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/lbe/security/service/privacy/EventFilter;->timestart:Ljava/lang/Long;

    .line 287
    const/4 v2, 0x1

    new-array v0, v2, [I

    iget-object v2, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPackage:Lcom/lbe/security/bean/Package;

    invoke-virtual {v2}, Lcom/lbe/security/bean/Package;->getUid()I

    move-result v2

    aput v2, v0, v6

    .line 288
    .local v0, a:[I
    iput-object v0, v1, Lcom/lbe/security/service/privacy/EventFilter;->pkgId:[I

    .line 289
    iget-object v2, v1, Lcom/lbe/security/service/privacy/EventFilter;->timestart:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v7

    if-gez v2, :cond_0

    .line 290
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/lbe/security/service/privacy/EventFilter;->timestart:Ljava/lang/Long;

    .line 293
    :cond_0
    iget-object v2, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mHipSService:Lcom/lbe/security/service/privacy/HIPSService;

    const-string v3, "timestamp"

    invoke-virtual {v2, v1, v3, v6}, Lcom/lbe/security/service/privacy/HIPSService;->queryLog(Lcom/lbe/security/service/privacy/EventFilter;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mLogList:Ljava/util/List;

    .line 294
    return-void
.end method

.method private parsePermissions()V
    .locals 7

    .prologue
    .line 261
    iget-object v5, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;

    iget-object v6, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPackage:Lcom/lbe/security/bean/Package;

    invoke-virtual {v5, v6}, Lcom/lbe/security/service/sdkhelper/SDKHelper;->getPermissions(Lcom/lbe/security/bean/Package;)Ljava/util/List;

    move-result-object v2

    .line 262
    .local v2, permsIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/lbe/security/service/sdkhelper/SDKHelper;->findPermissionByGroup(I)Ljava/util/List;

    move-result-object v3

    .line 263
    .local v3, privacyIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/lbe/security/service/sdkhelper/SDKHelper;->findPermissionByGroup(I)Ljava/util/List;

    move-result-object v4

    .line 265
    .local v4, securityIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPrivacyIdList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 266
    iget-object v5, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mSecurityIdList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 267
    if-eqz v2, :cond_2

    .line 268
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 269
    .local v1, id:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 270
    iget-object v5, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPrivacyIdList:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 271
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 272
    iget-object v5, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mSecurityIdList:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 276
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #id:I
    :cond_2
    return-void
.end method

.method private setActionBarView()V
    .locals 7

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/android/settings/permission/AppPermissionsEditor;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040009

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 177
    .local v1, custormView:Landroid/view/View;
    const v4, 0x7f09000c

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 178
    .local v3, title:Landroid/widget/TextView;
    const v4, 0x7f09000d

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 180
    .local v2, subTitle:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/permission/AppPermissionsEditor;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 181
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 182
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 183
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 185
    iget-object v4, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mAppLabel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v4, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mAppVersion:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPrivacyIdList:Ljava/util/List;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mSecurityIdList:Ljava/util/List;

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/permission/AppPermissionsEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mActionStates:[Ljava/lang/String;

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/permission/AppPermissionsEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mActionValue:[Ljava/lang/String;

    .line 96
    new-instance v0, Lcom/android/settings/permission/AppPermissionsEditor$LBEConnection;

    const-string v1, "com.lbe.security.miui"

    invoke-direct {v0, p0, p0, v1}, Lcom/android/settings/permission/AppPermissionsEditor$LBEConnection;-><init>(Lcom/android/settings/permission/AppPermissionsEditor;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mLBEConnection:Lcom/android/settings/permission/AppPermissionsEditor$LBEConnection;

    .line 97
    iget-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mLBEConnection:Lcom/android/settings/permission/AppPermissionsEditor$LBEConnection;

    invoke-static {v0}, Lcom/lbe/security/sdk/SDKService;->bindSDKService(Lcom/lbe/security/sdk/SDKConnection;)Z

    .line 98
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 110
    const v0, 0x7f0c06f4

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mManageItem:Landroid/view/MenuItem;

    .line 111
    iget-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mManageItem:Landroid/view/MenuItem;

    const v1, 0x7f020099

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 112
    iget-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mManageItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 113
    return v2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mHipSService:Lcom/lbe/security/service/privacy/HIPSService;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mLBEConnection:Lcom/android/settings/permission/AppPermissionsEditor$LBEConnection;

    invoke-static {v0}, Lcom/lbe/security/sdk/SDKService;->unbindSDKService(Lcom/lbe/security/sdk/SDKConnection;)V

    .line 105
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 106
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 118
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 130
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 120
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 121
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 122
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.applications.InstalledAppDetailsTop"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string v1, "package"

    iget-object v2, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v1, ":android:show_fragment_title"

    const v2, 0x7f0c03a8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0, v0}, Lcom/android/settings/permission/AppPermissionsEditor;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
