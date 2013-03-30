.class public Lcom/android/settings/applications/InstalledAppDetailsFragment;
.super Landroid/preference/PreferenceFragment;
.source "InstalledAppDetailsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/settings/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;,
        Lcom/android/settings/applications/InstalledAppDetailsFragment$DisableChanger;,
        Lcom/android/settings/applications/InstalledAppDetailsFragment$PackageMoveObserver;,
        Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearCacheObserver;,
        Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearUserDataObserver;
    }
.end annotation


# instance fields
.field private mAlwaysEnabledAppList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mCanBeOnSdCardChecker:Lcom/android/settings/applications/CanBeOnSdCardChecker;

.field private mCanClearData:Z

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private mClearCacheObserver:Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearCacheObserver;

.field private mClearDataObserver:Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearUserDataObserver;

.field private mComputingStr:Ljava/lang/CharSequence;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mFinishEnable:Z

.field private mHandler:Landroid/os/Handler;

.field private mHaveSizes:Z

.field private mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mItemFinish:Landroid/view/MenuItem;

.field private mItemUninstall:Landroid/view/MenuItem;

.field private mLastCacheSize:J

.field private mLastCodeSize:J

.field private mLastDataSize:J

.field private mLastExternalCodeSize:J

.field private mLastExternalDataSize:J

.field private mLastTotalSize:J

.field private mMoveInProgress:Z

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPrefAppInfo:Lcom/android/settings/applications/AppInfoPreference;

.field private mPrefApplicationSize:Lmiui/preference/ValuePreference;

.field private mPrefCacheSize:Lmiui/preference/ValuePreference;

.field private mPrefClearCache:Lcom/android/settings/applications/ButtonPreference;

.field private mPrefClearData:Lcom/android/settings/applications/ButtonPreference;

.field private mPrefClearDefaultSettings:Landroid/preference/Preference;

.field private mPrefDataSize:Lmiui/preference/ValuePreference;

.field private mPrefExternalCodeSize:Lmiui/preference/ValuePreference;

.field private mPrefExternalDataSize:Lmiui/preference/ValuePreference;

.field private mPrefNotificationSwitch:Landroid/preference/CheckBoxPreference;

.field private mPrefPermissionDetailInfo:Landroid/preference/Preference;

.field private mPrefPermissionManage:Landroid/preference/Preference;

.field private mPrefTotalSize:Lmiui/preference/ValuePreference;

.field private mSession:Lcom/android/settings/applications/ApplicationsState$Session;

.field private mState:Lcom/android/settings/applications/ApplicationsState;

.field private mUninstallEnable:Z

.field private mUninstallIconRes:I

.field private mUninstallTextRes:I

.field private mUpdatedSysApp:Z

