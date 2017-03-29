.class Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PhoneNumberFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/phone/PhoneNumberFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneNumberAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/coinbase/api/internal/models/phoneNumber/Data;",
        ">;"
    }
.end annotation


# instance fields
.field mDeletePhoneTask:Lcom/coinbase/android/phone/DeletePhoneTask;

.field private removeClickListener:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/coinbase/android/phone/PhoneNumberFragment;

.field private verifyClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/coinbase/android/phone/PhoneNumberFragment;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter;->this$0:Lcom/coinbase/android/phone/PhoneNumberFragment;

    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 107
    new-instance v0, Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter$1;

    invoke-direct {v0, p0}, Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter$1;-><init>(Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter;)V

    iput-object v0, p0, Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter;->removeClickListener:Landroid/view/View$OnClickListener;

    .line 117
    new-instance v0, Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter$2;

    invoke-direct {v0, p0}, Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter$2;-><init>(Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter;)V

    iput-object v0, p0, Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter;->verifyClickListener:Landroid/view/View$OnClickListener;

    .line 81
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 87
    if-nez p2, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 89
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0300a5

    invoke-virtual {v0, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 92
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coinbase/api/internal/models/phoneNumber/Data;

    .line 93
    .local v1, "number":Lcom/coinbase/api/internal/models/phoneNumber/Data;
    const v4, 0x7f0d02db

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/coinbase/api/internal/models/phoneNumber/Data;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const v4, 0x7f0d02dc

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 96
    .local v3, "verifyButton":Landroid/widget/Button;
    invoke-virtual {v1}, Lcom/coinbase/api/internal/models/phoneNumber/Data;->getVerified()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x8

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 97
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 98
    iget-object v4, p0, Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter;->verifyClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const v4, 0x7f0d02dd

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 101
    .local v2, "removeButton":Landroid/widget/Button;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 102
    iget-object v4, p0, Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter;->removeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    return-object p2

    .end local v2    # "removeButton":Landroid/widget/Button;
    :cond_1
    move v4, v5

    .line 96
    goto :goto_0
.end method
