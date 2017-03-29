.class public final Lcom/devmarvel/creditcardentry/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devmarvel/creditcardentry/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CreditCardForm:[I

.field public static final CreditCardForm_card_number_hint:I = 0x8

.field public static final CreditCardForm_cursor_color:I = 0x7

.field public static final CreditCardForm_default_text_colors:I = 0xa

.field public static final CreditCardForm_helper_text_color:I = 0x4

.field public static final CreditCardForm_hint_text_color:I = 0x6

.field public static final CreditCardForm_include_exp:I = 0x0

.field public static final CreditCardForm_include_helper:I = 0x3

.field public static final CreditCardForm_include_security:I = 0x1

.field public static final CreditCardForm_include_zip:I = 0x2

.field public static final CreditCardForm_input_background:I = 0x9

.field public static final CreditCardForm_text_color:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/devmarvel/creditcardentry/R$styleable;->CreditCardForm:[I

    return-void

    :array_0
    .array-data 4
        0x7f010045
        0x7f010046
        0x7f010047
        0x7f010048
        0x7f010049
        0x7f01004a
        0x7f01004b
        0x7f01004c
        0x7f01004d
        0x7f01004e
        0x7f01004f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
