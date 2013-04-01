.class Lcom/risedata/cusettings/c;
.super Ljava/lang/Object;
.source "CusettingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/risedata/cusettings/CusettingsActivity;


# direct methods
.method constructor <init>(Lcom/risedata/cusettings/CusettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/risedata/cusettings/c;->a:Lcom/risedata/cusettings/CusettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/risedata/cusettings/c;->a:Lcom/risedata/cusettings/CusettingsActivity;

    invoke-static {v0, p3}, Lcom/risedata/cusettings/CusettingsActivity;->a(Lcom/risedata/cusettings/CusettingsActivity;I)I

    .line 65
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    return-void
.end method
