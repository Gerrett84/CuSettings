.class Lcom/risedata/cusettings/a;
.super Ljava/lang/Object;
.source "CusettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/risedata/cusettings/CusettingsActivity;


# direct methods
.method constructor <init>(Lcom/risedata/cusettings/CusettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/risedata/cusettings/a;->a:Lcom/risedata/cusettings/CusettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x0

    .line 96
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 97
    const-string v0, "busybox rm -f /data/system/res_overlay_com.miui.home.txt"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lcom/risedata/cusettings/a;->a:Lcom/risedata/cusettings/CusettingsActivity;

    invoke-static {v0}, Lcom/risedata/cusettings/CusettingsActivity;->b(Lcom/risedata/cusettings/CusettingsActivity;)I

    move-result v0

    if-le v0, v4, :cond_3

    iget-object v0, p0, Lcom/risedata/cusettings/a;->a:Lcom/risedata/cusettings/CusettingsActivity;

    invoke-static {v0}, Lcom/risedata/cusettings/CusettingsActivity;->b(Lcom/risedata/cusettings/CusettingsActivity;)I

    move-result v0

    const/4 v3, 0x7

    if-ge v0, v3, :cond_3

    iget-object v0, p0, Lcom/risedata/cusettings/a;->a:Lcom/risedata/cusettings/CusettingsActivity;

    invoke-static {v0}, Lcom/risedata/cusettings/CusettingsActivity;->c(Lcom/risedata/cusettings/CusettingsActivity;)I

    move-result v0

    if-le v0, v4, :cond_3

    iget-object v0, p0, Lcom/risedata/cusettings/a;->a:Lcom/risedata/cusettings/CusettingsActivity;

    invoke-static {v0}, Lcom/risedata/cusettings/CusettingsActivity;->c(Lcom/risedata/cusettings/CusettingsActivity;)I

    move-result v0

    const/16 v3, 0x8

    if-ge v0, v3, :cond_3

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "echo config_cell_count_x="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/risedata/cusettings/a;->a:Lcom/risedata/cusettings/CusettingsActivity;

    invoke-static {v3}, Lcom/risedata/cusettings/CusettingsActivity;->b(Lcom/risedata/cusettings/CusettingsActivity;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " >>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/data/system/res_overlay_com.miui.home.txt"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "echo config_cell_count_y="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/risedata/cusettings/a;->a:Lcom/risedata/cusettings/CusettingsActivity;

    invoke-static {v3}, Lcom/risedata/cusettings/CusettingsActivity;->c(Lcom/risedata/cusettings/CusettingsActivity;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " >>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/data/system/res_overlay_com.miui.home.txt"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    const-string v0, "rm /data/data/com.miui.home/shared_prefs/com.miui.home_preferences.xml"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lcom/risedata/cusettings/a;->a:Lcom/risedata/cusettings/CusettingsActivity;

    invoke-static {v0}, Lcom/risedata/cusettings/CusettingsActivity;->c(Lcom/risedata/cusettings/CusettingsActivity;)I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    const/16 v0, 0xa

    .line 107
    :goto_0
    iget-object v3, p0, Lcom/risedata/cusettings/a;->a:Lcom/risedata/cusettings/CusettingsActivity;

    invoke-static {v3}, Lcom/risedata/cusettings/CusettingsActivity;->d(Lcom/risedata/cusettings/CusettingsActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/risedata/cusettings/a;->a:Lcom/risedata/cusettings/CusettingsActivity;

    invoke-static {v4}, Lcom/risedata/cusettings/CusettingsActivity;->e(Lcom/risedata/cusettings/CusettingsActivity;)I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 108
    :goto_1
    invoke-static {}, Lcom/risedata/cusettings/CusettingsActivity;->b()[I

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 109
    invoke-static {}, Lcom/risedata/cusettings/CusettingsActivity;->b()[I

    move-result-object v3

    aget v3, v3, v1

    iget-object v4, p0, Lcom/risedata/cusettings/a;->a:Lcom/risedata/cusettings/CusettingsActivity;

    invoke-static {v4}, Lcom/risedata/cusettings/CusettingsActivity;->d(Lcom/risedata/cusettings/CusettingsActivity;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x5

    sub-int/2addr v3, v4

    sub-int/2addr v3, v0

    .line 110
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "echo "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/risedata/cusettings/CusettingsActivity;->c()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " >>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/data/system/res_overlay_com.miui.home.txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 104
    :cond_0
    const/16 v0, 0x14

    goto :goto_0

    .line 114
    :cond_1
    const-string v0, "chmod 644 /data/system/res_overlay_com.miui.home.txt"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    const-string v0, "kill `busybox  pgrep com.miui.home`"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Lcom/risedata/cusettings/a;->a:Lcom/risedata/cusettings/CusettingsActivity;

    invoke-static {v0, v2}, Lcom/risedata/cusettings/CusettingsActivity;->a(Lcom/risedata/cusettings/CusettingsActivity;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/risedata/cusettings/a;->a:Lcom/risedata/cusettings/CusettingsActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "icon_size_selected"

    iget-object v2, p0, Lcom/risedata/cusettings/a;->a:Lcom/risedata/cusettings/CusettingsActivity;

    invoke-static {v2}, Lcom/risedata/cusettings/CusettingsActivity;->d(Lcom/risedata/cusettings/CusettingsActivity;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 119
    iget-object v0, p0, Lcom/risedata/cusettings/a;->a:Lcom/risedata/cusettings/CusettingsActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "icon_xy_selected"

    iget-object v2, p0, Lcom/risedata/cusettings/a;->a:Lcom/risedata/cusettings/CusettingsActivity;

    invoke-static {v2}, Lcom/risedata/cusettings/CusettingsActivity;->f(Lcom/risedata/cusettings/CusettingsActivity;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 121
    iget-object v0, p0, Lcom/risedata/cusettings/a;->a:Lcom/risedata/cusettings/CusettingsActivity;

    invoke-virtual {v0}, Lcom/risedata/cusettings/CusettingsActivity;->finish()V

    .line 123
    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto/16 :goto_0
.end method
