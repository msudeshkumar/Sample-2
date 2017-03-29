.class Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$GetJumioSupportedDocumentsTask$1;
.super Ljava/lang/Object;
.source "JumioChooseCountryFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$GetJumioSupportedDocumentsTask;->onSuccess(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/coinbase/api/internal/entity/JumioDocument;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$GetJumioSupportedDocumentsTask;


# direct methods
.method constructor <init>(Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$GetJumioSupportedDocumentsTask;)V
    .locals 0
    .param p1, "this$1"    # Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$GetJumioSupportedDocumentsTask;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$GetJumioSupportedDocumentsTask$1;->this$1:Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$GetJumioSupportedDocumentsTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/coinbase/api/internal/entity/JumioDocument;Lcom/coinbase/api/internal/entity/JumioDocument;)I
    .locals 4
    .param p1, "lhs"    # Lcom/coinbase/api/internal/entity/JumioDocument;
    .param p2, "rhs"    # Lcom/coinbase/api/internal/entity/JumioDocument;

    .prologue
    .line 71
    invoke-virtual {p1}, Lcom/coinbase/api/internal/entity/JumioDocument;->getCountry()Lcom/coinbase/api/internal/entity/JumioProfileCountry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coinbase/api/internal/entity/JumioProfileCountry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "lhsName":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/coinbase/api/internal/entity/JumioDocument;->getCountry()Lcom/coinbase/api/internal/entity/JumioProfileCountry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coinbase/api/internal/entity/JumioProfileCountry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "rhsName":Ljava/lang/String;
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 74
    const/4 v2, 0x0

    .line 80
    :goto_0
    return v2

    .line 75
    :cond_0
    if-nez v0, :cond_1

    .line 76
    const/4 v2, -0x1

    goto :goto_0

    .line 77
    :cond_1
    if-nez v1, :cond_2

    .line 78
    const/4 v2, 0x1

    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {p1}, Lcom/coinbase/api/internal/entity/JumioDocument;->getCountry()Lcom/coinbase/api/internal/entity/JumioProfileCountry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coinbase/api/internal/entity/JumioProfileCountry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/coinbase/api/internal/entity/JumioDocument;->getCountry()Lcom/coinbase/api/internal/entity/JumioProfileCountry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coinbase/api/internal/entity/JumioProfileCountry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 68
    check-cast p1, Lcom/coinbase/api/internal/entity/JumioDocument;

    check-cast p2, Lcom/coinbase/api/internal/entity/JumioDocument;

    invoke-virtual {p0, p1, p2}, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$GetJumioSupportedDocumentsTask$1;->compare(Lcom/coinbase/api/internal/entity/JumioDocument;Lcom/coinbase/api/internal/entity/JumioDocument;)I

    move-result v0

    return v0
.end method
