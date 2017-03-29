.class public Lcom/coinbase/android/buysell/AbstractBuySellFragment$BTCInputFilter;
.super Ljava/lang/Object;
.source "AbstractBuySellFragment.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/buysell/AbstractBuySellFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BTCInputFilter"
.end annotation


# instance fields
.field mMaxFractionDigits:I

.field mMaxIntegerDigits:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/16 v0, 0x8

    iput v0, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment$BTCInputFilter;->mMaxFractionDigits:I

    .line 83
    const/4 v0, 0x7

    iput v0, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment$BTCInputFilter;->mMaxIntegerDigits:I

    .line 86
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 90
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "destString":Ljava/lang/String;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v1

    iget v2, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment$BTCInputFilter;->mMaxIntegerDigits:I

    if-lt v1, v2, :cond_0

    .line 94
    const-string v1, ""

    .line 99
    :goto_0
    return-object v1

    .line 97
    :cond_0
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment$BTCInputFilter;->mMaxFractionDigits:I

    if-le v1, v2, :cond_1

    .line 98
    const-string v1, ""

    goto :goto_0

    .line 99
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
