.class final Lcom/devmarvel/creditcardentry/library/CreditCardForm$SavedState$1;
.super Ljava/lang/Object;
.source "CreditCardForm.java"

# interfaces
.implements Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devmarvel/creditcardentry/library/CreditCardForm$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/os/ParcelableCompatCreatorCallbacks",
        "<",
        "Lcom/devmarvel/creditcardentry/library/CreditCardForm$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/devmarvel/creditcardentry/library/CreditCardForm$SavedState;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 319
    new-instance v0, Lcom/devmarvel/creditcardentry/library/CreditCardForm$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/devmarvel/creditcardentry/library/CreditCardForm$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/devmarvel/creditcardentry/library/CreditCardForm$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Ljava/lang/ClassLoader;

    .prologue
    .line 316
    invoke-virtual {p0, p1, p2}, Lcom/devmarvel/creditcardentry/library/CreditCardForm$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/devmarvel/creditcardentry/library/CreditCardForm$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/devmarvel/creditcardentry/library/CreditCardForm$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 324
    new-array v0, p1, [Lcom/devmarvel/creditcardentry/library/CreditCardForm$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 316
    invoke-virtual {p0, p1}, Lcom/devmarvel/creditcardentry/library/CreditCardForm$SavedState$1;->newArray(I)[Lcom/devmarvel/creditcardentry/library/CreditCardForm$SavedState;

    move-result-object v0

    return-object v0
.end method
