.class Lcom/coinbase/android/signin/SignupActivity$2;
.super Ljava/lang/Object;
.source "SignupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/signin/SignupActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/signin/SignupActivity;


# direct methods
.method constructor <init>(Lcom/coinbase/android/signin/SignupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/signin/SignupActivity;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/coinbase/android/signin/SignupActivity$2;->this$0:Lcom/coinbase/android/signin/SignupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/coinbase/android/signin/SignupActivity$2;->this$0:Lcom/coinbase/android/signin/SignupActivity;

    invoke-virtual {v0}, Lcom/coinbase/android/signin/SignupActivity;->onBackPressed()V

    .line 164
    return-void
.end method
