.class Lcom/risedata/cusettings/d;
.super Ljava/lang/Object;
.source "CusettingsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/risedata/cusettings/CusettingsActivity;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Ljava/util/ArrayList;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/risedata/cusettings/CusettingsActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/risedata/cusettings/d;->a:Lcom/risedata/cusettings/CusettingsActivity;

    iput-object p2, p0, Lcom/risedata/cusettings/d;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/risedata/cusettings/d;->c:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/risedata/cusettings/d;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 204
    const-string v1, "mount -o remount,rw /dev/block/mmcblk0p13 /system"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    if-eqz p2, :cond_0

    .line 206
    iget-object v1, p0, Lcom/risedata/cusettings/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 211
    :goto_0
    const-string v1, "mount -o remount,ro /dev/block/mmcblk0p13 /system"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v1, p0, Lcom/risedata/cusettings/d;->a:Lcom/risedata/cusettings/CusettingsActivity;

    invoke-static {v1, v0}, Lcom/risedata/cusettings/CusettingsActivity;->a(Lcom/risedata/cusettings/CusettingsActivity;Ljava/util/ArrayList;)Z

    .line 213
    iget-object v0, p0, Lcom/risedata/cusettings/d;->a:Lcom/risedata/cusettings/CusettingsActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/risedata/cusettings/d;->d:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 215
    return-void

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/risedata/cusettings/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
