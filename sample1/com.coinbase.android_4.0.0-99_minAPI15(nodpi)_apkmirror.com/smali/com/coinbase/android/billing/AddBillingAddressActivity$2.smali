.class Lcom/coinbase/android/billing/AddBillingAddressActivity$2;
.super Ljava/lang/Object;
.source "AddBillingAddressActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/billing/AddBillingAddressActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/billing/AddBillingAddressActivity;


# direct methods
.method constructor <init>(Lcom/coinbase/android/billing/AddBillingAddressActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/billing/AddBillingAddressActivity;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/coinbase/android/billing/AddBillingAddressActivity$2;->this$0:Lcom/coinbase/android/billing/AddBillingAddressActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/coinbase/android/billing/AddBillingAddressActivity$2;->this$0:Lcom/coinbase/android/billing/AddBillingAddressActivity;

    # invokes: Lcom/coinbase/android/billing/AddBillingAddressActivity;->submitForm()V
    invoke-static {v0}, Lcom/coinbase/android/billing/AddBillingAddressActivity;->access$000(Lcom/coinbase/android/billing/AddBillingAddressActivity;)V

    .line 93
    return-void
.end method
