.class Lcom/coinbase/android/signin/StateDisclosureActivity$8;
.super Ljava/lang/Object;
.source "StateDisclosureActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/signin/StateDisclosureActivity;->cancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/signin/StateDisclosureActivity;


# direct methods
.method constructor <init>(Lcom/coinbase/android/signin/StateDisclosureActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/signin/StateDisclosureActivity;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity$8;->this$0:Lcom/coinbase/android/signin/StateDisclosureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 253
    iget-object v0, p0, Lcom/coinbase/android/signin/StateDisclosureActivity$8;->this$0:Lcom/coinbase/android/signin/StateDisclosureActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/coinbase/android/signin/StateDisclosureActivity;->chosenState:Ljava/util/HashMap;

    .line 254
    iget-object v0, p0, Lcom/coinbase/android/signin/StateDisclosureActivity$8;->this$0:Lcom/coinbase/android/signin/StateDisclosureActivity;

    iget-object v0, v0, Lcom/coinbase/android/signin/StateDisclosureActivity;->bus:Lcom/squareup/otto/Bus;

    iget-object v1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity$8;->this$0:Lcom/coinbase/android/signin/StateDisclosureActivity;

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 255
    iget-object v0, p0, Lcom/coinbase/android/signin/StateDisclosureActivity$8;->this$0:Lcom/coinbase/android/signin/StateDisclosureActivity;

    invoke-virtual {v0}, Lcom/coinbase/android/signin/StateDisclosureActivity;->finish()V

    .line 256
    return-void
.end method
