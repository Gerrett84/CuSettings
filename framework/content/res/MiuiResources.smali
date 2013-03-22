.class public final Landroid/content/res/MiuiResources;
.super Landroid/content/res/Resources;
.source "MiuiResources.java"


# static fields
.field public static final MIUI_SCALE:Ljava/lang/String; = "miui_font_scale_switch"

.field private static sConfig:Landroid/content/res/Configuration; = null

.field public static final sCookieTypeFramework:I = 0x1

.field public static final sCookieTypeMiui:I = 0x2

.field public static final sCookieTypeOther:I = 0x3

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
.field private mCharSequences:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mCookieType:Landroid/util/SparseIntArray;

.field private mHasValues:Z

.field private mIntegers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageName:Ljava/lang/String;

.field private mSkipFiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mThemeResources:Lmiui/content/res/ThemeResources;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 27
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/content/res/MiuiResources;->sUiModeOrder:Landroid/util/SparseArray;

    .line 29
    sget-object v0, Landroid/content/res/MiuiResources;->sUiModeOrder:Landroid/util/SparseArray;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    sget-object v0, Landroid/content/res/MiuiResources;->sUiModeOrder:Landroid/util/SparseArray;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    sget-object v0, Landroid/content/res/MiuiResources;->sUiModeOrder:Landroid/util/SparseArray;

    const/16 v1, 0xd

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    sget-object v0, Landroid/content/res/MiuiResources;->sUiModeOrder:Landroid/util/SparseArray;

    const/16 v1, 0xe

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 41
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    sput-object v0, Landroid/content/res/MiuiResources;->sConfig:Landroid/content/res/Configuration;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/content/res/Resources;-><init>()V

    .line 37
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mIntegers:Landroid/util/SparseArray;

    .line 38
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mCharSequences:Landroid/util/SparseArray;

    .line 39
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mSkipFiles:Landroid/util/SparseArray;

    .line 272
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mCookieType:Landroid/util/SparseIntArray;

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/res/MiuiResources;->init(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "assets"
    .parameter "metrics"
    .parameter "config"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 37
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mIntegers:Landroid/util/SparseArray;

    .line 38
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mCharSequences:Landroid/util/SparseArray;

    .line 39
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mSkipFiles:Landroid/util/SparseArray;

    .line 272
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mCookieType:Landroid/util/SparseIntArray;

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/res/MiuiResources;->init(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V
    .locals 1
    .parameter "assets"
    .parameter "metrics"
    .parameter "config"
    .parameter "compInfo"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 37
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mIntegers:Landroid/util/SparseArray;

    .line 38
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mCharSequences:Landroid/util/SparseArray;

    .line 39
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mSkipFiles:Landroid/util/SparseArray;

    .line 272
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mCookieType:Landroid/util/SparseIntArray;

    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/res/MiuiResources;->init(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method private getCookieType(I)I
    .locals 3
    .parameter "cookie"

    .prologue
    .line 275
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mCookieType:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 276
    .local v1, type:I
    if-nez v1, :cond_0

    .line 277
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->getCookieName(I)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, name:Ljava/lang/String;
    const-string v2, "/system/framework/framework-res.apk"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 279
    const/4 v1, 0x1

    .line 287
    :goto_0
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mCookieType:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 290
    .end local v0           #name:Ljava/lang/String;
    :cond_0
    return v1

    .line 281
    .restart local v0       #name:Ljava/lang/String;
    :cond_1
    const-string v2, "/system/framework/framework-miui-res.apk"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 282
    const/4 v1, 0x2

    goto :goto_0

    .line 285
    :cond_2
    const/4 v1, 0x3

    goto :goto_0
.end method

.method private updateMiuiFontScale()V
    .locals 6

    .prologue
    .line 173
    const-string/jumbo v3, "miui_font_scale_switch"

    const-string v4, "bool"

    iget-object v5, p0, Landroid/content/res/MiuiResources;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v3, v4, v5}, Landroid/content/res/MiuiResources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 174
    .local v2, miuiScaleId:I
    if-eqz v2, :cond_0

    .line 175
    const/4 v1, 0x0

    .line 177
    .local v1, miuiScale:Z
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/content/res/MiuiResources;->getBoolean(I)Z

    move-result v1

    .line 178
    if-eqz v1, :cond_0

    .line 179
    const v3, 0x606000b

    invoke-virtual {p0, v3}, Landroid/content/res/MiuiResources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, miuiFontScales:[Ljava/lang/String;
    sget-object v3, Landroid/content/res/MiuiResources;->sUiModeOrder:Landroid/util/SparseArray;

    sget-object v4, Landroid/content/res/MiuiResources;->sConfig:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    sput v3, Landroid/util/TypedValue;->miui_font_scale:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .end local v0           #miuiFontScales:[Ljava/lang/String;
    .end local v1           #miuiScale:Z
    :cond_0
    :goto_0
    return-void

    .line 183
    .restart local v1       #miuiScale:Z
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public getText(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResources;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 62
    .local v0, cs:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 65
    .end local v0           #cs:Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .restart local v0       #cs:Ljava/lang/CharSequence;
    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "id"
    .parameter "def"

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResources;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 71
    .local v0, cs:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 74
    .end local v0           #cs:Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .restart local v0       #cs:Ljava/lang/CharSequence;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method getThemeCharSequence(I)Ljava/lang/CharSequence;
    .locals 3
    .parameter "id"

    .prologue
    .line 253
    iget-boolean v2, p0, Landroid/content/res/MiuiResources;->mHasValues:Z

    if-nez v2, :cond_0

    .line 254
    const/4 v1, 0x0

    .line 265
    :goto_0
    return-object v1

    .line 257
    :cond_0
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 258
    .local v0, index:I
    if-ltz v0, :cond_1

    .line 259
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .local v1, value:Ljava/lang/CharSequence;
    goto :goto_0

    .line 262
    .end local v1           #value:Ljava/lang/CharSequence;
    :cond_1
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    invoke-virtual {v2, p1}, Lmiui/content/res/ThemeResources;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 263
    .restart local v1       #value:Ljava/lang/CharSequence;
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method getThemeInt(I)Ljava/lang/Integer;
    .locals 3
    .parameter "id"

    .prologue
    .line 237
    iget-boolean v2, p0, Landroid/content/res/MiuiResources;->mHasValues:Z

    if-nez v2, :cond_0

    .line 238
    const/4 v1, 0x0

    .line 249
    :goto_0
    return-object v1

    .line 241
    :cond_0
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 242
    .local v0, index:I
    if-ltz v0, :cond_1

    .line 243
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .local v1, value:Ljava/lang/Integer;
    goto :goto_0

    .line 246
    .end local v1           #value:Ljava/lang/Integer;
    :cond_1
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    invoke-virtual {v2, p1}, Lmiui/content/res/ThemeResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v1

    .line 247
    .restart local v1       #value:Ljava/lang/Integer;
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public getValue(ILandroid/util/TypedValue;Z)V
    .locals 3
    .parameter "id"
    .parameter "outValue"
    .parameter "resolveRefs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 80
    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-le v1, v2, :cond_1

    :cond_0
    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 82
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 83
    .local v0, themeInteger:Ljava/lang/Integer;
    if-eqz v0, :cond_2

    .line 84
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p2, Landroid/util/TypedValue;->data:I

    .line 87
    .end local v0           #themeInteger:Ljava/lang/Integer;
    :cond_2
    return-void
.end method

.method public init(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 197
    iput-object p1, p0, Landroid/content/res/MiuiResources;->mPackageName:Ljava/lang/String;

    .line 198
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "miui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    :cond_0
    invoke-static {p0}, Lmiui/content/res/ThemeResources;->getSystem(Landroid/content/res/Resources;)Lmiui/content/res/ThemeResources;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    .line 207
    :goto_0
    iget-object v0, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0}, Lmiui/content/res/ThemeResources;->hasValues()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/res/MiuiResources;->mHasValues:Z

    .line 208
    invoke-direct {p0}, Landroid/content/res/MiuiResources;->updateMiuiFontScale()V

    .line 209
    return-void

    .line 204
    :cond_1
    invoke-static {p0, p1}, Lmiui/content/res/ThemeResourcesPackage;->getThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Lmiui/content/res/ThemeResourcesPackage;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    .line 205
    invoke-static {p0}, Lmiui/content/res/ThemeResources;->getSystem(Landroid/content/res/Resources;)Lmiui/content/res/ThemeResources;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/MiuiResources;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/content/res/ThemeResources;->enableFilter(Ljava/lang/String;)V

    goto :goto_0
.end method

.method loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "value"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 190
    .local v0, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setId(I)V

    .line 193
    :cond_0
    return-object v0
.end method

.method loadOverlayDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "value"
    .parameter "id"

    .prologue
    .line 108
    iget-object v6, p0, Landroid/content/res/MiuiResources;->mSkipFiles:Landroid/util/SparseArray;

    invoke-virtual {v6, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 109
    const/4 v0, 0x0

    .line 138
    :goto_0
    return-object v0

    .line 111
    :cond_0
    const/4 v0, 0x0

    .line 112
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    iget-object v6, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, file:Ljava/lang/String;
    iget-object v6, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    iget v7, p1, Landroid/util/TypedValue;->assetCookie:I

    invoke-direct {p0, v7}, Landroid/content/res/MiuiResources;->getCookieType(I)I

    move-result v7

    invoke-virtual {v6, v7, v1}, Lmiui/content/res/ThemeResources;->getThemeFileStream(ILjava/lang/String;)Lmiui/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v2

    .line 115
    .local v2, info:Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    if-eqz v2, :cond_3

    .line 117
    const/4 v4, 0x0

    .line 118
    .local v4, opts:Landroid/graphics/BitmapFactory$Options;
    :try_start_0
    iget v6, v2, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mDensity:I

    if-lez v6, :cond_1

    iget v6, p1, Landroid/util/TypedValue;->density:I

    const v7, 0xffff

    if-eq v6, v7, :cond_1

    .line 119
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 120
    .end local v4           #opts:Landroid/graphics/BitmapFactory$Options;
    .local v5, opts:Landroid/graphics/BitmapFactory$Options;
    :try_start_1
    iget v6, v2, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mDensity:I

    iput v6, v5, Landroid/graphics/BitmapFactory$Options;->inDensity:I
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    move-object v4, v5

    .line 123
    .end local v5           #opts:Landroid/graphics/BitmapFactory$Options;
    .restart local v4       #opts:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :try_start_2
    iget-object v3, v2, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    .line 124
    .local v3, is:Ljava/io/InputStream;
    const-string v6, ".9.png"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 125
    invoke-static {v3}, Landroid/content/res/SimulateNinePngUtil;->convertIntoNinePngStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v3

    .line 127
    :cond_2
    invoke-static {p0, p1, v3, v1, v4}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 131
    .end local v3           #is:Ljava/io/InputStream;
    :goto_1
    :try_start_3
    iget-object v6, v2, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 132
    :catch_0
    move-exception v6

    goto :goto_0

    .line 136
    .end local v4           #opts:Landroid/graphics/BitmapFactory$Options;
    :cond_3
    iget-object v6, p0, Landroid/content/res/MiuiResources;->mSkipFiles:Landroid/util/SparseArray;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, p2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 128
    .restart local v4       #opts:Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v6

    goto :goto_1

    .end local v4           #opts:Landroid/graphics/BitmapFactory$Options;
    .restart local v5       #opts:Landroid/graphics/BitmapFactory$Options;
    :catch_2
    move-exception v6

    move-object v4, v5

    .end local v5           #opts:Landroid/graphics/BitmapFactory$Options;
    .restart local v4       #opts:Landroid/graphics/BitmapFactory$Options;
    goto :goto_1
.end method

.method loadOverlayTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;
    .locals 7
    .parameter "array"

    .prologue
    .line 216
    iget-object v5, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Landroid/content/res/MiuiResources;->mHasValues:Z

    if-nez v5, :cond_1

    .line 233
    :cond_0
    return-object p1

    .line 219
    :cond_1
    iget-object v0, p1, Landroid/content/res/TypedArray;->mData:[I

    .line 220
    .local v0, data:[I
    const/4 v2, 0x0

    .line 221
    .local v2, index:I
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_0

    .line 222
    add-int/lit8 v5, v2, 0x0

    aget v4, v0, v5

    .line 223
    .local v4, type:I
    add-int/lit8 v5, v2, 0x3

    aget v1, v0, v5

    .line 224
    .local v1, id:I
    const/16 v5, 0x10

    if-lt v4, v5, :cond_2

    const/16 v5, 0x1f

    if-le v4, v5, :cond_3

    :cond_2
    const/4 v5, 0x5

    if-ne v4, v5, :cond_4

    .line 226
    :cond_3
    invoke-virtual {p0, v1}, Landroid/content/res/MiuiResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v3

    .line 227
    .local v3, themeInteger:Ljava/lang/Integer;
    if-eqz v3, :cond_4

    .line 228
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v0, v5

    .line 231
    .end local v3           #themeInteger:Ljava/lang/Integer;
    :cond_4
    add-int/lit8 v2, v2, 0x6

    .line 232
    goto :goto_0
.end method

.method public openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 5
    .parameter "id"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 91
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mSkipFiles:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 92
    invoke-virtual {p0, p1, p2, v4}, Landroid/content/res/MiuiResources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 93
    iget-object v2, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, file:Ljava/lang/String;
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    iget v3, p2, Landroid/util/TypedValue;->assetCookie:I

    invoke-direct {p0, v3}, Landroid/content/res/MiuiResources;->getCookieType(I)I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lmiui/content/res/ThemeResources;->getThemeFileStream(ILjava/lang/String;)Lmiui/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v1

    .line 96
    .local v1, info:Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    if-eqz v1, :cond_0

    .line 97
    iget-object v2, v1, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    .line 103
    .end local v0           #file:Ljava/lang/String;
    .end local v1           #info:Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    :goto_0
    return-object v2

    .line 100
    .restart local v0       #file:Ljava/lang/String;
    .restart local v1       #info:Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    :cond_0
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mSkipFiles:Landroid/util/SparseArray;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 103
    .end local v0           #file:Ljava/lang/String;
    .end local v1           #info:Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v2

    goto :goto_0
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 3
    .parameter "config"
    .parameter "metrics"
    .parameter "compat"

    .prologue
    .line 144
    invoke-virtual {p0}, Landroid/content/res/MiuiResources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 145
    .local v1, currentConfig:Landroid/content/res/Configuration;
    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    .line 147
    .local v0, configChanges:I
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 149
    if-eqz p1, :cond_0

    sget-object v2, Landroid/content/res/MiuiResources;->sConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    const/high16 v2, 0x3f80

    sput v2, Landroid/util/TypedValue;->miui_font_scale:F

    .line 151
    sget-object v2, Landroid/content/res/MiuiResources;->sConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 154
    :cond_0
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    if-eqz v2, :cond_3

    and-int/lit16 v2, v0, 0x200

    if-nez v2, :cond_1

    invoke-static {v0}, Lmiui/content/res/ExtraConfiguration;->needNewResources(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 157
    :cond_1
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/content/res/ThemeResourcesSystem;->checkUpdate()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 158
    invoke-static {}, Landroid/content/res/Resources;->clearPreloadedCache()V

    .line 161
    :cond_2
    invoke-static {}, Lmiui/content/res/IconCustomizer;->clearCache()V

    .line 162
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 163
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 164
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mSkipFiles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 166
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    invoke-virtual {v2}, Lmiui/content/res/ThemeResources;->checkUpdate()Z

    .line 167
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    invoke-virtual {v2}, Lmiui/content/res/ThemeResources;->hasValues()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/res/MiuiResources;->mHasValues:Z

    .line 169
    :cond_3
    invoke-direct {p0}, Landroid/content/res/MiuiResources;->updateMiuiFontScale()V

    .line 170
    return-void

    .line 145
    .end local v0           #configChanges:I
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
