.class public Lcom/android/settings/display/PreferredLauncherSettings;
.super Landroid/app/ListActivity;
.source "PreferredLauncherSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/display/PreferredLauncherSettings;Landroid/content/pm/ResolveInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/settings/display/PreferredLauncherSettings;->setPreferredLauncher(Landroid/content/pm/ResolveInfo;)V

    return-void
.end method

.method static isSame(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z
    .locals 2
    .parameter "ri1"
    .parameter "ri2"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setPreferredLauncher(Landroid/content/pm/ResolveInfo;)V
    .locals 12
    .parameter "ri"

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/android/settings/display/PreferredLauncherSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;

    .line 96
    .local v1, adapter:Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;
    invoke-virtual {p0}, Lcom/android/settings/display/PreferredLauncherSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 99
    .local v6, pm:Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 100
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.MAIN"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string v9, "android.intent.category.HOME"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v1}, Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;->getCount()I

    move-result v0

    .line 104
    .local v0, N:I
    new-array v8, v0, [Landroid/content/ComponentName;

    .line 105
    .local v8, set:[Landroid/content/ComponentName;
    const/4 v2, 0x0

    .line 106
    .local v2, bestMatch:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 107
    invoke-virtual {v1, v4}, Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;->getItem(I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 108
    .local v7, r:Landroid/content/pm/ResolveInfo;
    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v9, v8, v4

    .line 110
    iget v9, v7, Landroid/content/pm/ResolveInfo;->match:I

    if-le v9, v2, :cond_0

    iget v2, v7, Landroid/content/pm/ResolveInfo;->match:I

    .line 106
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 112
    .end local v7           #r:Landroid/content/pm/ResolveInfo;
    :cond_1
    new-instance v9, Landroid/content/ComponentName;

    const-string v10, "com.no.such.packagename"

    const-string v11, "com.no.such.packagename.no.such.class"

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v3, v2, v8, v9}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 114
    const-string v9, "com.no.such.packagename"

    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 116
    if-eqz p1, :cond_2

    .line 117
    const-string v9, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 118
    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v3, v2, v8, v9}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 126
    :goto_1
    invoke-virtual {v1, p1}, Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;->setCurrent(Landroid/content/pm/ResolveInfo;)V

    .line 127
    invoke-virtual {v1}, Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;->notifyDataSetChanged()V

    .line 128
    return-void

    .line 121
    :cond_2
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .local v5, intent:Landroid/content/Intent;
    const-string v9, "android.intent.category.HOME"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const/4 v9, 0x0

    invoke-virtual {v6, v5, v9}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    const/4 v10, 0x0

    .line 37
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/android/settings/display/PreferredLauncherSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 39
    .local v2, list:Landroid/widget/ListView;
    invoke-virtual {v2}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 41
    .local v4, lp:Landroid/view/ViewGroup$LayoutParams;
    instance-of v8, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v8, :cond_1

    move-object v5, v4

    .line 42
    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 46
    .local v5, mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/display/PreferredLauncherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x60a0039

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/display/PreferredLauncherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x60a0038

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 48
    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/display/PreferredLauncherSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 51
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 52
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/display/PreferredLauncherSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 56
    .local v6, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .local v1, intent:Landroid/content/Intent;
    const-string v8, "android.intent.category.HOME"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    invoke-virtual {v6, v1, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 59
    .local v3, lists:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {v6, v1, v10}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 61
    .local v7, ri:Landroid/content/pm/ResolveInfo;
    new-instance v8, Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;

    invoke-direct {v8, p0, v3, v7}, Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/content/pm/ResolveInfo;)V

    invoke-virtual {p0, v8}, Lcom/android/settings/display/PreferredLauncherSettings;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 62
    return-void

    .line 44
    .end local v0           #actionBar:Landroid/app/ActionBar;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #lists:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5           #mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v6           #pm:Landroid/content/pm/PackageManager;
    .end local v7           #ri:Landroid/content/pm/ResolveInfo;
    :cond_1
    new-instance v5, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v5, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .restart local v5       #mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 66
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/display/PreferredLauncherSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;

    .line 69
    .local v0, adapter:Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;
    invoke-virtual {v0, p3}, Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;->getItem(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 70
    .local v1, ri:Landroid/content/pm/ResolveInfo;
    invoke-virtual {v0}, Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;->getCurrent()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/display/PreferredLauncherSettings;->isSame(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-boolean v2, v1, Landroid/content/pm/ResolveInfo;->system:Z

    if-nez v2, :cond_1

    .line 75
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c074a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c074c

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c074d

    new-instance v4, Lcom/android/settings/display/PreferredLauncherSettings$2;

    invoke-direct {v4, p0, v1}, Lcom/android/settings/display/PreferredLauncherSettings$2;-><init>(Lcom/android/settings/display/PreferredLauncherSettings;Landroid/content/pm/ResolveInfo;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c074e

    new-instance v4, Lcom/android/settings/display/PreferredLauncherSettings$1;

    invoke-direct {v4, p0}, Lcom/android/settings/display/PreferredLauncherSettings$1;-><init>(Lcom/android/settings/display/PreferredLauncherSettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 90
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/settings/display/PreferredLauncherSettings;->setPreferredLauncher(Landroid/content/pm/ResolveInfo;)V

    goto :goto_0
.end method
