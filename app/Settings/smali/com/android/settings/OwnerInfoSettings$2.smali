.class Lcom/android/settings/OwnerInfoSettings$2;
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
    .line 67
    iput-object p1, p0, Lcom/android/settings/OwnerInfoSettings$2;->this$0:Lcom/android/settings/OwnerInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings$2;->this$0:Lcom/android/settings/OwnerInfoSettings;

    invoke-virtual {v0}, Lcom/android/settings/OwnerInfoSettings;->saveToDb()V

    .line 71
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings$2;->this$0:Lcom/android/settings/OwnerInfoSettings;

    invoke-virtual {v0}, Lcom/android/settings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 72
    return-void
.end method
