.class Lcom/android/settings/wifi/MiuiWifiDetailFragment$1$2;
.super Ljava/lang/Object;
.source "MiuiWifiDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/MiuiWifiDetailFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wifi/MiuiWifiDetailFragment$1;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment$1;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$1$2;->this$1:Lcom/android/settings/wifi/MiuiWifiDetailFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$1$2;->this$1:Lcom/android/settings/wifi/MiuiWifiDetailFragment$1;

    iget-object v0, v0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$1;->this$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    invoke-virtual {v0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 79
    return-void
.end method
