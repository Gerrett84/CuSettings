.class public abstract Lcom/android/settings/BaseEditFragment;
.super Landroid/app/Fragment;
.source "BaseEditFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract onCancel()V
.end method

.method public abstract onSave()V
.end method
