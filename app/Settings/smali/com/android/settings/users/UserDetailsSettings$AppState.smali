.class Lcom/android/settings/users/UserDetailsSettings$AppState;
.super Ljava/lang/Object;
.source "UserDetailsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/UserDetailsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppState"
.end annotation


# instance fields
.field enabled:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-boolean p1, p0, Lcom/android/settings/users/UserDetailsSettings$AppState;->enabled:Z

    .line 78
    return-void
.end method
