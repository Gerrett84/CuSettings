.class Lcom/android/settings/deviceinfo/MsdInstallPicker$2;
.super Ljava/lang/Object;
.source "MsdInstallPicker.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/MsdInstallPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/MsdInstallPicker;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/MsdInstallPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MsdInstallPicker$2;->this$0:Lcom/android/settings/deviceinfo/MsdInstallPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 43
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 44
    invoke-virtual {p1, v1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 43
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 46
    :cond_0
    check-cast p2, Landroid/widget/RadioButton;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 47
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MsdInstallPicker$2;->this$0:Lcom/android/settings/deviceinfo/MsdInstallPicker;

    const-class v3, Lcom/android/settings/deviceinfo/MsdInstallActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    const-string v1, "install_system"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 49
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MsdInstallPicker$2;->this$0:Lcom/android/settings/deviceinfo/MsdInstallPicker;

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/deviceinfo/MsdInstallPicker;->startActivityForResult(Landroid/content/Intent;I)V

    .line 50
    return-void
.end method
