.class Lcom/coinbase/android/signin/StateDisclosureActivity$7;
.super Ljava/lang/Object;
.source "StateDisclosureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/signin/StateDisclosureActivity;->loadNewYorkView()V
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
    .line 213
    iput-object p1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity$7;->this$0:Lcom/coinbase/android/signin/StateDisclosureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/coinbase/android/signin/StateDisclosureActivity$7;->this$0:Lcom/coinbase/android/signin/StateDisclosureActivity;

    # invokes: Lcom/coinbase/android/signin/StateDisclosureActivity;->isValid()Z
    invoke-static {v0}, Lcom/coinbase/android/signin/StateDisclosureActivity;->access$700(Lcom/coinbase/android/signin/StateDisclosureActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/coinbase/android/signin/StateDisclosureActivity$7;->this$0:Lcom/coinbase/android/signin/StateDisclosureActivity;

    # invokes: Lcom/coinbase/android/signin/StateDisclosureActivity;->createFullAddress()V
    invoke-static {v0}, Lcom/coinbase/android/signin/StateDisclosureActivity;->access$800(Lcom/coinbase/android/signin/StateDisclosureActivity;)V

    .line 220
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/signin/StateDisclosureActivity$7;->this$0:Lcom/coinbase/android/signin/StateDisclosureActivity;

    iget-object v1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity$7;->this$0:Lcom/coinbase/android/signin/StateDisclosureActivity;

    const v2, 0x7f0701cd

    invoke-virtual {v1, v2}, Lcom/coinbase/android/signin/StateDisclosureActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coinbase/android/utils/Utils;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
