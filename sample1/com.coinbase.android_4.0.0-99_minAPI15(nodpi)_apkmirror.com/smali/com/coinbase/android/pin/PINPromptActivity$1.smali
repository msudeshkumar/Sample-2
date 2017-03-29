.class Lcom/coinbase/android/pin/PINPromptActivity$1;
.super Ljava/lang/Object;
.source "PINPromptActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/pin/PINPromptActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/pin/PINPromptActivity;


# direct methods
.method constructor <init>(Lcom/coinbase/android/pin/PINPromptActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/pin/PINPromptActivity;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/coinbase/android/pin/PINPromptActivity$1;->this$0:Lcom/coinbase/android/pin/PINPromptActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/coinbase/android/pin/PINPromptActivity$1;->this$0:Lcom/coinbase/android/pin/PINPromptActivity;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Lcom/coinbase/android/utils/KeyboardUtils;->getKeyStroke(I)C

    move-result v1

    # invokes: Lcom/coinbase/android/pin/PINPromptActivity;->onKeyPressed(C)V
    invoke-static {v0, v1}, Lcom/coinbase/android/pin/PINPromptActivity;->access$100(Lcom/coinbase/android/pin/PINPromptActivity;C)V

    .line 150
    iget-object v0, p0, Lcom/coinbase/android/pin/PINPromptActivity$1;->this$0:Lcom/coinbase/android/pin/PINPromptActivity;

    # invokes: Lcom/coinbase/android/pin/PINPromptActivity;->updateUI()V
    invoke-static {v0}, Lcom/coinbase/android/pin/PINPromptActivity;->access$200(Lcom/coinbase/android/pin/PINPromptActivity;)V

    .line 152
    iget-object v0, p0, Lcom/coinbase/android/pin/PINPromptActivity$1;->this$0:Lcom/coinbase/android/pin/PINPromptActivity;

    # getter for: Lcom/coinbase/android/pin/PINPromptActivity;->mEnteredValue:Ljava/lang/String;
    invoke-static {v0}, Lcom/coinbase/android/pin/PINPromptActivity;->access$300(Lcom/coinbase/android/pin/PINPromptActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/coinbase/android/pin/PINPromptActivity$1;->this$0:Lcom/coinbase/android/pin/PINPromptActivity;

    # invokes: Lcom/coinbase/android/pin/PINPromptActivity;->onSubmit()V
    invoke-static {v0}, Lcom/coinbase/android/pin/PINPromptActivity;->access$400(Lcom/coinbase/android/pin/PINPromptActivity;)V

    .line 155
    :cond_0
    return-void
.end method
