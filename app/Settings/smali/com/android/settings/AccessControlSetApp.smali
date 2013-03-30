.class public Lcom/android/settings/AccessControlSetApp;
.super Landroid/preference/PreferenceActivity;
.source "AccessControlSetApp.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final WHITE_LIST:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mChooseLockSettingsHelper:Lmiui/security/ChooseLockSettingsHelper;

.field private final mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mPasswordConfirmed:Z

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settings/AccessControlSetApp;->WHITE_LIST:Ljava/util/HashSet;

    .line 51
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.android.soundrecorder"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.android.browser"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.android.stk"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.android.mms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.android.thememanager"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.android.deskclock"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.android.gallery3d"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.android.updater"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.android.fileexplorer"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.android.calendar"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.android.apps.tag"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.android.email"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.wali.miui.networkassistant"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.android.providers.downloads.ui"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.google.android.talk"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.google.android.gm"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.android.camera"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.miui.camera"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.miui.gallery"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.miui.player"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.miui.backup"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.miui.notes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.lbe.security.miui"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.xiaomi.market"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.miui.antispam"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "net.cactii.flash2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.htc.album"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/AccessControlSetApp;->mPasswordConfirmed:Z

    .line 40
    new-instance v0, Lcom/android/settings/AccessControlSetApp$1;

    invoke-direct {v0, p0}, Lcom/android/settings/AccessControlSetApp$1;-><init>(Lcom/android/settings/AccessControlSetApp;)V

    iput-object v0, p0, Lcom/android/settings/AccessControlSetApp;->mComparator:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AccessControlSetApp;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/settings/AccessControlSetApp;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/AccessControlSetApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/settings/AccessControlSetApp;->initCreate()V

    return-void
.end method

.method private addPackageInfo(Ljava/util/ArrayList;Z)V
    .locals 8
    .parameter
    .parameter "passwordProtected"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, appInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v5, p0, Lcom/android/settings/AccessControlSetApp;->mComparator:Ljava/util/Comparator;

    invoke-static {p1, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 151
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 152
    .local v2, info:Landroid/content/pm/ApplicationInfo;
    new-instance v4, Landroid/preference/CheckBoxPreference;

    invoke-direct {v4, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 153
    .local v4, pref:Landroid/preference/CheckBoxPreference;
    iget-object v5, p0, Lcom/android/settings/AccessControlSetApp;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 154
    .local v3, label:Ljava/lang/CharSequence;
    if-nez v3, :cond_0

    .line 155
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 157
    :cond_0
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v5, p0, Lcom/android/settings/AccessControlSetApp;->mPm:Landroid/content/pm/PackageManager;

    const-wide/32 v6, 0x36ee80

    invoke-static {p0, v2, v5, v6, v7}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 160
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 161
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 164
    :cond_1
    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 165
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 166
    invoke-virtual {v4, p2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 168
    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/AccessControlSetApp;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 171
    .end local v1           #icon:Landroid/graphics/drawable/Drawable;
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    .end local v3           #label:Ljava/lang/CharSequence;
    .end local v4           #pref:Landroid/preference/CheckBoxPreference;
    :cond_2
    return-void
.end method

.method private initCreate()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/high16 v9, -0x8000

    .line 118
    const v7, 0x7f060004

    invoke-virtual {p0, v7}, Lcom/android/settings/AccessControlSetApp;->addPreferencesFromResource(I)V

    .line 119
    iget-object v7, p0, Lcom/android/settings/AccessControlSetApp;->mPm:Landroid/content/pm/PackageManager;

    const v8, 0x20001

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v5

    .line 121
    .local v5, pInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v6, passwordAppInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v0, commonAppInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 125
    .local v4, pInfo:Landroid/content/pm/PackageInfo;
    iget-object v3, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 126
    .local v3, info:Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_0

    .line 130
    iget v1, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 131
    .local v1, flags:I
    and-int/lit8 v7, v1, 0x1

    if-ne v7, v10, :cond_1

    sget-object v7, Lcom/android/settings/AccessControlSetApp;->WHITE_LIST:Ljava/util/HashSet;

    iget-object v8, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 136
    :cond_1
    and-int v7, v1, v9

    if-ne v7, v9, :cond_2

    .line 138
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 143
    .end local v1           #flags:I
    .end local v3           #info:Landroid/content/pm/ApplicationInfo;
    .end local v4           #pInfo:Landroid/content/pm/PackageInfo;
    :cond_3
    invoke-direct {p0, v6, v10}, Lcom/android/settings/AccessControlSetApp;->addPackageInfo(Ljava/util/ArrayList;Z)V

    .line 144
    const/4 v7, 0x0

    invoke-direct {p0, v0, v7}, Lcom/android/settings/AccessControlSetApp;->addPackageInfo(Ljava/util/ArrayList;Z)V

    .line 145
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 191
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 192
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/AccessControlSetApp;->mPasswordConfirmed:Z

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/AccessControlSetApp;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    if-eqz p1, :cond_0

    .line 91
    const-string v0, "password_confirmed"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/AccessControlSetApp;->mPasswordConfirmed:Z

    .line 94
    :cond_0
    new-instance v0, Lmiui/security/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lmiui/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/AccessControlSetApp;->mChooseLockSettingsHelper:Lmiui/security/ChooseLockSettingsHelper;

    .line 95
    iget-object v0, p0, Lcom/android/settings/AccessControlSetApp;->mChooseLockSettingsHelper:Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lmiui/security/ChooseLockSettingsHelper;->isACLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/AccessControlSetApp;->mPasswordConfirmed:Z

    if-nez v0, :cond_1

    .line 96
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/ConfirmAccessControl;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/AccessControlSetApp;->startActivityForResult(Landroid/content/Intent;I)V

    .line 102
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/AccessControlSetApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AccessControlSetApp;->mPm:Landroid/content/pm/PackageManager;

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/AccessControlSetApp;->mHandler:Landroid/os/Handler;

    .line 104
    iget-boolean v0, p0, Lcom/android/settings/AccessControlSetApp;->mPasswordConfirmed:Z

    if-eqz v0, :cond_2

    .line 105
    invoke-direct {p0}, Lcom/android/settings/AccessControlSetApp;->initCreate()V

    .line 114
    :goto_1
    return-void

    .line 99
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/AccessControlSetApp;->mPasswordConfirmed:Z

    goto :goto_0

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/android/settings/AccessControlSetApp;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/AccessControlSetApp$2;

    invoke-direct {v1, p0}, Lcom/android/settings/AccessControlSetApp$2;-><init>(Lcom/android/settings/AccessControlSetApp;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/high16 v2, -0x8000

    .line 202
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    .line 203
    .local v0, checked:Ljava/lang/Boolean;
    iget-object v3, p0, Lcom/android/settings/AccessControlSetApp;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v3, v4, v2, v1}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 205
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lmiui/net/FirewallManager;->getInstance()Lmiui/net/FirewallManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/net/FirewallManager;->removeAccessControlPass(Ljava/lang/String;)V

    .line 206
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 203
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 184
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 186
    const-string v0, "password_confirmed"

    iget-boolean v1, p0, Lcom/android/settings/AccessControlSetApp;->mPasswordConfirmed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 187
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 175
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 176
    iget-boolean v0, p0, Lcom/android/settings/AccessControlSetApp;->mPasswordConfirmed:Z

    if-eqz v0, :cond_0

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/AccessControlSetApp;->mPasswordConfirmed:Z

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/AccessControlSetApp;->finish()V

    .line 180
    :cond_0
    return-void
.end method
