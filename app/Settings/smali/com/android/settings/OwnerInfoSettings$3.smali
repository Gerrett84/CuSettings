.class Lcom/android/settings/OwnerInfoSettings$3;
.super Ljava/lang/Object;
.source "OwnerInfoSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/OwnerInfoSettings;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/OwnerInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/OwnerInfoSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/settings/OwnerInfoSettings$3;->this$0:Lcom/android/settings/OwnerInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings$3;->this$0:Lcom/android/settings/OwnerInfoSettings;

    #getter for: Lcom/android/settings/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings/OwnerInfoSettings;->access$000(Lcom/android/settings/OwnerInfoSettings;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearComposingText()V

    .line 79
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings$3;->this$0:Lcom/android/settings/OwnerInfoSettings;

    invoke-virtual {v0}, Lcom/android/settings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 80
    return-void
.end method
