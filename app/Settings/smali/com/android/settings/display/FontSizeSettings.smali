.class public Lcom/android/settings/display/FontSizeSettings;
.super Landroid/preference/PreferenceActivity;
.source "FontSizeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static sUiModeOrder:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mSelectedOrder:I

.field private mUiModes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/FontSizePreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 23
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/settings/display/FontSizeSettings;->sUiModeOrder:Landroid/util/SparseArray;

    .line 25
    sget-object v0, Lcom/android/settings/display/FontSizeSettings;->sUiModeOrder:Landroid/util/SparseArray;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26
    sget-object v0, Lcom/android/settings/display/FontSizeSettings;->sUiModeOrder:Landroid/util/SparseArray;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 27
    sget-object v0, Lcom/android/settings/display/FontSizeSettings;->sUiModeOrder:Landroid/util/SparseArray;

    const/16 v1, 0xd

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    sget-object v0, Lcom/android/settings/display/FontSizeSettings;->sUiModeOrder:Landroid/util/SparseArray;

    const/16 v1, 0xe

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/display/FontSizeSettings;->mUiModes:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v12, 0x1

    .line 36
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v11, 0x7f060025

    invoke-virtual {p0, v11}, Lcom/android/settings/display/FontSizeSettings;->addPreferencesFromResource(I)V

    .line 41
    const/4 v4, 0x0

    .line 43
    .local v4, order:Ljava/lang/Integer;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 44
    .local v1, config:Landroid/content/res/Configuration;
    if-eqz v1, :cond_0

    .line 45
    sget-object v11, Lcom/android/settings/display/FontSizeSettings;->sUiModeOrder:Landroid/util/SparseArray;

    iget v13, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v13, v13, 0xf

    invoke-virtual {v11, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/lang/Integer;

    move-object v4, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v1           #config:Landroid/content/res/Configuration;
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    :goto_1
    iput v11, p0, Lcom/android/settings/display/FontSizeSettings;->mSelectedOrder:I

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/display/FontSizeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 53
    .local v7, resources:Landroid/content/res/Resources;
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/lit16 v11, v11, 0xf0

    int-to-float v2, v11

    .line 54
    .local v2, densityFactor:F
    const v11, 0x7f080058

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 55
    .local v10, title:[Ljava/lang/String;
    const v11, 0x7f08005a

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v9

    .line 56
    .local v9, rowHeight:[I
    const v11, 0x7f08005b

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    .line 59
    .local v6, previewSize:[I
    invoke-virtual {p0}, Lcom/android/settings/display/FontSizeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 60
    .local v8, root:Landroid/preference/PreferenceGroup;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    array-length v11, v10

    if-ge v3, v11, :cond_3

    .line 61
    new-instance v5, Lcom/android/settings/FontSizePreference;

    invoke-direct {v5, p0}, Lcom/android/settings/FontSizePreference;-><init>(Landroid/content/Context;)V

    .line 62
    .local v5, preference:Lcom/android/settings/FontSizePreference;
    invoke-virtual {v5, v3}, Lcom/android/settings/FontSizePreference;->setOrder(I)V

    .line 63
    aget-object v11, v10, v3

    invoke-virtual {v5, v11}, Lcom/android/settings/FontSizePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 64
    const v11, 0x7f0c07ed

    invoke-virtual {v5, v11}, Lcom/android/settings/FontSizePreference;->setSummary(I)V

    .line 65
    aget v11, v9, v3

    int-to-float v11, v11

    mul-float/2addr v11, v2

    float-to-int v11, v11

    aget v13, v6, v3

    int-to-float v13, v13

    mul-float/2addr v13, v2

    float-to-int v13, v13

    invoke-virtual {v5, v11, v13}, Lcom/android/settings/FontSizePreference;->setSize(II)V

    .line 68
    invoke-virtual {v5, p0}, Lcom/android/settings/FontSizePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 69
    iget v11, p0, Lcom/android/settings/display/FontSizeSettings;->mSelectedOrder:I

    if-ne v3, v11, :cond_2

    move v11, v12

    :goto_3
    invoke-virtual {v5, v11}, Lcom/android/settings/FontSizePreference;->setChecked(Z)V

    .line 71
    iget-object v11, p0, Lcom/android/settings/display/FontSizeSettings;->mUiModes:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-virtual {v8, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 60
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v2           #densityFactor:F
    .end local v3           #i:I
    .end local v5           #preference:Lcom/android/settings/FontSizePreference;
    .end local v6           #previewSize:[I
    .end local v7           #resources:Landroid/content/res/Resources;
    .end local v8           #root:Landroid/preference/PreferenceGroup;
    .end local v9           #rowHeight:[I
    .end local v10           #title:[Ljava/lang/String;
    :cond_1
    move v11, v12

    .line 49
    goto :goto_1

    .line 69
    .restart local v2       #densityFactor:F
    .restart local v3       #i:I
    .restart local v5       #preference:Lcom/android/settings/FontSizePreference;
    .restart local v6       #previewSize:[I
    .restart local v7       #resources:Landroid/content/res/Resources;
    .restart local v8       #root:Landroid/preference/PreferenceGroup;
    .restart local v9       #rowHeight:[I
    .restart local v10       #title:[Ljava/lang/String;
    :cond_2
    const/4 v11, 0x0

    goto :goto_3

    .line 74
    .end local v5           #preference:Lcom/android/settings/FontSizePreference;
    :cond_3
    return-void

    .line 47
    .end local v2           #densityFactor:F
    .end local v3           #i:I
    .end local v6           #previewSize:[I
    .end local v7           #resources:Landroid/content/res/Resources;
    .end local v8           #root:Landroid/preference/PreferenceGroup;
    .end local v9           #rowHeight:[I
    .end local v10           #title:[Ljava/lang/String;
    :catch_0
    move-exception v11

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v5, 0x0

    .line 79
    :try_start_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getOrder()I

    move-result v1

    .line 80
    .local v1, order:I
    iget v4, p0, Lcom/android/settings/display/FontSizeSettings;->mSelectedOrder:I

    if-eq v1, v4, :cond_0

    .line 81
    iget-object v4, p0, Lcom/android/settings/display/FontSizeSettings;->mUiModes:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/settings/display/FontSizeSettings;->mSelectedOrder:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/FontSizePreference;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/settings/FontSizePreference;->setChecked(Z)V

    .line 82
    iput v1, p0, Lcom/android/settings/display/FontSizeSettings;->mSelectedOrder:I

    .line 84
    sget-object v4, Lcom/android/settings/display/FontSizeSettings;->sUiModeOrder:Landroid/util/SparseArray;

    sget-object v6, Lcom/android/settings/display/FontSizeSettings;->sUiModeOrder:Landroid/util/SparseArray;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 86
    .local v3, uiMode:I
    invoke-virtual {p0}, Lcom/android/settings/display/FontSizeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "ui_mode_scale"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 92
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 93
    .local v0, config:Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/android/settings/display/FontSizeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f080059

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, scale:[Ljava/lang/String;
    aget-object v4, v2, v1

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 95
    iget v4, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0xf

    sparse-switch v4, :sswitch_data_0

    .line 105
    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 107
    const/4 v4, 0x1

    .line 112
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v1           #order:I
    .end local v2           #scale:[Ljava/lang/String;
    .end local v3           #uiMode:I
    :goto_1
    return v4

    .line 102
    .restart local v0       #config:Landroid/content/res/Configuration;
    .restart local v1       #order:I
    .restart local v2       #scale:[Ljava/lang/String;
    .restart local v3       #uiMode:I
    :sswitch_0
    iget v4, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, -0x10

    or-int/2addr v4, v3

    iput v4, v0, Landroid/content/res/Configuration;->uiMode:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v1           #order:I
    .end local v2           #scale:[Ljava/lang/String;
    .end local v3           #uiMode:I
    :catch_0
    move-exception v4

    :cond_0
    move v4, v5

    .line 112
    goto :goto_1

    .line 95
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_0
    .end sparse-switch
.end method
