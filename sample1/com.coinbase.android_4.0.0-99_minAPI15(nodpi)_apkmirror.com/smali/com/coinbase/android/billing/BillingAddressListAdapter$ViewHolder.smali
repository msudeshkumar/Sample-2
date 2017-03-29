.class Lcom/coinbase/android/billing/BillingAddressListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "BillingAddressListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/billing/BillingAddressListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field addressTextView:Landroid/widget/TextView;

.field cityStateZipTextView:Landroid/widget/TextView;

.field deleteButton:Landroid/widget/ImageButton;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coinbase/android/billing/BillingAddressListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/coinbase/android/billing/BillingAddressListAdapter$1;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/coinbase/android/billing/BillingAddressListAdapter$ViewHolder;-><init>()V

    return-void
.end method
