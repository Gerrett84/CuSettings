.class public Lcom/android/settings/ApnEditor;
.super Landroid/preference/PreferenceActivity;
.source "ApnEditor.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sNotSet:Ljava/lang/String;

.field private static final sProjection:[Ljava/lang/String;


# instance fields
.field private mApn:Landroid/preference/EditTextPreference;

.field private mApnType:Landroid/preference/EditTextPreference;

.field private mAuthType:Landroid/preference/ListPreference;

.field private mBearer:Landroid/preference/ListPreference;

.field private mCarrierEnabled:Landroid/preference/CheckBoxPreference;

.field mCurMcc:Ljava/lang/String;
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field mCurMnc:Ljava/lang/String;
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field mCursor:Landroid/database/Cursor;
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field private mFirstTime:Z

.field private mMcc:Landroid/preference/EditTextPreference;

.field private mMmsPort:Landroid/preference/EditTextPreference;

.field private mMmsProxy:Landroid/preference/EditTextPreference;

.field private mMmsc:Landroid/preference/EditTextPreference;

.field private mMnc:Landroid/preference/EditTextPreference;

.field private mName:Landroid/preference/EditTextPreference;

.field mNewApn:Z
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field private mPassword:Landroid/preference/EditTextPreference;

.field private mPort:Landroid/preference/EditTextPreference;

.field private mProtocol:Landroid/preference/ListPreference;

.field private mProxy:Landroid/preference/EditTextPreference;

.field private mRes:Landroid/content/res/Resources;

.field private mRoamingProtocol:Landroid/preference/ListPreference;

.field private mServer:Landroid/preference/EditTextPreference;

.field private mUri:Landroid/net/Uri;

.field private mUser:Landroid/preference/EditTextPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    const-class v0, Lcom/android/settings/ApnEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    .line 103
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "apn"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "proxy"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "port"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "user"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "server"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "password"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mmsc"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mcc"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mnc"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "numeric"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mmsproxy"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mmsport"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "authtype"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "carrier_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "bearer"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "roaming_protocol"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/ApnEditor;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private bearerDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "raw"

    .prologue
    const/4 v3, 0x0

    .line 347
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v4, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 348
    .local v1, mBearerIndex:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 355
    :goto_0
    return-object v3

    .line 351
    :cond_0
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f08002c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 353
    .local v2, values:[Ljava/lang/String;
    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 608
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 609
    :cond_0
    const-string p1, ""

    .line 611
    .end local p1
    :cond_1
    return-object p1
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 600
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 601
    :cond_0
    sget-object p1, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 603
    .end local p1
    :cond_1
    return-object p1
.end method

.method private deleteApn()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 583
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 584
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->finish()V

    .line 585
    return-void
.end method

.method private fillUi()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 249
    iget-boolean v8, p0, Lcom/android/settings/ApnEditor;->mFirstTime:Z

    if-eqz v8, :cond_1

    .line 250
    iput-boolean v7, p0, Lcom/android/settings/ApnEditor;->mFirstTime:Z

    .line 252
    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 253
    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x2

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 254
    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 255
    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 256
    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x5

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 257
    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x6

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 258
    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x7

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 259
    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0xc

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 260
    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0xd

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 261
    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0x8

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 262
    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0x9

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 263
    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0xa

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 264
    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0xf

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 265
    iget-boolean v8, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    if-eqz v8, :cond_0

    .line 266
    const-string v8, "gsm.sim.operator.numeric"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 269
    .local v4, numeric:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v12, :cond_0

    .line 271
    invoke-virtual {v4, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, mcc:Ljava/lang/String;
    invoke-virtual {v4, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 275
    .local v3, mnc:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v8, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 276
    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v8, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 277
    iput-object v3, p0, Lcom/android/settings/ApnEditor;->mCurMnc:Ljava/lang/String;

    .line 278
    iput-object v2, p0, Lcom/android/settings/ApnEditor;->mCurMcc:Ljava/lang/String;

    .line 281
    .end local v2           #mcc:Ljava/lang/String;
    .end local v3           #mnc:Ljava/lang/String;
    .end local v4           #numeric:Ljava/lang/String;
    :cond_0
    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v9, 0xe

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 282
    .local v0, authVal:I
    const/4 v8, -0x1

    if-eq v0, v8, :cond_2

    .line 283
    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v8, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 288
    :goto_0
    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0x10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 289
    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0x13

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 290
    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0x11

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-ne v9, v6, :cond_3

    :goto_1
    invoke-virtual {v8, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 291
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v8, 0x12

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 294
    .end local v0           #authVal:I
    :cond_1
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, authVal:Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 310
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 311
    .local v1, authValIndex:I
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v6, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 313
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f080028

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 314
    .local v5, values:[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    aget-object v7, v5, v1

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 319
    .end local v1           #authValIndex:I
    .end local v5           #values:[Ljava/lang/String;
    :goto_2
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v7, v8}, Lcom/android/settings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v7, v8}, Lcom/android/settings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->bearerDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 325
    return-void

    .line 285
    .local v0, authVal:I
    :cond_2
    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    move v6, v7

    .line 290
    goto/16 :goto_1

    .line 316
    .local v0, authVal:Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    sget-object v7, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private getErrorMsg()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 533
    const/4 v1, 0x0

    .line 535
    .local v1, errorMsg:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 536
    .local v4, name:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 537
    .local v0, apn:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 538
    .local v2, mcc:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 540
    .local v3, mnc:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_1

    .line 541
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c031e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 550
    :cond_0
    :goto_0
    return-object v1

    .line 542
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_2

    .line 543
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c031f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 544
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    .line 545
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c0320

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 546
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const v6, 0xfffe

    and-int/2addr v5, v6

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 547
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c0321

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;
    .locals 6
    .parameter "raw"
    .parameter "protocol"

    .prologue
    const/4 v3, 0x0

    .line 333
    invoke-virtual {p2, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 334
    .local v1, protocolIndex:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 341
    :goto_0
    return-object v3

    .line 337
    :cond_0
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f08002a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 339
    .local v2, values:[Ljava/lang/String;
    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method

.method private starify(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "value"

    .prologue
    .line 588
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 589
    :cond_0
    sget-object v2, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 595
    :goto_0
    return-object v2

    .line 591
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [C

    .line 592
    .local v1, password:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 593
    const/16 v2, 0x2a

    aput-char v2, v1, v0

    .line 592
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 595
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method


# virtual methods
.method noModifyApn()Z
    .locals 5
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 628
    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    .line 650
    :cond_0
    :goto_0
    return v0

    .line 631
    :cond_1
    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x5

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x6

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x7

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v4, 0xc

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v4, 0xd

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v4, 0x8

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mCurMcc:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mCurMnc:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v4, 0xf

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v4, 0x10

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v4, 0x13

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v4, 0x11

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v1, :cond_2

    move v2, v1

    :goto_1
    xor-int/2addr v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v4, 0x12

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 648
    goto/16 :goto_0

    :cond_2
    move v2, v0

    .line 631
    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 151
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 153
    const v3, 0x7f06000a

    invoke-virtual {p0, v3}, Lcom/android/settings/ApnEditor;->addPreferencesFromResource(I)V

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0c0300

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 156
    const-string v3, "apn_name"

    invoke-virtual {p0, v3}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    .line 157
    const-string v3, "apn_apn"

    invoke-virtual {p0, v3}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    .line 158
    const-string v3, "apn_http_proxy"

    invoke-virtual {p0, v3}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    .line 159
    const-string v3, "apn_http_port"

    invoke-virtual {p0, v3}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    .line 160
    const-string v3, "apn_user"

    invoke-virtual {p0, v3}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    .line 161
    const-string v3, "apn_server"

    invoke-virtual {p0, v3}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    .line 162
    const-string v3, "apn_password"

    invoke-virtual {p0, v3}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    .line 163
    const-string v3, "apn_mms_proxy"

    invoke-virtual {p0, v3}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    .line 164
    const-string v3, "apn_mms_port"

    invoke-virtual {p0, v3}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    .line 165
    const-string v3, "apn_mmsc"

    invoke-virtual {p0, v3}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    .line 166
    const-string v3, "apn_mcc"

    invoke-virtual {p0, v3}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    .line 167
    const-string v3, "apn_mnc"

    invoke-virtual {p0, v3}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    .line 168
    const-string v3, "apn_type"

    invoke-virtual {p0, v3}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    .line 170
    const-string v3, "auth_type"

    invoke-virtual {p0, v3}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    .line 171
    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 173
    const-string v3, "apn_protocol"

    invoke-virtual {p0, v3}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    .line 174
    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 176
    const-string v3, "apn_roaming_protocol"

    invoke-virtual {p0, v3}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    .line 180
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/android/settings/ApnEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 181
    .local v2, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    .line 182
    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 187
    :goto_0
    const-string v3, "carrier_enabled"

    invoke-virtual {p0, v3}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    .line 189
    const-string v3, "bearer"

    invoke-virtual {p0, v3}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    .line 190
    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 195
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, action:Ljava/lang/String;
    if-nez p1, :cond_1

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/android/settings/ApnEditor;->mFirstTime:Z

    .line 199
    const-string v3, "android.intent.action.EDIT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 200
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    .line 228
    :goto_2
    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/settings/ApnEditor;->sProjection:[Ljava/lang/String;

    invoke-virtual {p0, v3, v4, v7, v7}, Lcom/android/settings/ApnEditor;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    .line 229
    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 231
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->fillUi()V

    .line 232
    :goto_3
    return-void

    .line 184
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 197
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 201
    :cond_2
    const-string v3, "android.intent.action.INSERT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 202
    iget-boolean v3, p0, Lcom/android/settings/ApnEditor;->mFirstTime:Z

    if-nez v3, :cond_3

    const-string v3, "pos"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    .line 203
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    .line 208
    :goto_4
    iput-boolean v4, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    .line 212
    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    if-nez v3, :cond_5

    .line 213
    sget-object v3, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to insert new telephony provider into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->finish()V

    goto :goto_3

    .line 205
    :cond_4
    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "pos"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v5, v5

    invoke-static {v3, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    goto :goto_4

    .line 221
    :cond_5
    const/4 v3, -0x1

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/ApnEditor;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_2

    .line 224
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->finish()V

    goto/16 :goto_3
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 556
    if-nez p1, :cond_0

    .line 557
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 559
    .local v0, msg:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c031d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 566
    .end local v0           #msg:Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 400
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 402
    iget-boolean v0, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    if-nez v0, :cond_0

    .line 403
    const v0, 0x7f0c0319

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02009e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 406
    :cond_0
    const/4 v0, 0x2

    const v1, 0x7f0c031b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 408
    const/4 v0, 0x3

    const v1, 0x7f0c031c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 410
    return v3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 436
    packed-switch p1, :pswitch_data_0

    .line 444
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 438
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->finish()V

    .line 441
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 436
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 415
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 431
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 417
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->deleteApn()V

    goto :goto_0

    .line 420
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/ApnEditor;->validateAndSave(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 421
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->finish()V

    goto :goto_0

    .line 425
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    if-eqz v1, :cond_1

    .line 426
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 428
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->finish()V

    goto :goto_0

    .line 415
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 245
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 246
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v7, 0x0

    .line 361
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 362
    .local v3, key:Ljava/lang/String;
    const-string v6, "auth_type"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 364
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 365
    .local v2, index:I
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v6, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 367
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v8, 0x7f080028

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 368
    .local v5, values:[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    aget-object v8, v5, v2

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    .end local v2           #index:I
    .end local v5           #values:[Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v6, 0x1

    :goto_1
    return v6

    .line 369
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/NumberFormatException;
    move v6, v7

    .line 370
    goto :goto_1

    .line 372
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_1
    const-string v6, "apn_protocol"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, p2

    .line 373
    check-cast v6, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v6, v8}, Lcom/android/settings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v4

    .line 374
    .local v4, protocol:Ljava/lang/String;
    if-nez v4, :cond_2

    move v6, v7

    .line 375
    goto :goto_1

    .line 377
    :cond_2
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v6, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 378
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v6, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 379
    .end local v4           #protocol:Ljava/lang/String;
    .restart local p2
    :cond_3
    const-string v6, "apn_roaming_protocol"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v6, p2

    .line 380
    check-cast v6, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v6, v8}, Lcom/android/settings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v4

    .line 381
    .restart local v4       #protocol:Ljava/lang/String;
    if-nez v4, :cond_4

    move v6, v7

    .line 382
    goto :goto_1

    .line 384
    :cond_4
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v6, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v6, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 386
    .end local v4           #protocol:Ljava/lang/String;
    .restart local p2
    :cond_5
    const-string v6, "bearer"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, p2

    .line 387
    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/settings/ApnEditor;->bearerDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, bearer:Ljava/lang/String;
    if-nez v0, :cond_6

    move v6, v7

    .line 389
    goto :goto_1

    .line 391
    :cond_6
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v6, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 392
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v6, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 571
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 573
    if-nez p1, :cond_0

    .line 574
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 576
    .local v0, msg:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 577
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 580
    .end local v0           #msg:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 236
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 239
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 449
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 450
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    const-string v0, "pos"

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 453
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 616
    invoke-virtual {p0, p2}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 617
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 618
    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 619
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 624
    :cond_0
    :goto_0
    return-void

    .line 621
    :cond_1
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method validateAndSave(Z)Z
    .locals 12
    .parameter "force"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 463
    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 464
    .local v5, name:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 465
    .local v0, apn:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 466
    .local v3, mcc:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 468
    .local v4, mnc:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    if-nez p1, :cond_0

    .line 469
    invoke-virtual {p0, v7}, Lcom/android/settings/ApnEditor;->showDialog(I)V

    .line 529
    .end local v5           #name:Ljava/lang/String;
    :goto_0
    return v7

    .line 473
    .restart local v5       #name:Ljava/lang/String;
    :cond_0
    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-nez v9, :cond_1

    .line 474
    sget-object v8, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v9, "Could not go to the first row in the Cursor when saving data."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 480
    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v9, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    if-eqz v9, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v8, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v8, :cond_2

    .line 481
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v8, v9, v11, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 485
    :cond_2
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 489
    .local v6, values:Landroid/content/ContentValues;
    const-string v7, "name"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v8, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0556

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .end local v5           #name:Ljava/lang/String;
    :cond_3
    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const-string v7, "apn"

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const-string v7, "proxy"

    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const-string v7, "port"

    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const-string v7, "mmsproxy"

    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string v7, "mmsport"

    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const-string v7, "user"

    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const-string v7, "server"

    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const-string v7, "password"

    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const-string v7, "mmsc"

    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 502
    .local v1, authVal:Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 503
    const-string v7, "authtype"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 506
    :cond_4
    const-string v7, "protocol"

    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const-string v7, "roaming_protocol"

    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    const-string v7, "type"

    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    const-string v7, "mcc"

    invoke-virtual {v6, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const-string v7, "mnc"

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const-string v7, "numeric"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mCurMnc:Ljava/lang/String;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mCurMcc:Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 517
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mCurMnc:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mCurMcc:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 518
    const-string v7, "current"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 522
    :cond_5
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 523
    .local v2, bearerVal:Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 524
    const-string v7, "bearer"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 527
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v7, v9, v6, v11, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v7, v8

    .line 529
    goto/16 :goto_0
.end method
