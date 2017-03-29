.class Lcom/devmarvel/creditcardentry/library/CreditCardForm$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "CreditCardForm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devmarvel/creditcardentry/library/CreditCardForm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/devmarvel/creditcardentry/library/CreditCardForm$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field childrenStates:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 315
    new-instance v0, Lcom/devmarvel/creditcardentry/library/CreditCardForm$SavedState$1;

    invoke-direct {v0}, Lcom/devmarvel/creditcardentry/library/CreditCardForm$SavedState$1;-><init>()V

    invoke-static {v0}, Landroid/support/v4/os/ParcelableCompat;->newCreator(Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/devmarvel/creditcardentry/library/CreditCardForm$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 305
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 306
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/devmarvel/creditcardentry/library/CreditCardForm$SavedState;->childrenStates:Landroid/util/SparseArray;

    .line 307
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/devmarvel/creditcardentry/library/CreditCardForm$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Ljava/lang/ClassLoader;
    .param p3, "x2"    # Lcom/devmarvel/creditcardentry/library/CreditCardForm$1;

    .prologue
    .line 297
    invoke-direct {p0, p1, p2}, Lcom/devmarvel/creditcardentry/library/CreditCardForm$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 301
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 302
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 311
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 312
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/library/CreditCardForm$SavedState;->childrenStates:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    .line 313
    return-void
.end method
