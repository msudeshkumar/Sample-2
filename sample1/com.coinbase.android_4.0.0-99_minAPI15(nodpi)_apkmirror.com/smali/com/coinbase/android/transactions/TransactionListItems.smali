.class public Lcom/coinbase/android/transactions/TransactionListItems;
.super Ljava/lang/Object;
.source "TransactionListItems.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/transactions/TransactionListItems$TransactionDisplayItem;,
        Lcom/coinbase/android/transactions/TransactionListItems$TransactionHeaderItem;
    }
.end annotation


# static fields
.field private static final GRAVATAR_HOST:Ljava/lang/String; = "secure.gravatar.com"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lorg/joda/time/LocalDate;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lorg/joda/time/LocalDate;

    .prologue
    .line 24
    invoke-static {p0, p1}, Lcom/coinbase/android/transactions/TransactionListItems;->formatDate(Landroid/content/Context;Lorg/joda/time/LocalDate;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static formatDate(Landroid/content/Context;Lorg/joda/time/LocalDate;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "localDate"    # Lorg/joda/time/LocalDate;

    .prologue
    const/4 v4, 0x7

    .line 194
    new-instance v3, Lorg/joda/time/LocalDate;

    invoke-direct {v3}, Lorg/joda/time/LocalDate;-><init>()V

    invoke-virtual {v3, v4}, Lorg/joda/time/LocalDate;->withDayOfWeek(I)Lorg/joda/time/LocalDate;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/joda/time/LocalDate;->minusDays(I)Lorg/joda/time/LocalDate;

    move-result-object v2

    .line 195
    .local v2, "startOfWeek":Lorg/joda/time/LocalDate;
    invoke-virtual {p1, v2}, Lorg/joda/time/LocalDate;->compareTo(Lorg/joda/time/ReadablePartial;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 196
    const/4 v3, 0x0

    .line 205
    :goto_0
    return-object v3

    .line 197
    :cond_0
    invoke-virtual {v2, v4}, Lorg/joda/time/LocalDate;->minusDays(I)Lorg/joda/time/LocalDate;

    move-result-object v0

    .line 198
    .local v0, "startOfLastWeek":Lorg/joda/time/LocalDate;
    invoke-virtual {p1, v0}, Lorg/joda/time/LocalDate;->compareTo(Lorg/joda/time/ReadablePartial;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 199
    const v3, 0x7f07022c

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 201
    :cond_1
    new-instance v3, Lorg/joda/time/LocalDate;

    invoke-direct {v3}, Lorg/joda/time/LocalDate;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/joda/time/LocalDate;->withDayOfMonth(I)Lorg/joda/time/LocalDate;

    move-result-object v1

    .line 202
    .local v1, "startOfMonth":Lorg/joda/time/LocalDate;
    invoke-virtual {p1, v1}, Lorg/joda/time/LocalDate;->compareTo(Lorg/joda/time/ReadablePartial;)I

    move-result v3

    if-ltz v3, :cond_2

    .line 203
    const v3, 0x7f07022d

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 205
    :cond_2
    const-string v3, "MMMM YYYY"

    invoke-virtual {p1, v3}, Lorg/joda/time/LocalDate;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static removeDefaultFromGravatarUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "avatarUrl"    # Ljava/lang/String;

    .prologue
    .line 209
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 211
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    const-string v4, "secure.gravatar.com"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 212
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 213
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 214
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 215
    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 216
    invoke-virtual {v2}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 217
    .local v1, "key":Ljava/lang/String;
    const-string v4, "d"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 218
    invoke-virtual {v2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 219
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    const-string v3, "d"

    const-string v4, "404"

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 221
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    .line 224
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local p0    # "avatarUrl":Ljava/lang/String;
    :cond_2
    return-object p0
.end method
