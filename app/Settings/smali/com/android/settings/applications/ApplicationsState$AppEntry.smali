.class public Lcom/android/settings/applications/ApplicationsState$AppEntry;
.super Lcom/android/settings/applications/ApplicationsState$SizeInfo;
.source "ApplicationsState.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppEntry"
.end annotation


# instance fields
.field final apkFile:Ljava/io/File;

.field externalSize:J

.field externalSizeStr:Ljava/lang/String;

.field icon:Landroid/graphics/drawable/Drawable;

.field final id:J

.field info:Landroid/content/pm/ApplicationInfo;

.field internalSize:J

.field internalSizeStr:Ljava/lang/String;

.field label:Ljava/lang/String;

.field mounted:Z

.field normalizedLabel:Ljava/lang/String;

.field py:Ljava/lang/String;

.field size:J

.field sizeLoadStart:J

.field sizeStale:Z

.field sizeStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;J)V
    .locals 2
    .parameter "context"
    .parameter "info"
    .parameter "id"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/settings/applications/ApplicationsState$SizeInfo;-><init>()V

    .line 128
    new-instance v0, Ljava/io/File;

    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    .line 129
    iput-wide p3, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->id:J

    .line 130
    iput-object p2, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    .line 131
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->sizeStale:Z

    .line 133
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->py:Ljava/lang/String;

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ApplicationsState$AppEntry;->ensureLabel(Landroid/content/Context;)V

    .line 135
    return-void
.end method

.method private trim(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 162
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 163
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 164
    .local v1, len:I
    const/4 v0, 0x0

    .line 165
    .local v0, i:I
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 166
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/text/TextUtils;->isGraphic(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 171
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 174
    .end local v0           #i:I
    .end local v1           #len:I
    :goto_1
    return-object v2

    .line 165
    .restart local v0       #i:I
    .restart local v1       #len:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    .end local v0           #i:I
    .end local v1           #len:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method ensureIconLocked(Landroid/content/Context;Landroid/content/pm/PackageManager;)Z
    .locals 5
    .parameter "context"
    .parameter "pm"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const-wide/32 v3, 0x927c0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 179
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    .line 180
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, v1, p2, v3, v4}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 197
    :goto_0
    return v0

    .line 184
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->mounted:Z

    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x602002c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    :cond_1
    move v0, v1

    .line 197
    goto :goto_0

    .line 188
    :cond_2
    iget-boolean v2, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->mounted:Z

    if-nez v2, :cond_1

    .line 191
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 192
    iput-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->mounted:Z

    .line 193
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, v1, p2, v3, v4}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method ensureLabel(Landroid/content/Context;)V
    .locals 6
    .parameter "context"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 139
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->mounted:Z

    if-nez v3, :cond_1

    .line 140
    :cond_0
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 141
    iput-boolean v5, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->mounted:Z

    .line 142
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    .line 149
    :goto_0
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 150
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/settings/applications/ApplicationsState$AppEntry;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, str:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 152
    invoke-static {}, Lmiui/util/HanziToPinyin;->getInstance()Lmiui/util/HanziToPinyin;

    move-result-object v3

    invoke-virtual {v3, v1}, Lmiui/util/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 153
    .local v2, tokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/util/HanziToPinyin$Token;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 154
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/util/HanziToPinyin$Token;

    iget-object v3, v3, Lmiui/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->py:Ljava/lang/String;

    .line 159
    .end local v1           #str:Ljava/lang/String;
    .end local v2           #tokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/util/HanziToPinyin$Token;>;"
    :cond_1
    return-void

    .line 144
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->mounted:Z

    .line 145
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 146
    .local v0, label:Ljava/lang/CharSequence;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    iput-object v3, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_1
.end method

.method getNormalizedLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->normalizedLabel:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->normalizedLabel:Ljava/lang/String;

    .line 112
    :goto_0
    return-object v0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/applications/ApplicationsState;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->normalizedLabel:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->normalizedLabel:Ljava/lang/String;

    goto :goto_0
.end method
