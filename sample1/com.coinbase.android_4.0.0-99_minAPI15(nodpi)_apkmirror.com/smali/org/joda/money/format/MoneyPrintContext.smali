.class public final Lorg/joda/money/format/MoneyPrintContext;
.super Ljava/lang/Object;
.source "MoneyPrintContext.java"


# instance fields
.field private locale:Ljava/util/Locale;


# direct methods
.method constructor <init>(Ljava/util/Locale;)V
    .locals 0
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/joda/money/format/MoneyPrintContext;->locale:Ljava/util/Locale;

    .line 40
    return-void
.end method


# virtual methods
.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/joda/money/format/MoneyPrintContext;->locale:Ljava/util/Locale;

    return-object v0
.end method
