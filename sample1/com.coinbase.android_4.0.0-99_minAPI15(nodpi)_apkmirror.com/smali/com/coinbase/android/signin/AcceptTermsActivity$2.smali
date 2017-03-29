.class Lcom/coinbase/android/signin/AcceptTermsActivity$2;
.super Ljava/lang/Object;
.source "AcceptTermsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/signin/AcceptTermsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/signin/AcceptTermsActivity;


# direct methods
.method constructor <init>(Lcom/coinbase/android/signin/AcceptTermsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/signin/AcceptTermsActivity;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/coinbase/android/signin/AcceptTermsActivity$2;->this$0:Lcom/coinbase/android/signin/AcceptTermsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/coinbase/android/signin/AcceptTermsActivity$2;->this$0:Lcom/coinbase/android/signin/AcceptTermsActivity;

    # invokes: Lcom/coinbase/android/signin/AcceptTermsActivity;->agreeToTerms()V
    invoke-static {v0}, Lcom/coinbase/android/signin/AcceptTermsActivity;->access$100(Lcom/coinbase/android/signin/AcceptTermsActivity;)V

    .line 78
    return-void
.end method
