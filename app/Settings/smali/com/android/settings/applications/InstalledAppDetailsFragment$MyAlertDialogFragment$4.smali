.class Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$4;
.super Ljava/lang/Object;
.source "InstalledAppDetailsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 718
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$4;->this$0:Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x0

    .line 720
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$4;->this$0:Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getOwner()Lcom/android/settings/applications/InstalledAppDetailsFragment;

    move-result-object v0

    #getter for: Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearData:Lcom/android/settings/applications/ButtonPreference;
    invoke-static {v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->access$1000(Lcom/android/settings/applications/InstalledAppDetailsFragment;)Lcom/android/settings/applications/ButtonPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ButtonPreference;->setEnabled(Z)V

    .line 722
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$4;->this$0:Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getOwner()Lcom/android/settings/applications/InstalledAppDetailsFragment;

    move-result-object v0

    #calls: Lcom/android/settings/applications/InstalledAppDetailsFragment;->setIntentAndFinish(ZZ)V
    invoke-static {v0, v1, v1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->access$900(Lcom/android/settings/applications/InstalledAppDetailsFragment;ZZ)V

    .line 723
    return-void
.end method
