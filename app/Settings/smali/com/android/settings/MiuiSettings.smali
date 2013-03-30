.class public Lcom/android/settings/MiuiSettings;
.super Landroid/preference/PreferenceActivity;
.source "MiuiSettings.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/MiuiSettings$HeaderAdapter;
    }
.end annotation


# static fields
.field private static sCategoryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private SETTINGS_FOR_RESTRICTED:[I

.field private mActionBar:Lmiui/v5/app/MiuiActionBar;

.field private mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

.field private mEnableUserManagement:Z

.field private mListeningToAccountUpdates:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/MiuiSettings;->sCategoryList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 62
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->SETTINGS_FOR_RESTRICTED:[I

    .line 321
    return-void

    .line 62
    :array_0
    .array-data 0x4
        0x56t 0x2t 0x9t 0x7ft
        0x49t 0x2t 0x9t 0x7ft
        0x5bt 0x2t 0x9t 0x7ft
        0x5at 0x2t 0x9t 0x7ft
        0x5dt 0x2t 0x9t 0x7ft
        0x5ft 0x2t 0x9t 0x7ft
        0x43t 0x2t 0x9t 0x7ft
    .end array-data
.end method

.method static synthetic access$100(I)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-static {p0}, Lcom/android/settings/MiuiSettings;->getChildBackgroundState(I)I

    move-result v0

    return v0
.end method

.method private createTab()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getMiuiActionBar()Lmiui/v5/app/MiuiActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->mActionBar:Lmiui/v5/app/MiuiActionBar;

    .line 97
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->mActionBar:Lmiui/v5/app/MiuiActionBar;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-interface {v0, p0, v1, v5}, Lmiui/v5/app/MiuiActionBar;->setFragmentViewPagerMode(Landroid/content/Context;Landroid/app/FragmentManager;Z)V

    .line 100
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->mActionBar:Lmiui/v5/app/MiuiActionBar;

    invoke-interface {v0}, Lmiui/v5/app/MiuiActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    .line 101
    const v0, 0x7f0c0771

    invoke-virtual {v2, v0}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    .line 102
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->mActionBar:Lmiui/v5/app/MiuiActionBar;

    const-string v1, "com.android.settings.FrequentlyFragment"

    const-class v3, Lcom/android/settings/FrequentlyFragment;

    invoke-interface/range {v0 .. v5}, Lmiui/v5/app/MiuiActionBar;->addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    .line 105
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->mActionBar:Lmiui/v5/app/MiuiActionBar;

    invoke-interface {v0}, Lmiui/v5/app/MiuiActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v8

    .line 106
    const v0, 0x7f0c0770

    invoke-virtual {v8, v0}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    .line 107
    iget-object v6, p0, Lcom/android/settings/MiuiSettings;->mActionBar:Lmiui/v5/app/MiuiActionBar;

    const-string v7, "com.android.settings.SettingsFragment"

    const-class v9, Lcom/android/settings/SettingsFragment;

    move-object v10, v4

    move v11, v5

    invoke-interface/range {v6 .. v11}, Lmiui/v5/app/MiuiActionBar;->addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 110
    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.settings.AIRPLANE_MODE_SETTINGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->mActionBar:Lmiui/v5/app/MiuiActionBar;

    invoke-interface {v0, v8}, Lmiui/v5/app/MiuiActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 121
    return-void

    .line 114
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 115
    const-string v1, "leave_fragment_index"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 116
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    move-object v8, v2

    goto :goto_0
.end method

.method private static getChildBackgroundState(I)I
    .locals 3
    .parameter "pos"

    .prologue
    .line 308
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/settings/MiuiSettings;->sCategoryList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 309
    sget-object v1, Lcom/android/settings/MiuiSettings;->sCategoryList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ne v1, p0, :cond_1

    .line 310
    sget-object v1, Lcom/android/settings/MiuiSettings;->sCategoryList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/android/settings/MiuiSettings;->sCategoryList:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v1, p0, :cond_0

    .line 311
    const v1, 0x6010039

    .line 318
    :goto_1
    return v1

    .line 313
    :cond_0
    const v1, 0x6010036

    goto :goto_1

    .line 314
    :cond_1
    sget-object v1, Lcom/android/settings/MiuiSettings;->sCategoryList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    sget-object v1, Lcom/android/settings/MiuiSettings;->sCategoryList:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v1, p0, :cond_2

    .line 315
    const v1, 0x6010037

    goto :goto_1

    .line 308
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 318
    :cond_3
    const v1, 0x6010038

    goto :goto_1
.end method

.method private insertAccountsHeaders(Ljava/util/List;I)I
    .locals 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/settings/accounts/AuthenticatorHelper;->getEnabledAccountTypes()[Ljava/lang/String;

    move-result-object v2

    .line 158
    new-instance v3, Ljava/util/ArrayList;

    array-length v0, v2

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 159
    array-length v4, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_7

    aget-object v5, v2, v1

    .line 160
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0, v5}, Lcom/android/settings/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 161
    if-nez v6, :cond_0

    .line 159
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 165
    :cond_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v7

    .line 166
    array-length v0, v7

    const/4 v8, 0x1

    if-ne v0, v8, :cond_3

    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, v5}, Lcom/android/settings/accounts/AuthenticatorHelper;->hasAccountPreferences(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 168
    :goto_2
    new-instance v8, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v8}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 169
    iput-object v6, v8, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 170
    iget-object v9, v8, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-nez v9, :cond_1

    .line 171
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    iput-object v9, v8, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    .line 174
    :cond_1
    const-string v9, "com.xiaomi"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "com.xiaomi.unactivated"

    const/4 v10, 0x0

    aget-object v10, v7, v10

    iget-object v10, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 176
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.settings.XIAOMI_ACCOUNT_SYNC_SETTINGS"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    const-string v6, "account"

    const/4 v9, 0x0

    aget-object v7, v7, v9

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 178
    iput-object v0, v8, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 180
    iget-object v0, v8, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v6, "account_type"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 166
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 184
    :cond_4
    if-eqz v0, :cond_6

    .line 185
    const v0, 0x7f0c057d

    iput v0, v8, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 186
    const v0, 0x7f0c057d

    iput v0, v8, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 187
    const-class v0, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 188
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v8, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 190
    iget-object v0, v8, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v6, "account_type"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, v8, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v5, "account"

    const/4 v6, 0x0

    aget-object v6, v7, v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 192
    iget-object v0, v8, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v5, "account"

    const/4 v6, 0x0

    aget-object v6, v7, v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 207
    :cond_5
    :goto_3
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 195
    :cond_6
    iput-object v6, v8, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    .line 196
    iput-object v6, v8, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    .line 197
    const-class v0, Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 198
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v8, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 199
    iget-object v0, v8, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v7, "account_type"

    invoke-virtual {v0, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v0, v8, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v7, "account_type"

    invoke-virtual {v0, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->isMultiPane()Z

    move-result v0

    if-nez v0, :cond_5

    .line 203
    iget-object v0, v8, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v5, "account_label"

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 211
    :cond_7
    new-instance v0, Lcom/android/settings/MiuiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiSettings$1;-><init>(Lcom/android/settings/MiuiSettings;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 218
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 219
    add-int/lit8 v1, p2, 0x1

    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move p2, v1

    goto :goto_4

    .line 221
    :cond_8
    iget-boolean v0, p0, Lcom/android/settings/MiuiSettings;->mListeningToAccountUpdates:Z

    if-nez v0, :cond_9

    .line 222
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/MiuiSettings;->mListeningToAccountUpdates:Z

    .line 225
    :cond_9
    return p2
.end method

.method private needsDockSettings()Z
    .locals 2

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getAuthenticatorHelper()Lcom/android/settings/accounts/AuthenticatorHelper;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    return-object v0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 1
    .parameter "accounts"

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    .line 546
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->invalidateHeaders()V

    .line 547
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, headers:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v2, 0x1

    .line 554
    iget-object v1, p0, Lcom/android/settings/MiuiSettings;->mActionBar:Lmiui/v5/app/MiuiActionBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/MiuiSettings;->mActionBar:Lmiui/v5/app/MiuiActionBar;

    invoke-interface {v1}, Lmiui/v5/app/MiuiActionBar;->getFragmentTabCount()I

    move-result v1

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/MiuiSettings;->mActionBar:Lmiui/v5/app/MiuiActionBar;

    invoke-interface {v1, v2}, Lmiui/v5/app/MiuiActionBar;->getFragmentAt(I)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/MiuiSettings;->mListeningToAccountUpdates:Z

    if-eqz v1, :cond_0

    .line 556
    iget-object v1, p0, Lcom/android/settings/MiuiSettings;->mActionBar:Lmiui/v5/app/MiuiActionBar;

    invoke-interface {v1, v2}, Lmiui/v5/app/MiuiActionBar;->getFragmentAt(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsFragment;

    .line 557
    .local v0, settingsFragment:Lcom/android/settings/SettingsFragment;
    invoke-virtual {v0}, Lcom/android/settings/SettingsFragment;->buildAdapter()V

    .line 559
    .end local v0           #settingsFragment:Lcom/android/settings/SettingsFragment;
    :cond_0
    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    invoke-super {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 130
    const-class v1, Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/UserDictionarySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    :cond_0
    const-string v1, "settings:remove_ui_options"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 137
    :cond_1
    const-class v1, Lcom/android/settings/SubSettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 138
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 80
    new-instance v0, Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-direct {v0}, Lcom/android/settings/accounts/AuthenticatorHelper;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    .line 81
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0}, Lcom/android/settings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 82
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    .line 83
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const v0, 0x7f040095

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSettings;->setContentView(I)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "multiuser_enabled"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/MiuiSettings;->mEnableUserManagement:Z

    .line 92
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/MiuiSettings;->createTab()V

    .line 93
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 143
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 144
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 145
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "leave_fragment_index"

    iget-object v3, p0, Lcom/android/settings/MiuiSettings;->mActionBar:Lmiui/v5/app/MiuiActionBar;

    invoke-interface {v3}, Lmiui/v5/app/MiuiActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 146
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 148
    iget-boolean v2, p0, Lcom/android/settings/MiuiSettings;->mListeningToAccountUpdates:Z

    if-eqz v2, :cond_0

    .line 149
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 150
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/MiuiSettings;->mListeningToAccountUpdates:Z

    .line 153
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 154
    return-void
.end method

.method public updateHeaderList(Ljava/util/List;Z)V
    .locals 8
    .parameter
    .parameter "buildCategoryList"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 233
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v3, 0x0

    .line 234
    .local v3, i:I
    if-eqz p2, :cond_0

    .line 235
    sget-object v5, Lcom/android/settings/MiuiSettings;->sCategoryList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 238
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_f

    .line 239
    move v0, v3

    .line 240
    .local v0, category:I
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 242
    .local v1, header:Landroid/preference/PreferenceActivity$Header;
    iget-wide v5, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v4, v5

    .line 243
    .local v4, id:I
    const v5, 0x7f090264

    if-ne v4, v5, :cond_4

    .line 244
    invoke-direct {p0}, Lcom/android/settings/MiuiSettings;->needsDockSettings()Z

    move-result v5

    if-nez v5, :cond_1

    .line 245
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 282
    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/UserId;->myUserId()I

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/MiuiSettings;->SETTINGS_FOR_RESTRICTED:[I

    invoke-static {v5, v4}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v5

    if-nez v5, :cond_2

    .line 284
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 287
    :cond_2
    iget-object v5, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v5, :cond_3

    iget-object v5, v1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v5, :cond_3

    if-eqz p2, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 289
    sget-object v5, Lcom/android/settings/MiuiSettings;->sCategoryList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    :cond_3
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_0

    .line 294
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 246
    :cond_4
    const v5, 0x7f090257

    if-eq v4, v5, :cond_5

    const v5, 0x7f090263

    if-ne v4, v5, :cond_6

    .line 247
    :cond_5
    invoke-static {p0, p1, v1}, Lcom/android/settings/Utils;->updateHeaderToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Ljava/util/List;Landroid/preference/PreferenceActivity$Header;)Z

    goto :goto_1

    .line 248
    :cond_6
    const v5, 0x7f090256

    if-ne v4, v5, :cond_7

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android.hardware.wifi"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 251
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 253
    :cond_7
    const v5, 0x7f090249

    if-ne v4, v5, :cond_8

    .line 255
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android.hardware.bluetooth"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 256
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 258
    :cond_8
    const v5, 0x7f090251

    if-ne v4, v5, :cond_9

    invoke-static {p0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 260
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 261
    :cond_9
    const v5, 0x7f090247

    if-ne v4, v5, :cond_a

    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v5

    if-nez v5, :cond_a

    .line 263
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 264
    :cond_a
    const v5, 0x7f090250

    if-ne v4, v5, :cond_b

    sget-boolean v5, Lmiui/os/Build;->IS_XIAOMI:Z

    if-nez v5, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a000a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_b

    .line 266
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 267
    :cond_b
    const v5, 0x7f09025f

    if-ne v4, v5, :cond_c

    .line 268
    add-int/lit8 v2, v3, 0x1

    .line 269
    .local v2, headerIndex:I
    invoke-direct {p0, p1, v2}, Lcom/android/settings/MiuiSettings;->insertAccountsHeaders(Ljava/util/List;I)I

    move-result v3

    .line 270
    goto/16 :goto_1

    .end local v2           #headerIndex:I
    :cond_c
    const v5, 0x7f090259

    if-ne v4, v5, :cond_e

    .line 271
    iget-boolean v5, p0, Lcom/android/settings/MiuiSettings;->mEnableUserManagement:Z

    if-eqz v5, :cond_d

    invoke-static {}, Landroid/os/UserId;->myUserId()I

    move-result v5

    if-nez v5, :cond_d

    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0005

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 275
    :cond_d
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 277
    :cond_e
    const v5, 0x7f090266

    if-ne v4, v5, :cond_1

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.google.settings"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v5

    if-nez v5, :cond_1

    .line 279
    const v5, 0x7f0c032d

    iput v5, v1, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    goto/16 :goto_1

    .line 297
    .end local v0           #category:I
    .end local v1           #header:Landroid/preference/PreferenceActivity$Header;
    .end local v4           #id:I
    :cond_f
    if-eqz p2, :cond_10

    .line 298
    sget-object v5, Lcom/android/settings/MiuiSettings;->sCategoryList:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_10
    return-void
.end method
