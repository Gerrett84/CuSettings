.class public Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;
.super Landroid/preference/Preference;
.source "SingleSpellCheckerPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private final mFragment:Lcom/android/settings/inputmethod/SpellCheckersSettings;

.field private mPrefAll:Landroid/view/View;

.field private mPrefLeftButton:Landroid/view/View;

.field private mRadioButton:Landroid/widget/RadioButton;

.field private final mRes:Landroid/content/res/Resources;

.field private mSelected:Z

.field private mSettingsButton:Landroid/view/View;

.field private mSettingsIntent:Landroid/content/Intent;

.field private final mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

.field private mSubtypeButton:Landroid/widget/ImageView;

.field private mSummaryText:Landroid/widget/TextView;

.field private mTitleText:Landroid/widget/TextView;

.field private final mTsm:Landroid/view/textservice/TextServicesManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/inputmethod/SpellCheckersSettings;Landroid/content/Intent;Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/TextServicesManager;)V
    .locals 4
    .parameter "fragment"
    .parameter "settingsIntent"
    .parameter "sci"
    .parameter "tsm"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 64
    invoke-virtual {p1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1, v2, v3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    iput-object v2, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mDialog:Landroid/app/AlertDialog;

    .line 65
    iput-object p1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mFragment:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    .line 66
    invoke-virtual {p1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mRes:Landroid/content/res/Resources;

    .line 67
    iput-object p4, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mTsm:Landroid/view/textservice/TextServicesManager;

    .line 68
    const v1, 0x7f040080

    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->setLayoutResource(I)V

    .line 69
    iput-object p3, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    .line 70
    iput-boolean v3, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSelected:Z

    .line 71
    iget-object v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, settingsActivity:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsIntent:Landroid/content/Intent;

    .line 74
    iget-object v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    iput-object v2, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsIntent:Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->onLeftButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->onSubtypeButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->onSettingsButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)Landroid/view/textservice/TextServicesManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mTsm:Landroid/view/textservice/TextServicesManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)Landroid/view/textservice/SpellCheckerInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    return-object v0
.end method

.method private enableButtons(Z)V
    .locals 3
    .parameter "enabled"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/16 v2, 0x8

    const v1, 0x3ecccccd

    .line 201
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsIntent:Landroid/content/Intent;

    if-nez v0, :cond_2

    .line 203
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 212
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSubtypeButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v0

    if-gtz v0, :cond_3

    .line 214
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSubtypeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    :cond_1
    :goto_1
    return-void

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 206
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 207
    if-nez p1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 216
    :cond_3
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSubtypeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 217
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSubtypeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 218
    if-nez p1, :cond_1

    .line 219
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSubtypeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1
.end method

.method private onLeftButtonClicked(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mFragment:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v0, p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->onPreferenceClick(Landroid/preference/Preference;)Z

    .line 121
    return-void
.end method

.method private onSettingsButtonClicked(Landroid/view/View;)V
    .locals 9
    .parameter "arg0"

    .prologue
    const/4 v8, 0x1

    .line 188
    iget-object v2, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mFragment:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 190
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mFragment:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    iget-object v3, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, e:Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mFragment:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    const v3, 0x7f0c0434

    new-array v4, v8, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    iget-object v7, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mFragment:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v7}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/textservice/SpellCheckerInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, msg:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mFragment:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v2}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private onSubtypeButtonClicked(Landroid/view/View;)V
    .locals 12
    .parameter "arg0"

    .prologue
    const/4 v11, 0x0

    .line 140
    iget-object v8, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mDialog:Landroid/app/AlertDialog;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 141
    iget-object v8, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->dismiss()V

    .line 143
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mFragment:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v8}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 144
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v8, 0x7f0c0425

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 145
    iget-object v8, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v8}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v6

    .line 146
    .local v6, size:I
    add-int/lit8 v8, v6, 0x1

    new-array v4, v8, [Ljava/lang/CharSequence;

    .line 147
    .local v4, items:[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f0c046c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v11

    .line 148
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v6, :cond_1

    .line 149
    iget-object v8, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v8, v3}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v7

    .line 150
    .local v7, subtype:Landroid/view/textservice/SpellCheckerSubtype;
    iget-object v8, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mFragment:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v8}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v9}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v10}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v8, v9, v10}, Landroid/view/textservice/SpellCheckerSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 153
    .local v5, label:Ljava/lang/CharSequence;
    add-int/lit8 v8, v3, 0x1

    aput-object v5, v4, v8

    .line 148
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 156
    .end local v5           #label:Ljava/lang/CharSequence;
    .end local v7           #subtype:Landroid/view/textservice/SpellCheckerSubtype;
    :cond_1
    const/4 v1, 0x0

    .line 158
    .local v1, checkedItem:I
    iget-object v8, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v8, v11}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v2

    .line 159
    .local v2, currentScs:Landroid/view/textservice/SpellCheckerSubtype;
    if-eqz v2, :cond_2

    .line 160
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v6, :cond_2

    .line 161
    iget-object v8, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v8, v3}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/view/textservice/SpellCheckerSubtype;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 162
    add-int/lit8 v1, v3, 0x1

    .line 167
    :cond_2
    new-instance v8, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$4;

    invoke-direct {v8, p0}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$4;-><init>(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)V

    invoke-virtual {v0, v4, v1, v8}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 183
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mDialog:Landroid/app/AlertDialog;

    .line 184
    iget-object v8, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 185
    return-void

    .line 160
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private updateSelectedState(Z)V
    .locals 1
    .parameter "selected"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mPrefAll:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 130
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->enableButtons(Z)V

    .line 132
    :cond_0
    return-void
.end method


# virtual methods
.method public getSpellCheckerInfo()Landroid/view/textservice/SpellCheckerInfo;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .parameter "view"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x60a0036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 86
    .local v0, paddingSide:I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 88
    const v1, 0x7f090114

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mPrefAll:Landroid/view/View;

    .line 89
    const v1, 0x7f090116

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mRadioButton:Landroid/widget/RadioButton;

    .line 90
    const v1, 0x7f090115

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mPrefLeftButton:Landroid/view/View;

    .line 91
    new-instance v1, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$1;-><init>(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mTitleText:Landroid/widget/TextView;

    .line 99
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSummaryText:Landroid/widget/TextView;

    .line 100
    const v1, 0x7f090118

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSubtypeButton:Landroid/widget/ImageView;

    .line 101
    iget-object v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSubtypeButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$2;

    invoke-direct {v2, p0}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$2;-><init>(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v1, 0x7f090117

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    .line 109
    iget-object v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    new-instance v2, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$3;

    invoke-direct {v2, p0}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$3;-><init>(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-boolean v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSelected:Z

    invoke-direct {p0, v1}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->updateSelectedState(Z)V

    .line 117
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSelected:Z

    .line 136
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->updateSelectedState(Z)V

    .line 137
    return-void
.end method
