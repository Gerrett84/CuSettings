.class public Landroid/app/MiuiThemeHelper;
.super Ljava/lang/Object;
.source "MiuiThemeHelper.java"


# static fields
.field public static final MIUI_RES_PATH:Ljava/lang/String; = "/system/framework/framework-miui-res.apk"

.field private static final MIUI_SCREENSHOT_MODE_RES_PATH:Ljava/lang/String; = "/data/system/themeScreenshotMode"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static addExtraAssetPaths(Landroid/content/res/AssetManager;)V
    .locals 1
    .parameter "am"

    .prologue
    .line 74
    const-string v0, "/system/framework/framework-miui-res.apk"

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 75
    return-void
.end method

.method public static copyExtraConfigurations(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "srcConfig"
    .parameter "desConfig"

    .prologue
    .line 78
    iget-object v0, p1, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    iget-object v1, p0, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    iget v1, v1, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    iput v1, v0, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    .line 79
    return-void
.end method

.method public static getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageItemInfo;Z)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "pm"
    .parameter "packageName"
    .parameter "resid"
    .parameter "appInfo"
    .parameter "info"
    .parameter "customized"

    .prologue
    .line 67
    if-eqz p5, :cond_0

    if-nez p4, :cond_1

    .line 68
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p4, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/MiuiThemeHelper;->getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "pm"
    .parameter "packageName"
    .parameter "resid"
    .parameter "appInfo"
    .parameter "activityName"

    .prologue
    const/4 v4, 0x0

    .line 48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-object v4

    .line 50
    :cond_1
    const/4 v1, 0x0

    .line 52
    .local v1, apm:Landroid/app/ApplicationPackageManager;
    :try_start_0
    move-object v0, p0

    check-cast v0, Landroid/app/ApplicationPackageManager;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    invoke-static {p1, p4}, Lmiui/content/res/IconCustomizer;->getCustomizedIconFromCache(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    .line 58
    .local v2, dr:Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_2

    .line 59
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 60
    invoke-virtual {v1}, Landroid/app/ApplicationPackageManager;->getContext()Landroid/app/ContextImpl;

    move-result-object v4

    invoke-static {v4, p1, p4, v2}, Lmiui/content/res/IconCustomizer;->getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    :cond_2
    move-object v4, v2

    .line 62
    goto :goto_0

    .line 53
    .end local v2           #dr:Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v3

    .line 54
    .local v3, e:Ljava/lang/ClassCastException;
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0
.end method

.method public static handleExtraConfigurationChanges(I)V
    .locals 1
    .parameter "changes"

    .prologue
    .line 82
    const/high16 v0, -0x8000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    .line 83
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 84
    invoke-static {}, Lmiui/content/res/IconCustomizer;->clearCache()V

    .line 86
    :cond_0
    return-void
.end method

.method public static handleExtraConfigurationChanges(ILandroid/content/res/Configuration;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .parameter "changes"
    .parameter "config"
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 90
    const/high16 v2, -0x8000

    and-int/2addr v2, p0

    if-eqz v2, :cond_0

    .line 91
    iget-object v2, p1, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    iget-wide v0, v2, Lmiui/content/res/ExtraConfiguration;->themeChangedFlags:J

    .line 92
    .local v0, flag:J
    invoke-static {v0, v1}, Lmiui/content/res/ExtraConfiguration;->addNeedRestartActivity(J)V

    .line 93
    invoke-static {p0}, Landroid/app/MiuiThemeHelper;->handleExtraConfigurationChanges(I)V

    .line 95
    .end local v0           #flag:J
    :cond_0
    return-void
.end method

.method public static isCompatibilityMode(I)Z
    .locals 1
    .parameter "appFlags"

    .prologue
    .line 186
    const/high16 v0, 0x800

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCustomizedIcon(Landroid/content/IntentFilter;)Z
    .locals 3
    .parameter "filter"

    .prologue
    .line 36
    if-eqz p0, :cond_1

    .line 37
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countCategories()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 38
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    const/4 v1, 0x1

    .line 43
    .end local v0           #i:I
    :goto_1
    return v1

    .line 37
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 43
    .end local v0           #i:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isScreenshotMode()Z
    .locals 2

    .prologue
    .line 191
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/themeScreenshotMode"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static needRestartActivity(Ljava/lang/String;ILandroid/content/res/Configuration;)Z
    .locals 2
    .parameter "packageName"
    .parameter "changes"
    .parameter "config"

    .prologue
    .line 98
    const/high16 v0, -0x8000

    if-ne p1, v0, :cond_0

    .line 99
    invoke-static {p0}, Lmiui/content/res/ExtraConfiguration;->removeNeedRestartActivity(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    iget-wide v0, v0, Lmiui/content/res/ExtraConfiguration;->themeChangedFlags:J

    invoke-static {p0, v0, v1}, Lmiui/content/res/ExtraConfiguration;->needRestartActivity(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    const/4 v0, 0x1

    .line 104
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDimension(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 15
    .parameter "value"

    .prologue
    .line 108
    const/4 v8, -0x4

    .line 109
    .local v8, intPos:I
    const/4 v2, -0x3

    .line 110
    .local v2, dotPos:I
    const/4 v6, -0x2

    .line 111
    .local v6, fractionPos:I
    const/4 v11, -0x1

    .line 112
    .local v11, unitPos:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v7, v13, :cond_3

    .line 113
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 114
    .local v0, c:C
    const/4 v13, -0x4

    if-ne v8, v13, :cond_0

    const/16 v13, 0x30

    if-lt v0, v13, :cond_0

    const/16 v13, 0x39

    if-gt v0, v13, :cond_0

    .line 115
    move v8, v7

    .line 117
    :cond_0
    const/4 v13, -0x3

    if-ne v2, v13, :cond_1

    const/16 v13, 0x2e

    if-ne v0, v13, :cond_1

    .line 118
    move v2, v7

    .line 120
    :cond_1
    const/4 v13, -0x3

    if-eq v2, v13, :cond_2

    const/16 v13, 0x30

    if-lt v0, v13, :cond_2

    const/16 v13, 0x39

    if-gt v0, v13, :cond_2

    .line 121
    move v6, v7

    .line 123
    :cond_2
    const/4 v13, -0x1

    if-ne v11, v13, :cond_6

    const/16 v13, 0x61

    if-lt v0, v13, :cond_6

    const/16 v13, 0x7a

    if-gt v0, v13, :cond_6

    .line 124
    move v11, v7

    .line 128
    .end local v0           #c:C
    :cond_3
    const/4 v4, 0x0

    .line 129
    .local v4, f:F
    const/4 v5, 0x0

    .line 130
    .local v5, fraction:I
    const/4 v12, 0x0

    .line 131
    .local v12, unitType:I
    const/4 v9, 0x0

    .line 133
    .local v9, mantissaShift:I
    const/4 v13, -0x1

    if-eq v11, v13, :cond_11

    if-ge v2, v6, :cond_11

    if-ge v6, v11, :cond_11

    .line 135
    const/4 v13, 0x0

    :try_start_0
    invoke-virtual {p0, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 139
    const/4 v13, -0x3

    if-eq v2, v13, :cond_4

    const/4 v13, -0x2

    if-eq v6, v13, :cond_4

    .line 141
    :try_start_1
    invoke-virtual {p0, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    .line 146
    :cond_4
    const/16 v13, 0x100

    if-ge v5, v13, :cond_7

    .line 147
    const/high16 v13, 0x4380

    mul-float/2addr v4, v13

    .line 158
    :cond_5
    :goto_1
    invoke-virtual {p0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 159
    .local v10, unit:Ljava/lang/String;
    const-string/jumbo v13, "px"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 160
    const/4 v12, 0x0

    .line 175
    :goto_2
    float-to-int v13, v4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 176
    .local v1, complex:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    and-int/lit16 v13, v13, -0x100

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 177
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    shl-int/lit8 v14, v9, 0x4

    or-int/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 178
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    or-int/2addr v13, v12

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 182
    .end local v1           #complex:Ljava/lang/Integer;
    .end local v10           #unit:Ljava/lang/String;
    :goto_3
    return-object v1

    .line 112
    .end local v4           #f:F
    .end local v5           #fraction:I
    .end local v9           #mantissaShift:I
    .end local v12           #unitType:I
    .restart local v0       #c:C
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 136
    .end local v0           #c:C
    .restart local v4       #f:F
    .restart local v5       #fraction:I
    .restart local v9       #mantissaShift:I
    .restart local v12       #unitType:I
    :catch_0
    move-exception v3

    .line 137
    .local v3, e:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_3

    .line 142
    .end local v3           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v3

    .line 143
    .restart local v3       #e:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_3

    .line 148
    .end local v3           #e:Ljava/lang/NumberFormatException;
    :cond_7
    const v13, 0x8000

    if-ge v5, v13, :cond_8

    .line 149
    const/high16 v13, 0x4700

    mul-float/2addr v4, v13

    .line 150
    const/4 v9, 0x1

    goto :goto_1

    .line 151
    :cond_8
    const/high16 v13, 0x4000

    if-ge v5, v13, :cond_9

    .line 152
    const/high16 v13, 0x4e80

    mul-float/2addr v4, v13

    .line 153
    const/4 v9, 0x2

    goto :goto_1

    .line 154
    :cond_9
    const/high16 v13, 0x20

    if-ge v5, v13, :cond_5

    .line 155
    const/high16 v13, 0x4a00

    mul-float/2addr v4, v13

    .line 156
    const/4 v9, 0x3

    goto :goto_1

    .line 161
    .restart local v10       #unit:Ljava/lang/String;
    :cond_a
    const-string v13, "dp"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    const-string v13, "dip"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 162
    :cond_b
    const/4 v12, 0x1

    goto :goto_2

    .line 163
    :cond_c
    const-string/jumbo v13, "sp"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 164
    const/4 v12, 0x2

    goto :goto_2

    .line 165
    :cond_d
    const-string/jumbo v13, "pt"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 166
    const/4 v12, 0x3

    goto :goto_2

    .line 167
    :cond_e
    const-string v13, "in"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 168
    const/4 v12, 0x4

    goto :goto_2

    .line 169
    :cond_f
    const-string/jumbo v13, "mm"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 170
    const/4 v12, 0x5

    goto/16 :goto_2

    .line 172
    :cond_10
    const/4 v1, 0x0

    goto :goto_3

    .line 180
    .end local v10           #unit:Ljava/lang/String;
    :cond_11
    const/4 v1, 0x0

    goto :goto_3
.end method
