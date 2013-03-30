.class public Lcom/android/settings/ConfirmSmsLockPattern;
.super Lcom/android/settings/ConfirmLockPattern;
.source "ConfirmSmsLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;
    }
.end annotation


# instance fields
.field private mFragment:Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPattern;-><init>()V

    .line 56
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 38
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/ConfirmLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 39
    const-string v1, ":android:show_fragment"

    const-class v2, Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 41
    return-object v0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 46
    check-cast p1, Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;

    .end local p1
    iput-object p1, p0, Lcom/android/settings/ConfirmSmsLockPattern;->mFragment:Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;

    .line 47
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/android/settings/ConfirmLockPattern;->onNewIntent(Landroid/content/Intent;)V

    .line 52
    iget-object v0, p0, Lcom/android/settings/ConfirmSmsLockPattern;->mFragment:Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;

    invoke-virtual {v0, p1}, Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;->parseIntent(Landroid/content/Intent;)V

    .line 53
    iget-object v0, p0, Lcom/android/settings/ConfirmSmsLockPattern;->mFragment:Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;

    sget-object v1, Lcom/android/settings/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/ConfirmLockPattern$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;->updateStage(Lcom/android/settings/ConfirmLockPattern$Stage;)V

    .line 54
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/android/settings/ConfirmLockPattern;->onStop()V

    .line 30
    invoke-virtual {p0}, Lcom/android/settings/ConfirmSmsLockPattern;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/android/settings/ConfirmSmsLockPattern;->setResult(I)V

    .line 32
    invoke-virtual {p0}, Lcom/android/settings/ConfirmSmsLockPattern;->finish()V

    .line 34
    :cond_0
    return-void
.end method
