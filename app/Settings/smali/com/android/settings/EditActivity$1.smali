.class Lcom/android/settings/EditActivity$1;
.super Ljava/lang/Object;
.source "EditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/EditActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/EditActivity;

.field final synthetic val$fragment:Lcom/android/settings/BaseEditFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/EditActivity;Lcom/android/settings/BaseEditFragment;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/settings/EditActivity$1;->this$0:Lcom/android/settings/EditActivity;

    iput-object p2, p0, Lcom/android/settings/EditActivity$1;->val$fragment:Lcom/android/settings/BaseEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/EditActivity$1;->val$fragment:Lcom/android/settings/BaseEditFragment;

    invoke-virtual {v0}, Lcom/android/settings/BaseEditFragment;->onCancel()V

    .line 37
    return-void
.end method
