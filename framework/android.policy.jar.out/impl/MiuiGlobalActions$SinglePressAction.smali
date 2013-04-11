.class abstract Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;
.super Ljava/lang/Object;
.source "MiuiGlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/MiuiGlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SinglePressAction"
.end annotation

# static flieds
.field protected static rebootMode:I

.field protected static final rebootOptions:[Ljava/lang/String;

# instance fields
.field private mIconResId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mMessageResId:I

.field private mTextview:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Normal"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Recovery"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Bootloader"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->rebootOptions:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(II)V
    .locals 0
    .parameter "iconResId"
    .parameter "messageResId"

    .prologue
    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    iput p1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mIconResId:I

    .line 499
    iput p2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mMessageResId:I

    .line 500
    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "convertView"
    .parameter "parent"
    .parameter "inflater"

    .prologue
    .line 524
    const v2, 0x603000c

    const/4 v3, 0x0

    invoke-virtual {p4, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 526
    .local v1, v:Landroid/view/ViewGroup;
    const v2, 0x1020006

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mIconView:Landroid/widget/ImageView;

    .line 527
    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mTextview:Landroid/widget/TextView;

    .line 529
    const v2, 0x60b0084

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 531
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mIconView:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mIconResId:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 532
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mTextview:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mMessageResId:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 534
    const v0, 0x6010038

    .line 535
    .local v0, state:I
    const v2, 0x60c0011

    iget v3, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mMessageResId:I

    if-ne v2, v3, :cond_1

    .line 536
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mTextview:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 537
    const v0, 0x6010036

    .line 541
    :cond_0
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setAdditionalState(I)V

    .line 543
    return-object v1

    .line 538
    :cond_1
    const v2, 0x60c0029

    iget v3, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mMessageResId:I

    if-ne v2, v3, :cond_0

    .line 539
    const v0, 0x6010037

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 503
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onPress()V
.end method

.method public setIcon(I)V
    .locals 2
    .parameter "iconResId"

    .prologue
    .line 507
    iput p1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mIconResId:I

    .line 508
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mIconResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 511
    :cond_0
    return-void
.end method

.method public setMessage(I)V
    .locals 2
    .parameter "messageResId"

    .prologue
    .line 514
    iput p1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mMessageResId:I

    .line 515
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mTextview:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mTextview:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mMessageResId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 518
    :cond_0
    return-void
.end method
