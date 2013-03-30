.class public Landroid/app/INotificationManagerProxy;
.super Ljava/lang/Object;
.source "INotificationManagerProxy.java"


# instance fields
.field mService:Landroid/app/INotificationManager;


# direct methods
.method public constructor <init>(Landroid/app/INotificationManager;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Landroid/app/INotificationManagerProxy;->mService:Landroid/app/INotificationManager;

    .line 12
    return-void
.end method


# virtual methods
.method public enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[I)V
    .locals 6
    .parameter "pkg"
    .parameter "tag"
    .parameter "id"
    .parameter "notification"
    .parameter "idReceived"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 15
    iget-object v0, p0, Landroid/app/INotificationManagerProxy;->mService:Landroid/app/INotificationManager;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[I)V

    .line 16
    return-void
.end method
