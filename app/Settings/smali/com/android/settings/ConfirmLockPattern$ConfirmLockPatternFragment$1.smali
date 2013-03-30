.class Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$1;
.super Ljava/lang/Object;
.source "ConfirmLockPattern.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$1;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    iput-object p2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 159
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$1;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getAccountUnlockTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$1;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v2}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getDisableKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$1;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget-object v3, v3, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lmiui/security/MiuiLockPatternUtils;

    iget-object v4, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$1;->val$activity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$1;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v5}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getIntentOnSuccess()Landroid/content/Intent;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lmiui/app/AccountUnlockDialog;->create(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Lmiui/security/MiuiLockPatternUtils;Landroid/app/Activity;Landroid/content/Intent;)Lmiui/app/AccountUnlockDialog;

    move-result-object v6

    .line 165
    .local v6, dialog:Lmiui/app/AccountUnlockDialog;
    invoke-virtual {v6}, Lmiui/app/AccountUnlockDialog;->show()V

    .line 166
    return-void
.end method
