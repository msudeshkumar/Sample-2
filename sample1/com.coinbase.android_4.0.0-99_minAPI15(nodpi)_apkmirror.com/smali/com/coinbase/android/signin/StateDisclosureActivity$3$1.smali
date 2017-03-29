.class Lcom/coinbase/android/signin/StateDisclosureActivity$3$1;
.super Ljava/lang/Object;
.source "StateDisclosureActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/signin/StateDisclosureActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coinbase/android/signin/StateDisclosureActivity$3;


# direct methods
.method constructor <init>(Lcom/coinbase/android/signin/StateDisclosureActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/coinbase/android/signin/StateDisclosureActivity$3;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity$3$1;->this$1:Lcom/coinbase/android/signin/StateDisclosureActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/coinbase/android/signin/StateDisclosureActivity$3$1;->this$1:Lcom/coinbase/android/signin/StateDisclosureActivity$3;

    iget-object v0, v0, Lcom/coinbase/android/signin/StateDisclosureActivity$3;->this$0:Lcom/coinbase/android/signin/StateDisclosureActivity;

    iget-object v0, v0, Lcom/coinbase/android/signin/StateDisclosureActivity;->bus:Lcom/squareup/otto/Bus;

    iget-object v1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity$3$1;->this$1:Lcom/coinbase/android/signin/StateDisclosureActivity$3;

    iget-object v1, v1, Lcom/coinbase/android/signin/StateDisclosureActivity$3;->this$0:Lcom/coinbase/android/signin/StateDisclosureActivity;

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 133
    iget-object v0, p0, Lcom/coinbase/android/signin/StateDisclosureActivity$3$1;->this$1:Lcom/coinbase/android/signin/StateDisclosureActivity$3;

    iget-object v0, v0, Lcom/coinbase/android/signin/StateDisclosureActivity$3;->this$0:Lcom/coinbase/android/signin/StateDisclosureActivity;

    invoke-virtual {v0}, Lcom/coinbase/android/signin/StateDisclosureActivity;->finish()V

    .line 134
    return-void
.end method
