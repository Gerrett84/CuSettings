.class public Lcom/risedata/cusettings/CusettingsActivity;
.super Landroid/app/Activity;
.source "CusettingsActivity.java"


# static fields
.field private static final e:[Ljava/lang/String;

.field private static final f:[I


# instance fields
.field private g:I

.field private h:I

.field private i:I

.field private mPos:I

.field private mX:I

.field private mY:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 29
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "config_icon_width"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "config_icon_height"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "workspace_cell_width"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "workspace_cell_height"

    aput-object v2, v0, v1

    sput-object v0, Lcom/risedata/cusettings/CusettingsActivity;->e:[Ljava/lang/String;

    .line 33
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/risedata/cusettings/CusettingsActivity;->f:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x87t 0x0t 0x0t 0x0t
        0x87t 0x0t 0x0t 0x0t
        0x98t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    const/16 v0, 0x140

    iput v0, p0, Lcom/risedata/cusettings/CusettingsActivity;->i:I

    .line 41
    iput v1, p0, Lcom/risedata/cusettings/CusettingsActivity;->mX:I

    .line 42
    iput v1, p0, Lcom/risedata/cusettings/CusettingsActivity;->mY:I

    return-void
.end method

.method static synthetic a(Lcom/risedata/cusettings/CusettingsActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput p1, p0, Lcom/risedata/cusettings/CusettingsActivity;->mPos:I

    return p1
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 160
    invoke-virtual {p0}, Lcom/risedata/cusettings/CusettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f040002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 161
    iget v1, p0, Lcom/risedata/cusettings/CusettingsActivity;->g:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/risedata/cusettings/CusettingsActivity;->g:I

    array-length v2, v0

    if-lt v1, v2, :cond_1

    .line 162
    :cond_0
    iput v3, p0, Lcom/risedata/cusettings/CusettingsActivity;->mX:I

    .line 163
    iput v3, p0, Lcom/risedata/cusettings/CusettingsActivity;->mY:I

    .line 171
    :goto_0
    return-void

    .line 167
    :cond_1
    iget v1, p0, Lcom/risedata/cusettings/CusettingsActivity;->g:I

    aget-object v0, v0, v1

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 168
    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/risedata/cusettings/CusettingsActivity;->mX:I

    .line 169
    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/risedata/cusettings/CusettingsActivity;->mY:I

    .line 170
    const-string v0, "CusettingsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mX mY is set as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/risedata/cusettings/CusettingsActivity;->mX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/risedata/cusettings/CusettingsActivity;->mY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(Landroid/widget/LinearLayout;)V
    .locals 7
    .parameter

    .prologue
    .line 220
    const-string v0, "/system/build.prop"

    .line 221
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 222
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 223
    const-string v0, "mv /system/build.prop /system/build.prop.orig"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    const-string v0, "busybox awk \'{sub(\"lcd_density=320\",\"lcd_density=268\"); print }\' /system/build.prop.orig >/system/build.prop"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    const-string v0, "rm /system/build.prop.orig"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    const-string v0, "chmod 644 /system/build.prop"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    const-string v0, "mv /system/build.prop /system/build.prop.orig"

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    const-string v0, "busybox awk \'{sub(\"lcd_density=268\",\"lcd_density=320\"); print }\' /system/build.prop.orig >/system/build.prop"

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    const-string v0, "rm /system/build.prop.orig"

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    const-string v0, "chmod 644 /system/build.prop"

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    const v2, 0x7f05000a

    const-string v3, "SP_KEY_DPI"

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/risedata/cusettings/CusettingsActivity;->a(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 234
    return-void
.end method

.method private a(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 174
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 175
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 177
    const-string v0, "mkdir -p /system/cusettings/"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mv /system/app/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " /system/cusettings"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mv /system/cusettings/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " /system/app"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/risedata/cusettings/CusettingsActivity;->a(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 181
    return-void
.end method

.method private a(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 185
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 186
    if-eqz p6, :cond_0

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/risedata/cusettings/CusettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/risedata/cusettings/CusettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 188
    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 193
    :goto_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 196
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 199
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 200
    new-instance v1, Lcom/risedata/cusettings/d;

    invoke-direct {v1, p0, p4, p5, p3}, Lcom/risedata/cusettings/d;-><init>(Lcom/risedata/cusettings/CusettingsActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 217
    return-void

    .line 191
    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setText(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/risedata/cusettings/CusettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/risedata/cusettings/CusettingsActivity;->a()V

    return-void
.end method

.method static synthetic a(Lcom/risedata/cusettings/CusettingsActivity;Ljava/util/ArrayList;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/risedata/cusettings/CusettingsActivity;->a(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/util/ArrayList;)Z
    .locals 7
    .parameter

    .prologue
    .line 134
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "su"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 135
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 136
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 137
    const-string v4, "CusettingsActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cmd = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    const-string v1, "CusettingsActivity"

    const-string v2, "output IOException"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 155
    :goto_1
    const/4 v0, 0x0

    :goto_2
    return v0

    .line 141
    :cond_0
    :try_start_1
    const-string v0, "exit\n"

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 144
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 145
    const-string v0, "CusettingsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "output (should not 0xff) :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 146
    const/4 v0, 0x1

    goto :goto_2

    .line 147
    :catch_1
    move-exception v0

    .line 148
    :try_start_3
    const-string v1, "CusettingsActivity"

    const-string v2, "output InterruptedException"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method static synthetic b(Lcom/risedata/cusettings/CusettingsActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 22
    iget v0, p0, Lcom/risedata/cusettings/CusettingsActivity;->mX:I

    return v0
.end method

.method static synthetic b(Lcom/risedata/cusettings/CusettingsActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput p1, p0, Lcom/risedata/cusettings/CusettingsActivity;->g:I

    return p1
.end method

.method static synthetic b()[I
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/risedata/cusettings/CusettingsActivity;->f:[I

    return-object v0
.end method

.method static synthetic c(Lcom/risedata/cusettings/CusettingsActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 22
    iget v0, p0, Lcom/risedata/cusettings/CusettingsActivity;->mY:I

    return v0
.end method

.method static synthetic c()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/risedata/cusettings/CusettingsActivity;->e:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/risedata/cusettings/CusettingsActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 22
    iget v0, p0, Lcom/risedata/cusettings/CusettingsActivity;->mPos:I

    return v0
.end method

.method static synthetic e(Lcom/risedata/cusettings/CusettingsActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 22
    iget v0, p0, Lcom/risedata/cusettings/CusettingsActivity;->h:I

    return v0
.end method

.method static synthetic f(Lcom/risedata/cusettings/CusettingsActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 22
    iget v0, p0, Lcom/risedata/cusettings/CusettingsActivity;->g:I

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x1090009

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/risedata/cusettings/CusettingsActivity;->setContentView(I)V

    .line 50
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 52
    const v0, 0x7f060001

    invoke-virtual {p0, v0}, Lcom/risedata/cusettings/CusettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 53
    const/high16 v2, 0x7f04

    invoke-static {p0, v2, v4}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v2

    .line 55
    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/risedata/cusettings/CusettingsActivity;->h:I

    .line 56
    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 57
    const-string v2, "icon_size_selected"

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/risedata/cusettings/CusettingsActivity;->mPos:I

    .line 58
    iget v2, p0, Lcom/risedata/cusettings/CusettingsActivity;->mPos:I

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 60
    new-instance v2, Lcom/risedata/cusettings/c;

    invoke-direct {v2, p0}, Lcom/risedata/cusettings/c;-><init>(Lcom/risedata/cusettings/CusettingsActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 72
    const v0, 0x7f060002

    invoke-virtual {p0, v0}, Lcom/risedata/cusettings/CusettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 73
    const v2, 0x7f040002

    invoke-static {p0, v2, v4}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v2

    .line 75
    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 76
    const-string v2, "icon_xy_selected"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/risedata/cusettings/CusettingsActivity;->g:I

    .line 77
    invoke-direct {p0}, Lcom/risedata/cusettings/CusettingsActivity;->a()V

    .line 78
    iget v1, p0, Lcom/risedata/cusettings/CusettingsActivity;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 79
    new-instance v1, Lcom/risedata/cusettings/b;

    invoke-direct {v1, p0}, Lcom/risedata/cusettings/b;-><init>(Lcom/risedata/cusettings/CusettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 91
    const v0, 0x7f060003

    invoke-virtual {p0, v0}, Lcom/risedata/cusettings/CusettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 92
    new-instance v1, Lcom/risedata/cusettings/a;

    invoke-direct {v1, p0}, Lcom/risedata/cusettings/a;-><init>(Lcom/risedata/cusettings/CusettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v0, 0x7f060005

    invoke-virtual {p0, v0}, Lcom/risedata/cusettings/CusettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 127
    const v1, 0x7f050008

    const-string v2, "SP_KEY_IME"

    const-string v3, "SamsungIME.apk"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/risedata/cusettings/CusettingsActivity;->a(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;)V

    .line 128
    const v1, 0x7f050009

    const-string v2, "SP_KEY_FBS"

    const-string v3, "FlashBarService.apk"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/risedata/cusettings/CusettingsActivity;->a(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-direct {p0, v0}, Lcom/risedata/cusettings/CusettingsActivity;->a(Landroid/widget/LinearLayout;)V

    .line 130
    return-void
.end method