.field private mUsbManager:Landroid/hardware/usb/IUsbManager;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-wide/16 v0, -0x1

    .line 64
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 116
    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mMoveInProgress:Z

    .line 117
    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUpdatedSysApp:Z

    .line 119
    iput-boolean v3, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mCanClearData:Z

    .line 125
    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mFinishEnable:Z

    .line 126
    iput-boolean v3, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUninstallEnable:Z

    .line 130
    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mHaveSizes:Z

    .line 131
    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastCodeSize:J

    .line 132
    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastDataSize:J

    .line 133
    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastExternalCodeSize:J

    .line 134
    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastExternalDataSize:J

    .line 135
    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastCacheSize:J

    .line 136
    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastTotalSize:J

    .line 168
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetailsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$1;-><init>(Lcom/android/settings/applications/InstalledAppDetailsFragment;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mHandler:Landroid/os/Handler;

    .line 951
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetailsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$2;-><init>(Lcom/android/settings/applications/InstalledAppDetailsFragment;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/InstalledAppDetailsFragment;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->processClearMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/applications/InstalledAppDetailsFragment;)Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/applications/InstalledAppDetailsFragment;)Lcom/android/settings/applications/ButtonPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearData:Lcom/android/settings/applications/ButtonPreference;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/applications/InstalledAppDetailsFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->forceStopPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/applications/InstalledAppDetailsFragment;I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getMoveErrMsg(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/applications/InstalledAppDetailsFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->setNotificationsEnabled(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/applications/InstalledAppDetailsFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->updateForceStopButton(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/applications/InstalledAppDetailsFragment;)Lcom/android/settings/applications/ApplicationsState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mState:Lcom/android/settings/applications/ApplicationsState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/applications/InstalledAppDetailsFragment;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->processMoveMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/applications/InstalledAppDetailsFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/applications/InstalledAppDetailsFragment;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/applications/InstalledAppDetailsFragment;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefNotificationSwitch:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/applications/InstalledAppDetailsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->initiateClearUserData()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/applications/InstalledAppDetailsFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->uninstallPkg(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/applications/InstalledAppDetailsFragment;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->setIntentAndFinish(ZZ)V

    return-void
.end method

.method private checkForceStop()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 966
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 968
    invoke-direct {p0, v5}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->updateForceStopButton(Z)V

    .line 981
    :goto_0
    return-void

    .line 969
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x20

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 972
    invoke-direct {p0, v6}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->updateForceStopButton(Z)V

    goto :goto_0

    .line 974
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v3, "package"

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 976
    const-string v0, "android.intent.extra.PACKAGES"

    new-array v3, v6, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 977
    const-string v0, "android.intent.extra.UID"

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 978
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private forceStopPackage(Ljava/lang/String;)V
    .locals 4
    .parameter "pkgName"

    .prologue
    .line 813
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 815
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 816
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v2, p1}, Lcom/android/settings/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;)V

    .line 817
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v2, p1}, Lcom/android/settings/applications/ApplicationsState;->getEntry(Ljava/lang/String;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v1

    .line 818
    .local v1, newEnt:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    if-eqz v1, :cond_0

    .line 819
    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 821
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->checkForceStop()V

    .line 822
    return-void
.end method

.method private getMoveErrMsg(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter

    .prologue
    .line 825
    packed-switch p1, :pswitch_data_0

    .line 839
    const-string v0, ""

    :goto_0
    return-object v0

    .line 827
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c03f2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 829
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c03f3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 831
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c03f4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 833
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c03f5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 835
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c03f6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 837
    :pswitch_5
    const-string v0, ""

    goto :goto_0

    .line 825
    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .locals 2
    .parameter "size"

    .prologue
    .line 216
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mInvalidSizeStr:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initDataButtons()V
    .locals 4

    .prologue
    const v3, 0x7f0c03bb

    const/4 v2, 0x0

    .line 535
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x41

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearData:Lcom/android/settings/applications/ButtonPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/applications/ButtonPreference;->setText(I)V

    .line 540
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearData:Lcom/android/settings/applications/ButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/ButtonPreference;->setEnabled(Z)V

    .line 541
    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mCanClearData:Z

    .line 550
    :goto_0
    return-void

    .line 543
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 544
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearData:Lcom/android/settings/applications/ButtonPreference;

    const v1, 0x7f0c03cd

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ButtonPreference;->setText(I)V

    .line 548
    :goto_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearData:Lcom/android/settings/applications/ButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/ButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    .line 546
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearData:Lcom/android/settings/applications/ButtonPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/applications/ButtonPreference;->setText(I)V

    goto :goto_1
.end method

.method private initMoveButton()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 553
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 556
    :cond_1
    const/4 v0, 0x0

    .line 557
    .local v0, dataOnly:Z
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-eqz v4, :cond_2

    move v0, v2

    .line 558
    :goto_1
    const/4 v1, 0x1

    .line 559
    .local v1, moveDisable:Z
    if-nez v0, :cond_0

    .line 560
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x4

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 562
    const/4 v1, 0x0

    goto :goto_0

    .end local v1           #moveDisable:Z
    :cond_2
    move v0, v3

    .line 557
    goto :goto_1

    .line 564
    .restart local v1       #moveDisable:Z
    :cond_3
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mCanBeOnSdCardChecker:Lcom/android/settings/applications/CanBeOnSdCardChecker;

    invoke-virtual {v4}, Lcom/android/settings/applications/CanBeOnSdCardChecker;->init()V

    .line 565
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 566
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mCanBeOnSdCardChecker:Lcom/android/settings/applications/CanBeOnSdCardChecker;

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/CanBeOnSdCardChecker;->check(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-nez v4, :cond_4

    move v1, v2

    :goto_2
    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_2
.end method

.method private initNotificationButton()V
    .locals 4

    .prologue
    .line 518
    const-string v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 520
    .local v1, nm:Landroid/app/INotificationManager;
    const/4 v0, 0x1

    .line 522
    .local v0, enabled:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 526
    :goto_0
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefNotificationSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 527
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->isThisASystemPackage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 528
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefNotificationSwitch:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 533
    :goto_1
    return-void

    .line 530
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefNotificationSwitch:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 531
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefNotificationSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_1

    .line 523
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private initUninstallButtons()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 984
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUpdatedSysApp:Z

    .line 987
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUpdatedSysApp:Z

    if-eqz v0, :cond_1

    .line 989
    const v0, 0x7f0c03bc

    iput v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUninstallTextRes:I

    .line 1027
    :goto_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1030
    :goto_2
    invoke-direct {p0, v2}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->updateUnintallItem(Z)V

    .line 1031
    return-void

    :cond_0
    move v0, v2

    .line 984
    goto :goto_0

    .line 991
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    .line 998
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPm:Landroid/content/pm/PackageManager;

    const-string v3, "android"

    const/16 v4, 0x40

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 1000
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1001
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1002
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1003
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPm:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1004
    const v3, 0x7f0200dd

    iput v3, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUninstallIconRes:I

    .line 1005
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->isThisASystemPackage()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1007
    :cond_3
    const v0, 0x7f0c03b9

    iput v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUninstallTextRes:I

    move v1, v2

    goto :goto_1

    .line 1008
    :cond_4
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_5

    .line 1009
    const v0, 0x7f0c03b9

    iput v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUninstallTextRes:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1015
    :catch_0
    move-exception v0

    .line 1016
    const-string v1, "InstalledAppDetails"

    const-string v3, "Unable to get package info"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 1017
    goto :goto_1

    .line 1012
    :cond_5
    const v0, 0x7f0c03ba

    :try_start_1
    iput v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUninstallTextRes:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1020
    :cond_6
    const v0, 0x60200de

    iput v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUninstallIconRes:I

    .line 1021
    const v0, 0x7f0c03b8

    iput v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUninstallTextRes:I

    goto/16 :goto_1

    :cond_7
    move v2, v1

    goto :goto_2
.end method

.method private initiateClearUserData()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 793
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearData:Lcom/android/settings/applications/ButtonPreference;

    invoke-virtual {v0, v4}, Lcom/android/settings/applications/ButtonPreference;->setEnabled(Z)V

    .line 795
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 796
    const-string v0, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clearing user data for package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mClearDataObserver:Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearUserDataObserver;

    if-nez v0, :cond_0

    .line 798
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearUserDataObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearUserDataObserver;-><init>(Lcom/android/settings/applications/InstalledAppDetailsFragment;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mClearDataObserver:Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearUserDataObserver;

    .line 800
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 802
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mClearDataObserver:Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearUserDataObserver;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v0

    .line 803
    if-nez v0, :cond_1

    .line 805
    const-string v0, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldnt clear application user data for package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    const/4 v0, 0x4

    invoke-direct {p0, v0, v4}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->showDialogInner(II)V

    .line 810
    :goto_0
    return-void

    .line 808
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearData:Lcom/android/settings/applications/ButtonPreference;

    const v1, 0x7f0c03d8

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ButtonPreference;->setText(I)V

    goto :goto_0
.end method

.method private isThisASystemPackage()Z
    .locals 6
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 574
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPm:Landroid/content/pm/PackageManager;

    const-string v4, "android"

    const/16 v5, 0x40

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 575
    .local v1, sys:Landroid/content/pm/PackageInfo;
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAlwaysEnabledAppList:Ljava/util/HashSet;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 579
    .end local v1           #sys:Landroid/content/pm/PackageInfo;
    :cond_2
    :goto_0
    return v2

    .line 578
    :catch_0
    move-exception v0

    .line 579
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private processClearMsg(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 414
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 415
    .local v1, result:I
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 416
    .local v0, packageName:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearData:Lcom/android/settings/applications/ButtonPreference;

    const v3, 0x7f0c03bb

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/ButtonPreference;->setText(I)V

    .line 417
    if-ne v1, v4, :cond_0

    .line 418
    const-string v2, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleared user data for package : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mState:Lcom/android/settings/applications/ApplicationsState;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 423
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->checkForceStop()V

    .line 424
    return-void

    .line 421
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearData:Lcom/android/settings/applications/ButtonPreference;

    invoke-virtual {v2, v4}, Lcom/android/settings/applications/ButtonPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private processMoveMsg(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 395
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 396
    .local v1, result:I
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 398
    .local v0, packageName:Ljava/lang/String;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mMoveInProgress:Z

    .line 399
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 400
    const-string v2, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moved resources for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mState:Lcom/android/settings/applications/ApplicationsState;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 406
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->refreshUi()Z

    .line 407
    return-void

    .line 404
    :cond_0
    const/4 v2, 0x6

    invoke-direct {p0, v2, v1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->showDialogInner(II)V

    goto :goto_0
.end method

.method private refreshButtons()V
    .locals 1

    .prologue
    .line 507
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mMoveInProgress:Z

    if-nez v0, :cond_0

    .line 508
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->initUninstallButtons()V

    .line 509
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->initDataButtons()V

    .line 510
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->initMoveButton()V

    .line 511
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->initNotificationButton()V

    .line 515
    :goto_0
    return-void

    .line 513
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->updateUnintallItem(Z)V

    goto :goto_0
.end method

.method private refreshSizeInfo()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const-wide/16 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 584
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v6, -0x2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v4, v4, v10

    if-nez v4, :cond_2

    .line 586
    :cond_0
    iput-wide v10, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastTotalSize:J

    iput-wide v10, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastCacheSize:J

    iput-wide v10, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastDataSize:J

    iput-wide v10, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastCodeSize:J

    .line 587
    iget-boolean v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mHaveSizes:Z

    if-nez v4, :cond_1

    .line 588
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefApplicationSize:Lmiui/preference/ValuePreference;

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 589
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefDataSize:Lmiui/preference/ValuePreference;

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 590
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefCacheSize:Lmiui/preference/ValuePreference;

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 591
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefTotalSize:Lmiui/preference/ValuePreference;

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 593
    :cond_1
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearData:Lcom/android/settings/applications/ButtonPreference;

    invoke-virtual {v4, v8}, Lcom/android/settings/applications/ButtonPreference;->setEnabled(Z)V

    .line 594
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearCache:Lcom/android/settings/applications/ButtonPreference;

    invoke-virtual {v4, v8}, Lcom/android/settings/applications/ButtonPreference;->setEnabled(Z)V

    .line 637
    :goto_0
    return-void

    .line 597
    :cond_2
    iput-boolean v9, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mHaveSizes:Z

    .line 598
    iget-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastCodeSize:J

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->codeSize:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 599
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->codeSize:J

    iput-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastCodeSize:J

    .line 600
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefApplicationSize:Lmiui/preference/ValuePreference;

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v5, v5, Lcom/android/settings/applications/ApplicationsState$AppEntry;->codeSize:J

    invoke-direct {p0, v5, v6}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getSizeStr(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 602
    :cond_3
    iget-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastDataSize:J

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->dataSize:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    .line 603
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->dataSize:J

    iput-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastDataSize:J

    .line 604
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefDataSize:Lmiui/preference/ValuePreference;

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v5, v5, Lcom/android/settings/applications/ApplicationsState$AppEntry;->dataSize:J

    invoke-direct {p0, v5, v6}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getSizeStr(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 606
    :cond_4
    iget-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastExternalCodeSize:J

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    .line 607
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    iput-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastExternalCodeSize:J

    .line 608
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefExternalCodeSize:Lmiui/preference/ValuePreference;

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v5, v5, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    invoke-direct {p0, v5, v6}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getSizeStr(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 610
    :cond_5
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalCacheSize:J

    sub-long v2, v4, v6

    .line 611
    .local v2, nonCacheExtDataSize:J
    iget-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastExternalDataSize:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_6

    .line 612
    iput-wide v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastExternalDataSize:J

    .line 613
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefExternalDataSize:Lmiui/preference/ValuePreference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getSizeStr(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 615
    :cond_6
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->cacheSize:J

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalCacheSize:J

    add-long v0, v4, v6

    .line 616
    .local v0, cacheSize:J
    iget-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastCacheSize:J

    cmp-long v4, v4, v0

    if-eqz v4, :cond_7

    .line 617
    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastCacheSize:J

    .line 618
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefCacheSize:Lmiui/preference/ValuePreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getSizeStr(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 620
    :cond_7
    iget-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastTotalSize:J

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_8

    .line 621
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    iput-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastTotalSize:J

    .line 622
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefTotalSize:Lmiui/preference/ValuePreference;

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v5, v5, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    invoke-direct {p0, v5, v6}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getSizeStr(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 625
    :cond_8
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->dataSize:J

    add-long/2addr v4, v2

    cmp-long v4, v4, v12

    if-lez v4, :cond_9

    iget-boolean v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mCanClearData:Z

    if-nez v4, :cond_a

    .line 626
    :cond_9
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearData:Lcom/android/settings/applications/ButtonPreference;

    invoke-virtual {v4, v8}, Lcom/android/settings/applications/ButtonPreference;->setEnabled(Z)V

    .line 630
    :goto_1
    cmp-long v4, v0, v12

    if-gtz v4, :cond_b

    .line 631
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearCache:Lcom/android/settings/applications/ButtonPreference;

    invoke-virtual {v4, v8}, Lcom/android/settings/applications/ButtonPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 628
    :cond_a
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearData:Lcom/android/settings/applications/ButtonPreference;

    invoke-virtual {v4, v9}, Lcom/android/settings/applications/ButtonPreference;->setEnabled(Z)V

    goto :goto_1

    .line 633
    :cond_b
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearCache:Lcom/android/settings/applications/ButtonPreference;

    invoke-virtual {v4, v9}, Lcom/android/settings/applications/ButtonPreference;->setEnabled(Z)V

    .line 634
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearCache:Lcom/android/settings/applications/ButtonPreference;

    invoke-virtual {v4, p0}, Lcom/android/settings/applications/ButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_0
.end method

.method private refreshUi()Z
    .locals 24

    .prologue
    .line 290
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mMoveInProgress:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 291
    const/16 v20, 0x1

    .line 378
    :goto_0
    return v20

    .line 293
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    .line 294
    .local v6, args:Landroid/os/Bundle;
    if-eqz v6, :cond_2

    const-string v20, "package"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 295
    .local v15, packageName:Ljava/lang/String;
    :goto_1
    if-nez v15, :cond_1

    .line 296
    if-nez v6, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 298
    .local v13, intent:Landroid/content/Intent;
    :goto_2
    if-eqz v13, :cond_1

    .line 299
    invoke-virtual {v13}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v15

    .line 302
    .end local v13           #intent:Landroid/content/Intent;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mState:Lcom/android/settings/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/android/settings/applications/ApplicationsState;->getEntry(Ljava/lang/String;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-object/from16 v20, v0

    if-nez v20, :cond_4

    .line 305
    const/16 v20, 0x0

    goto :goto_0

    .line 294
    .end local v15           #packageName:Ljava/lang/String;
    :cond_2
    const/4 v15, 0x0

    goto :goto_1

    .line 296
    .restart local v15       #packageName:Ljava/lang/String;
    :cond_3
    const-string v20, "intent"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v20

    check-cast v20, Landroid/content/Intent;

    move-object/from16 v13, v20

    goto :goto_2

    .line 310
    :cond_4
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x2240

    invoke-virtual/range {v20 .. v22}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v16, prefActList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 324
    .local v14, intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1, v15}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 327
    const/4 v12, 0x0

    .line 329
    .local v12, hasUsbDefaults:Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v15}, Landroid/hardware/usb/IUsbManager;->hasDefaults(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v12

    .line 333
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v11

    .line 336
    .local v11, hasBindAppWidgetPermission:Z
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v20

    if-gtz v20, :cond_5

    if-eqz v12, :cond_6

    :cond_5
    const/4 v8, 0x1

    .line 337
    .local v8, autoLaunchEnabled:Z
    :goto_4
    if-nez v8, :cond_7

    if-nez v11, :cond_7

    .line 338
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 373
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->checkForceStop()V

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V

    .line 375
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->refreshButtons()V

    .line 376
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->refreshSizeInfo()V

    .line 378
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 314
    .end local v8           #autoLaunchEnabled:Z
    .end local v11           #hasBindAppWidgetPermission:Z
    .end local v12           #hasUsbDefaults:Z
    .end local v14           #intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v16           #prefActList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :catch_0
    move-exception v10

    .line 315
    .local v10, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v20, "InstalledAppDetails"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Exception when retrieving package:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 330
    .end local v10           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v12       #hasUsbDefaults:Z
    .restart local v14       #intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    .restart local v16       #prefActList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :catch_1
    move-exception v10

    .line 331
    .local v10, e:Landroid/os/RemoteException;
    const-string v20, "InstalledAppDetails"

    const-string v21, "mUsbManager.hasDefaults"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 336
    .end local v10           #e:Landroid/os/RemoteException;
    .restart local v11       #hasBindAppWidgetPermission:Z
    :cond_6
    const/4 v8, 0x0

    goto :goto_4

    .line 340
    .restart local v8       #autoLaunchEnabled:Z
    :cond_7
    if-eqz v11, :cond_c

    if-eqz v8, :cond_c

    const/16 v19, 0x1

    .line 342
    .local v19, useBullets:Z
    :goto_6
    const/16 v18, 0x0

    .line 343
    .local v18, text:Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0e000b

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 345
    .local v9, bulletIndent:I
    if-eqz v8, :cond_9

    .line 346
    const v20, 0x7f0c03bd

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 347
    .local v7, autoLaunchEnableText:Ljava/lang/CharSequence;
    new-instance v17, Landroid/text/SpannableString;

    move-object/from16 v0, v17

    invoke-direct {v0, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 348
    .local v17, s:Landroid/text/SpannableString;
    if-eqz v19, :cond_8

    .line 349
    new-instance v20, Landroid/text/style/BulletSpan;

    move-object/from16 v0, v20

    invoke-direct {v0, v9}, Landroid/text/style/BulletSpan;-><init>(I)V

    const/16 v21, 0x0

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 351
    :cond_8
    if-nez v18, :cond_d

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v17, v20, v21

    const/16 v21, 0x1

    const-string v22, "\n"

    aput-object v22, v20, v21

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v18

    .line 354
    .end local v7           #autoLaunchEnableText:Ljava/lang/CharSequence;
    .end local v17           #s:Landroid/text/SpannableString;
    :cond_9
    :goto_7
    if-eqz v11, :cond_b

    .line 355
    const v20, 0x7f0c03be

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 357
    .local v5, alwaysAllowBindAppWidgetsText:Ljava/lang/CharSequence;
    new-instance v17, Landroid/text/SpannableString;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 358
    .restart local v17       #s:Landroid/text/SpannableString;
    if-eqz v19, :cond_a

    .line 359
    new-instance v20, Landroid/text/style/BulletSpan;

    move-object/from16 v0, v20

    invoke-direct {v0, v9}, Landroid/text/style/BulletSpan;-><init>(I)V

    const/16 v21, 0x0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 362
    :cond_a
    if-nez v18, :cond_e

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v17, v20, v21

    const/16 v21, 0x1

    const-string v22, "\n"

    aput-object v22, v20, v21

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v18

    .line 365
    .end local v5           #alwaysAllowBindAppWidgetsText:Ljava/lang/CharSequence;
    .end local v17           #s:Landroid/text/SpannableString;
    :cond_b
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearDefaultSettings:Landroid/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearDefaultSettings:Landroid/preference/Preference;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearDefaultSettings:Landroid/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_5

    .line 340
    .end local v9           #bulletIndent:I
    .end local v18           #text:Ljava/lang/CharSequence;
    .end local v19           #useBullets:Z
    :cond_c
    const/16 v19, 0x0

    goto/16 :goto_6

    .line 351
    .restart local v7       #autoLaunchEnableText:Ljava/lang/CharSequence;
    .restart local v9       #bulletIndent:I
    .restart local v17       #s:Landroid/text/SpannableString;
    .restart local v18       #text:Ljava/lang/CharSequence;
    .restart local v19       #useBullets:Z
    :cond_d
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v18, v20, v21

    const/16 v21, 0x1

    const-string v22, "\n"

    aput-object v22, v20, v21

    const/16 v21, 0x2

    aput-object v17, v20, v21

    const/16 v21, 0x3

    const-string v22, "\n"

    aput-object v22, v20, v21

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v18

    goto/16 :goto_7

    .line 362
    .end local v7           #autoLaunchEnableText:Ljava/lang/CharSequence;
    .restart local v5       #alwaysAllowBindAppWidgetsText:Ljava/lang/CharSequence;
    :cond_e
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v18, v20, v21

    const/16 v21, 0x1

    const-string v22, "\n"

    aput-object v22, v20, v21

    const/16 v21, 0x2

    aput-object v17, v20, v21

    const/16 v21, 0x3

    const-string v22, "\n"

    aput-object v22, v20, v21

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v18

    goto :goto_8
.end method

.method private resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2
    .parameter "title"
    .parameter "autoLaunchView"

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearDefaultSettings:Landroid/preference/Preference;

    const v1, 0x7f0c03bf

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 503
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearDefaultSettings:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 504
    return-void
.end method

.method private setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V
    .locals 7
    .parameter "pkgInfo"

    .prologue
    .line 382
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mState:Lcom/android/settings/applications/ApplicationsState;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/ApplicationsState;->ensureIcon(Lcom/android/settings/applications/ApplicationsState$AppEntry;)V

    .line 384
    const/4 v1, 0x0

    .line 385
    .local v1, versionVisible:Z
    const/4 v0, 0x0

    .line 386
    .local v0, appVersion:Ljava/lang/String;
    if-eqz p1, :cond_0

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 387
    const/4 v1, 0x1

    .line 388
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c03ed

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 391
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefAppInfo:Lcom/android/settings/applications/AppInfoPreference;

    new-instance v3, Lcom/android/settings/applications/AppInfoPreference$AppInfo;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v0, v1}, Lcom/android/settings/applications/AppInfoPreference$AppInfo;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/AppInfoPreference;->setAppInfo(Lcom/android/settings/applications/AppInfoPreference$AppInfo;)V

    .line 392
    return-void
.end method

.method private setIntentAndFinish(ZZ)V
    .locals 3
    .parameter "finish"
    .parameter "appChanged"

    .prologue
    .line 494
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 495
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "chg"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 496
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 497
    .local v1, pa:Landroid/preference/PreferenceActivity;
    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2, v0}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 498
    return-void
.end method

.method private setNotificationsEnabled(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    .line 843
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 844
    .local v2, packageName:Ljava/lang/String;
    const-string v3, "notification"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 847
    .local v1, nm:Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1, v2, p1}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 851
    :goto_0
    return-void

    .line 848
    :catch_0
    move-exception v0

    .line 849
    .local v0, ex:Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefNotificationSwitch:Landroid/preference/CheckBoxPreference;

    if-nez p1, :cond_0

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private showDialogInner(II)V
    .locals 4
    .parameter "id"
    .parameter "moveErrorCode"

    .prologue
    .line 427
    invoke-static {p1, p2}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->newInstance(II)Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;

    move-result-object v0

    .line 428
    .local v0, newFragment:Landroid/app/DialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 429
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 430
    return-void
.end method

.method private uninstallPkg(Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"

    .prologue
    const/4 v4, 0x1

    .line 486
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 487
    .local v0, packageURI:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 488
    .local v1, uninstallIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->startActivity(Landroid/content/Intent;)V

    .line 489
    invoke-direct {p0, v4, v4}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->setIntentAndFinish(ZZ)V

    .line 490
    return-void
.end method

.method private updateForceStopButton(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 959
    iput-boolean p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mFinishEnable:Z

    .line 960
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mItemFinish:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 961
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mItemFinish:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mFinishEnable:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 963
    :cond_0
    return-void
.end method

.method private updateUnintallItem(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 1034
    iput-boolean p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUninstallEnable:Z

    .line 1036
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mItemUninstall:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mItemUninstall:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1038
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mItemUninstall:Landroid/view/MenuItem;

    iget v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUninstallTextRes:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1039
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mItemUninstall:Landroid/view/MenuItem;

    iget v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUninstallIconRes:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1041
    :cond_0
    return-void
.end method


# virtual methods
.method public onAllSizesComputed()V
    .locals 0

    .prologue
    .line 458
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 462
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    .line 224
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 226
    const v6, 0x7f0c03b8

    iput v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUninstallTextRes:I

    .line 227
    const v6, 0x7f0200dd

    iput v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUninstallIconRes:I

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0c03ea

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mComputingStr:Ljava/lang/CharSequence;

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080050

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 232
    .local v5, tempList:[Ljava/lang/String;
    new-instance v6, Ljava/util/HashSet;

    array-length v7, v5

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(I)V

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAlwaysEnabledAppList:Ljava/util/HashSet;

    .line 233
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 234
    .local v4, str:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAlwaysEnabledAppList:Ljava/util/HashSet;

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 233
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 237
    .end local v4           #str:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settings/applications/ApplicationsState;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mState:Lcom/android/settings/applications/ApplicationsState;

    .line 238
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v6, p0}, Lcom/android/settings/applications/ApplicationsState;->newSession(Lcom/android/settings/applications/ApplicationsState$Callbacks;)Lcom/android/settings/applications/ApplicationsState$Session;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mSession:Lcom/android/settings/applications/ApplicationsState$Session;

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPm:Landroid/content/pm/PackageManager;

    .line 240
    const-string v6, "usb"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 241
    .local v1, b:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "device_policy"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/DevicePolicyManager;

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 245
    new-instance v6, Lcom/android/settings/applications/CanBeOnSdCardChecker;

    invoke-direct {v6}, Lcom/android/settings/applications/CanBeOnSdCardChecker;-><init>()V

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mCanBeOnSdCardChecker:Lcom/android/settings/applications/CanBeOnSdCardChecker;

    .line 247
    const v6, 0x7f060028

    invoke-virtual {p0, v6}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->addPreferencesFromResource(I)V

    .line 249
    const-string v6, "applications_info"

    invoke-virtual {p0, v6}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/AppInfoPreference;

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefAppInfo:Lcom/android/settings/applications/AppInfoPreference;

    .line 250
    const-string v6, "total_size"

    invoke-virtual {p0, v6}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lmiui/preference/ValuePreference;

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefTotalSize:Lmiui/preference/ValuePreference;

    .line 251
    const-string v6, "application_size"

    invoke-virtual {p0, v6}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lmiui/preference/ValuePreference;

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefApplicationSize:Lmiui/preference/ValuePreference;

    .line 252
    const-string v6, "external_code_size"

    invoke-virtual {p0, v6}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lmiui/preference/ValuePreference;

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefExternalCodeSize:Lmiui/preference/ValuePreference;

    .line 253
    const-string v6, "data_size"

    invoke-virtual {p0, v6}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lmiui/preference/ValuePreference;

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefDataSize:Lmiui/preference/ValuePreference;

    .line 254
    const-string v6, "external_data_size"

    invoke-virtual {p0, v6}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lmiui/preference/ValuePreference;

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefExternalDataSize:Lmiui/preference/ValuePreference;

    .line 255
    const-string v6, "cache_size"

    invoke-virtual {p0, v6}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lmiui/preference/ValuePreference;

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefCacheSize:Lmiui/preference/ValuePreference;

    .line 256
    const-string v6, "clear_data"

    invoke-virtual {p0, v6}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/ButtonPreference;

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearData:Lcom/android/settings/applications/ButtonPreference;

    .line 257
    const-string v6, "clear_cache"

    invoke-virtual {p0, v6}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/ButtonPreference;

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearCache:Lcom/android/settings/applications/ButtonPreference;

    .line 258
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearCache:Lcom/android/settings/applications/ButtonPreference;

    const v7, 0x7f0c03af

    invoke-virtual {v6, v7}, Lcom/android/settings/applications/ButtonPreference;->setText(I)V

    .line 259
    const-string v6, "notification_switch"

    invoke-virtual {p0, v6}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefNotificationSwitch:Landroid/preference/CheckBoxPreference;

    .line 260
    const-string v6, "clear_default_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearDefaultSettings:Landroid/preference/Preference;

    .line 261
    const-string v6, "permission_detail_info"

    invoke-virtual {p0, v6}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefPermissionDetailInfo:Landroid/preference/Preference;

    .line 262
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefPermissionDetailInfo:Landroid/preference/Preference;

    invoke-virtual {v6, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 263
    const-string v6, "permission_manage"

    invoke-virtual {p0, v6}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefPermissionManage:Landroid/preference/Preference;

    .line 264
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefPermissionManage:Landroid/preference/Preference;

    invoke-virtual {v6, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 266
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->setHasOptionsMenu(Z)V

    .line 267
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 910
    const v0, 0x7f0c0881

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mItemFinish:Landroid/view/MenuItem;

    .line 911
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mItemFinish:Landroid/view/MenuItem;

    const v1, 0x60200e1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 912
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mItemFinish:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mFinishEnable:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 913
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mItemFinish:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 915
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUninstallTextRes:I

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mItemUninstall:Landroid/view/MenuItem;

    .line 916
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mItemUninstall:Landroid/view/MenuItem;

    iget v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUninstallIconRes:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 917
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mItemUninstall:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUninstallEnable:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 918
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mItemUninstall:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 919
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    .line 924
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 948
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 926
    :pswitch_0
    const/4 v0, 0x5

    invoke-direct {p0, v0, v3}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->showDialogInner(II)V

    goto :goto_0

    .line 930
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUpdatedSysApp:Z

    if-eqz v0, :cond_0

    .line 931
    const/4 v0, 0x2

    invoke-direct {p0, v0, v3}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->showDialogInner(II)V

    goto :goto_0

    .line 933
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 934
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_1

    .line 935
    const/4 v0, 0x7

    invoke-direct {p0, v0, v3}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->showDialogInner(II)V

    goto :goto_0

    .line 937
    :cond_1
    new-instance v1, Lcom/android/settings/applications/InstalledAppDetailsFragment$DisableChanger;

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, p0, v0, v3}, Lcom/android/settings/applications/InstalledAppDetailsFragment$DisableChanger;-><init>(Lcom/android/settings/applications/InstalledAppDetailsFragment;Landroid/content/pm/ApplicationInfo;I)V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/InstalledAppDetailsFragment$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 942
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->uninstallPkg(Ljava/lang/String;)V

    goto :goto_0

    .line 924
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 447
    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    .prologue
    .line 438
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->refreshUi()Z

    .line 439
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->refreshSizeInfo()V

    .line 454
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 285
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 286
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mSession:Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState$Session;->pause()V

    .line 287
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 855
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 856
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 858
    const-string v2, "notification_switch"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 859
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefNotificationSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 860
    const/16 v0, 0x8

    invoke-direct {p0, v0, v4}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->showDialogInner(II)V

    .line 905
    :cond_0
    :goto_0
    return v4

    .line 862
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->setNotificationsEnabled(Z)V

    goto :goto_0

    .line 864
    :cond_2
    const-string v2, "clear_data"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 865
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 866
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 867
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 868
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 870
    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 873
    :cond_3
    invoke-direct {p0, v3, v4}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->showDialogInner(II)V

    goto :goto_0

    .line 875
    :cond_4
    const-string v2, "clear_cache"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 876
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mClearCacheObserver:Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearCacheObserver;

    if-nez v0, :cond_5

    .line 877
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearCacheObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearCacheObserver;-><init>(Lcom/android/settings/applications/InstalledAppDetailsFragment;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mClearCacheObserver:Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearCacheObserver;

    .line 879
    :cond_5
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mClearCacheObserver:Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearCacheObserver;

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    goto :goto_0

    .line 880
    :cond_6
    const-string v2, "clear_default_settings"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 881
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 883
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0, v1}, Landroid/hardware/usb/IUsbManager;->clearDefaults(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 887
    :goto_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, v1, v4}, Landroid/appwidget/AppWidgetManager;->setBindAppWidgetPermission(Ljava/lang/String;Z)V

    .line 888
    invoke-direct {p0, v5, v5}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto :goto_0

    .line 884
    :catch_0
    move-exception v0

    .line 885
    const-string v2, "InstalledAppDetails"

    const-string v3, "mUsbManager.clearDefaults"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 889
    :cond_7
    const-string v1, "permission_detail_info"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 890
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/applications/PermissionInfoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 891
    const-string v1, "extra_package_uid"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 892
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 893
    :cond_8
    const-string v1, "permission_manage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 895
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 896
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.android.settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 897
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.settings.permission.AppPermissionsEditor"

    invoke-direct {v2, v1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 898
    const-string v1, "extra_package_uid"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 899
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 900
    :catch_1
    move-exception v0

    .line 901
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 443
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 271
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 273
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mSession:Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState$Session;->resume()V

    .line 274
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    invoke-direct {p0, v5, v5}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->setIntentAndFinish(ZZ)V

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/applications/PermissionInfoActivity;->parsePermission(ILandroid/content/Context;)V

    .line 279
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefPermissionDetailInfo:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0875

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/settings/applications/PermissionInfoActivity;->getSecurityCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {}, Lcom/android/settings/applications/PermissionInfoActivity;->getPrivacyCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-static {}, Lcom/android/settings/applications/PermissionInfoActivity;->getOtherCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 281
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0
    .parameter "running"

    .prologue
    .line 434
    return-void
.end method
