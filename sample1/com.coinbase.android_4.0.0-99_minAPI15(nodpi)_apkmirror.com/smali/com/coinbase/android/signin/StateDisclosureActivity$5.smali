.class Lcom/coinbase/android/signin/StateDisclosureActivity$5;
.super Ljava/lang/Object;
.source "StateDisclosureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/signin/StateDisclosureActivity;->loadWyomingLockedView()V
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
    .line 181
    iput-object p1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity$5;->this$0:Lcom/coinbase/android/signin/StateDisclosureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/coinbase/android/signin/StateDisclosureActivity$5;->this$0:Lcom/coinbase/android/signin/StateDisclosureActivity;

    # invokes: Lcom/coinbase/android/signin/StateDisclosureActivity;->cancel()V
    invoke-static {v0}, Lcom/coinbase/android/signin/StateDisclosureActivity;->access$000(Lcom/coinbase/android/signin/StateDisclosureActivity;)V

    .line 185
    return-void
.end method
