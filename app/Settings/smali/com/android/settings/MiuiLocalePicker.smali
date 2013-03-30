.class public Lcom/android/settings/MiuiLocalePicker;
.super Lcom/android/settings/LocalePicker;
.source "MiuiLocalePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/MiuiLocalePicker$LanguageAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedLanguage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/settings/LocalePicker;-><init>()V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MiuiLocalePicker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/settings/MiuiLocalePicker;->mSelectedLanguage:Ljava/lang/String;

    return-object v0
.end method

.method private constructLanguageAdapter(Landroid/widget/ArrayAdapter;)Landroid/widget/ArrayAdapter;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;)",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v5, localList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 64
    invoke-virtual {p1, v6}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 66
    :cond_0
    new-instance p1, Lcom/android/settings/MiuiLocalePicker$LanguageAdapter;

    .end local p1           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    invoke-virtual {p0}, Lcom/android/settings/MiuiLocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f040048

    const v4, 0x7f0900b4

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/MiuiLocalePicker$LanguageAdapter;-><init>(Lcom/android/settings/MiuiLocalePicker;Landroid/content/Context;IILjava/util/List;)V

    .line 67
    .restart local p1       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    return-object p1
.end method

.method private restoreSelectedLanguage()V
    .locals 5

    .prologue
    .line 41
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 42
    .local v0, am:Landroid/app/IActivityManager;
    iget-object v3, p0, Lcom/android/settings/MiuiLocalePicker;->mAdapter:Landroid/widget/ArrayAdapter;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual {v3}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, language:Ljava/lang/String;
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 45
    .local v1, config:Landroid/content/res/Configuration;
    iget-object v3, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 48
    .end local v1           #config:Landroid/content/res/Configuration;
    :goto_0
    iput-object v2, p0, Lcom/android/settings/MiuiLocalePicker;->mSelectedLanguage:Ljava/lang/String;

    .line 49
    return-void

    .line 46
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 30
    invoke-super {p0, p1}, Lcom/android/settings/LocalePicker;->onActivityCreated(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/android/settings/MiuiLocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/MiuiLocalePicker;->constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/MiuiLocalePicker;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 32
    iget-object v1, p0, Lcom/android/settings/MiuiLocalePicker;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-direct {p0, v1}, Lcom/android/settings/MiuiLocalePicker;->constructLanguageAdapter(Landroid/widget/ArrayAdapter;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/MiuiLocalePicker;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 33
    invoke-virtual {p0}, Lcom/android/settings/MiuiLocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x60a0039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 35
    .local v0, paddingTop:I
    invoke-virtual {p0}, Lcom/android/settings/MiuiLocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 36
    invoke-direct {p0}, Lcom/android/settings/MiuiLocalePicker;->restoreSelectedLanguage()V

    .line 37
    iget-object v1, p0, Lcom/android/settings/MiuiLocalePicker;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiLocalePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 38
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 53
    invoke-super/range {p0 .. p5}, Lcom/android/settings/LocalePicker;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 54
    iget-object v1, p0, Lcom/android/settings/MiuiLocalePicker;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, selectedLanguage:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/MiuiLocalePicker;->mSelectedLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    iput-object v0, p0, Lcom/android/settings/MiuiLocalePicker;->mSelectedLanguage:Ljava/lang/String;

    .line 57
    iget-object v1, p0, Lcom/android/settings/MiuiLocalePicker;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 59
    :cond_0
    return-void
.end method
