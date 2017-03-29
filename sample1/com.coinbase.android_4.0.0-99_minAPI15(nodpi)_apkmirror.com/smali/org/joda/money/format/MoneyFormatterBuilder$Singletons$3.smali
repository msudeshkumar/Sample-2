.class final enum Lorg/joda/money/format/MoneyFormatterBuilder$Singletons$3;
.super Lorg/joda/money/format/MoneyFormatterBuilder$Singletons;
.source "MoneyFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/money/format/MoneyFormatterBuilder$Singletons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p3, "x0"    # Ljava/lang/String;

    .prologue
    .line 354
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/joda/money/format/MoneyFormatterBuilder$Singletons;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/joda/money/format/MoneyFormatterBuilder$1;)V

    return-void
.end method


# virtual methods
.method public print(Lorg/joda/money/format/MoneyPrintContext;Ljava/lang/Appendable;Lorg/joda/money/BigMoney;)V
    .locals 1
    .param p1, "context"    # Lorg/joda/money/format/MoneyPrintContext;
    .param p2, "appendable"    # Ljava/lang/Appendable;
    .param p3, "money"    # Lorg/joda/money/BigMoney;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    invoke-virtual {p3}, Lorg/joda/money/BigMoney;->getCurrencyUnit()Lorg/joda/money/CurrencyUnit;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/money/CurrencyUnit;->getNumericCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 358
    return-void
.end method
