.class public Lcom/android/settings/deviceinfo/MsdInstallPicker;
.super Landroid/app/Activity;
.source "MsdInstallPicker.java"


# instance fields
.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    new-instance v0, Lcom/android/settings/deviceinfo/MsdInstallPicker$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/MsdInstallPicker$2;-><init>(Lcom/android/settings/deviceinfo/MsdInstallPicker;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallPicker;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 62
    const/4 v0, 0x0

    const/high16 v1, 0x7f05

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/deviceinfo/MsdInstallPicker;->overridePendingTransition(II)V

    .line 63
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 54
    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MsdInstallPicker;->finish()V

    .line 57
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v3, 0x7f040059

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/MsdInstallPicker;->setContentView(I)V

    .line 25
    const v3, 0x7f09000e

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/MsdInstallPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 26
    .local v2, listView:Landroid/widget/ListView;
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v3, 0x7f04005a

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MsdInstallPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080065

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 28
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 29
    iget-object v3, p0, Lcom/android/settings/deviceinfo/MsdInstallPicker;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 31
    const v3, 0x7f0900d7

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/MsdInstallPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 32
    .local v1, cancelBtn:Landroid/widget/Button;
    new-instance v3, Lcom/android/settings/deviceinfo/MsdInstallPicker$1;

    invoke-direct {v3, p0}, Lcom/android/settings/deviceinfo/MsdInstallPicker$1;-><init>(Lcom/android/settings/deviceinfo/MsdInstallPicker;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    return-void
.end method
