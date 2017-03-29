.class public final Lcom/getbase/floatingactionbutton/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getbase/floatingactionbutton/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AddFloatingActionButton:[I

.field public static final AddFloatingActionButton_fab_plusIconColor:I = 0x0

.field public static final FloatingActionButton:[I

.field public static final FloatingActionButton_fab_colorDisabled:I = 0x6

.field public static final FloatingActionButton_fab_colorNormal:I = 0x7

.field public static final FloatingActionButton_fab_colorPressed:I = 0x5

.field public static final FloatingActionButton_fab_icon:I = 0x8

.field public static final FloatingActionButton_fab_size:I = 0x9

.field public static final FloatingActionButton_fab_stroke_visible:I = 0xb

.field public static final FloatingActionButton_fab_title:I = 0xa

.field public static final FloatingActionsMenu:[I

.field public static final FloatingActionsMenu_fab_addButtonColorNormal:I = 0x1

.field public static final FloatingActionsMenu_fab_addButtonColorPressed:I = 0x0

.field public static final FloatingActionsMenu_fab_addButtonPlusIconColor:I = 0x3

.field public static final FloatingActionsMenu_fab_addButtonSize:I = 0x2

.field public static final FloatingActionsMenu_fab_addButtonStrokeVisible:I = 0x4

.field public static final FloatingActionsMenu_fab_expandDirection:I = 0x7

.field public static final FloatingActionsMenu_fab_labelStyle:I = 0x5

.field public static final FloatingActionsMenu_fab_labelsPosition:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f010020

    aput v2, v0, v1

    sput-object v0, Lcom/getbase/floatingactionbutton/R$styleable;->AddFloatingActionButton:[I

    .line 57
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionButton:[I

    .line 65
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionsMenu:[I

    return-void

    .line 57
    :array_0
    .array-data 4
        0x7f01001b
        0x7f010059
        0x7f01005a
        0x7f01005b
        0x7f01005c
        0x7f01005d
        0x7f01005e
        0x7f01005f
        0x7f010060
        0x7f010061
        0x7f010062
        0x7f010063
        0x7f010157
        0x7f010158
    .end array-data

    .line 65
    :array_1
    .array-data 4
        0x7f010064
        0x7f010065
        0x7f010066
        0x7f010067
        0x7f010068
        0x7f010069
        0x7f01006a
        0x7f01006b
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
