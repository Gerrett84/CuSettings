.class Lcom/android/settings/AccessControlSetApp$1;
.super Ljava/lang/Object;
.source "AccessControlSetApp.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AccessControlSetApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;

.field final synthetic this$0:Lcom/android/settings/AccessControlSetApp;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessControlSetApp;)V
    .locals 1
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/settings/AccessControlSetApp$1;->this$0:Lcom/android/settings/AccessControlSetApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AccessControlSetApp$1;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)I
    .locals 3
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/AccessControlSetApp$1;->sCollator:Ljava/text/Collator;

    iget-object v1, p0, Lcom/android/settings/AccessControlSetApp$1;->this$0:Lcom/android/settings/AccessControlSetApp;

    #getter for: Lcom/android/settings/AccessControlSetApp;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lcom/android/settings/AccessControlSetApp;->access$000(Lcom/android/settings/AccessControlSetApp;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/AccessControlSetApp$1;->this$0:Lcom/android/settings/AccessControlSetApp;

    #getter for: Lcom/android/settings/AccessControlSetApp;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/settings/AccessControlSetApp;->access$000(Lcom/android/settings/AccessControlSetApp;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    check-cast p1, Landroid/content/pm/ApplicationInfo;

    .end local p1
    check-cast p2, Landroid/content/pm/ApplicationInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/AccessControlSetApp$1;->compare(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)I

    move-result v0

    return v0
.end method
