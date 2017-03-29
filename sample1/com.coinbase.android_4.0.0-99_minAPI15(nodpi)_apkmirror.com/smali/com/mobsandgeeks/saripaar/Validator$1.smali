.class Lcom/mobsandgeeks/saripaar/Validator$1;
.super Landroid/os/AsyncTask;
.source "Validator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobsandgeeks/saripaar/Validator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/mobsandgeeks/saripaar/Validator$ViewRulePair;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobsandgeeks/saripaar/Validator;


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/mobsandgeeks/saripaar/Validator$ViewRulePair;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/mobsandgeeks/saripaar/Validator$1;->this$0:Lcom/mobsandgeeks/saripaar/Validator;

    # invokes: Lcom/mobsandgeeks/saripaar/Validator;->validateAllRules()Lcom/mobsandgeeks/saripaar/Validator$ViewRulePair;
    invoke-static {v0}, Lcom/mobsandgeeks/saripaar/Validator;->access$000(Lcom/mobsandgeeks/saripaar/Validator;)Lcom/mobsandgeeks/saripaar/Validator$ViewRulePair;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 183
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mobsandgeeks/saripaar/Validator$1;->doInBackground([Ljava/lang/Void;)Lcom/mobsandgeeks/saripaar/Validator$ViewRulePair;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/mobsandgeeks/saripaar/Validator$1;->this$0:Lcom/mobsandgeeks/saripaar/Validator;

    const/4 v1, 0x0

    # setter for: Lcom/mobsandgeeks/saripaar/Validator;->mAsyncValidationTask:Landroid/os/AsyncTask;
    invoke-static {v0, v1}, Lcom/mobsandgeeks/saripaar/Validator;->access$202(Lcom/mobsandgeeks/saripaar/Validator;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 204
    return-void
.end method

.method protected onPostExecute(Lcom/mobsandgeeks/saripaar/Validator$ViewRulePair;)V
    .locals 3
    .param p1, "pair"    # Lcom/mobsandgeeks/saripaar/Validator$ViewRulePair;

    .prologue
    .line 192
    if-nez p1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/mobsandgeeks/saripaar/Validator$1;->this$0:Lcom/mobsandgeeks/saripaar/Validator;

    # getter for: Lcom/mobsandgeeks/saripaar/Validator;->mValidationListener:Lcom/mobsandgeeks/saripaar/Validator$ValidationListener;
    invoke-static {v0}, Lcom/mobsandgeeks/saripaar/Validator;->access$100(Lcom/mobsandgeeks/saripaar/Validator;)Lcom/mobsandgeeks/saripaar/Validator$ValidationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mobsandgeeks/saripaar/Validator$ValidationListener;->onValidationSucceeded()V

    .line 198
    :goto_0
    iget-object v0, p0, Lcom/mobsandgeeks/saripaar/Validator$1;->this$0:Lcom/mobsandgeeks/saripaar/Validator;

    const/4 v1, 0x0

    # setter for: Lcom/mobsandgeeks/saripaar/Validator;->mAsyncValidationTask:Landroid/os/AsyncTask;
    invoke-static {v0, v1}, Lcom/mobsandgeeks/saripaar/Validator;->access$202(Lcom/mobsandgeeks/saripaar/Validator;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 199
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/mobsandgeeks/saripaar/Validator$1;->this$0:Lcom/mobsandgeeks/saripaar/Validator;

    # getter for: Lcom/mobsandgeeks/saripaar/Validator;->mValidationListener:Lcom/mobsandgeeks/saripaar/Validator$ValidationListener;
    invoke-static {v0}, Lcom/mobsandgeeks/saripaar/Validator;->access$100(Lcom/mobsandgeeks/saripaar/Validator;)Lcom/mobsandgeeks/saripaar/Validator$ValidationListener;

    move-result-object v0

    iget-object v1, p1, Lcom/mobsandgeeks/saripaar/Validator$ViewRulePair;->view:Landroid/view/View;

    iget-object v2, p1, Lcom/mobsandgeeks/saripaar/Validator$ViewRulePair;->rule:Lcom/mobsandgeeks/saripaar/Rule;

    invoke-interface {v0, v1, v2}, Lcom/mobsandgeeks/saripaar/Validator$ValidationListener;->onValidationFailed(Landroid/view/View;Lcom/mobsandgeeks/saripaar/Rule;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 183
    check-cast p1, Lcom/mobsandgeeks/saripaar/Validator$ViewRulePair;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mobsandgeeks/saripaar/Validator$1;->onPostExecute(Lcom/mobsandgeeks/saripaar/Validator$ViewRulePair;)V

    return-void
.end method
