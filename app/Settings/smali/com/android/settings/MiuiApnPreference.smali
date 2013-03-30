.class public Lcom/android/settings/MiuiApnPreference;
.super Lmiui/preference/RadioButtonPreference;
.source "MiuiApnPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/MiuiApnPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lmiui/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const v0, 0x7f040083

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiApnPreference;->setWidgetLayoutResource(I)V

    .line 21
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lmiui/preference/RadioButtonPreference;->onBindView(Landroid/view/View;)V

    .line 30
    const v1, 0x7f09011d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 31
    .local v0, detailArrow:Landroid/widget/ImageView;
    new-instance v1, Lcom/android/settings/MiuiApnPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/MiuiApnPreference$1;-><init>(Lcom/android/settings/MiuiApnPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    return-void
.end method
