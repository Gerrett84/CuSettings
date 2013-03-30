.class public Lcom/android/settings/AppPickerV5;
.super Lmiui/v5/app/MiuiActivity;
.source "AppPickerV5.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AppPickerV5$AppListAdapter;,
        Lcom/android/settings/AppPickerV5$MyApplicationInfo;
    }
.end annotation


# static fields
.field private static final sDisplayNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/AppPickerV5$MyApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapter:Lcom/android/settings/AppPickerV5$AppListAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 124
    new-instance v0, Lcom/android/settings/AppPickerV5$2;

    invoke-direct {v0}, Lcom/android/settings/AppPickerV5$2;-><init>()V

    sput-object v0, Lcom/android/settings/AppPickerV5;->sDisplayNameComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lmiui/v5/app/MiuiActivity;-><init>()V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AppPickerV5;)Lcom/android/settings/AppPickerV5$AppListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/settings/AppPickerV5;->mAdapter:Lcom/android/settings/AppPickerV5$AppListAdapter;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/settings/AppPickerV5;->sDisplayNameComparator:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 32
    invoke-super {p0, p1}, Lmiui/v5/app/MiuiActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v1, 0x7f04000a

    invoke-virtual {p0, v1}, Lcom/android/settings/AppPickerV5;->setContentView(I)V

    .line 35
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/android/settings/AppPickerV5;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 36
    .local v0, listView:Landroid/widget/ListView;
    new-instance v1, Lcom/android/settings/AppPickerV5$1;

    invoke-direct {v1, p0}, Lcom/android/settings/AppPickerV5$1;-><init>(Lcom/android/settings/AppPickerV5;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 48
    new-instance v1, Lcom/android/settings/AppPickerV5$AppListAdapter;

    invoke-direct {v1, p0, p0}, Lcom/android/settings/AppPickerV5$AppListAdapter;-><init>(Lcom/android/settings/AppPickerV5;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/AppPickerV5;->mAdapter:Lcom/android/settings/AppPickerV5$AppListAdapter;

    .line 49
    iget-object v1, p0, Lcom/android/settings/AppPickerV5;->mAdapter:Lcom/android/settings/AppPickerV5$AppListAdapter;

    invoke-virtual {v1}, Lcom/android/settings/AppPickerV5$AppListAdapter;->getCount()I

    move-result v1

    if-gtz v1, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/AppPickerV5;->finish()V

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/android/settings/AppPickerV5;->mAdapter:Lcom/android/settings/AppPickerV5$AppListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Lmiui/v5/app/MiuiActivity;->onResume()V

    .line 59
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Lmiui/v5/app/MiuiActivity;->onStop()V

    .line 64
    return-void
.end method
