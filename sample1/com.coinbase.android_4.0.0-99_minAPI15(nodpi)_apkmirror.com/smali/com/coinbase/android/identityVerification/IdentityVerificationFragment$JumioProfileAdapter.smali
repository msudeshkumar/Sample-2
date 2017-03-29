.class Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$JumioProfileAdapter;
.super Landroid/widget/ArrayAdapter;
.source "IdentityVerificationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JumioProfileAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/coinbase/api/internal/entity/JumioProfile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;


# direct methods
.method public constructor <init>(Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$JumioProfileAdapter;->this$0:Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;

    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 120
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 124
    if-nez p2, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$JumioProfileAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 126
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f0300a1

    invoke-virtual {v1, v8, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 129
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$JumioProfileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coinbase/api/internal/entity/JumioProfile;

    .line 130
    .local v2, "profile":Lcom/coinbase/api/internal/entity/JumioProfile;
    invoke-virtual {v2}, Lcom/coinbase/api/internal/entity/JumioProfile;->getStatus()Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    move-result-object v5

    .line 131
    .local v5, "status":Lcom/coinbase/api/internal/entity/JumioProfile$Status;
    const-string v6, ""

    .line 132
    .local v6, "statusString":Ljava/lang/String;
    sget-object v8, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$1;->$SwitchMap$com$coinbase$api$internal$entity$JumioProfile$Status:[I

    invoke-virtual {v5}, Lcom/coinbase/api/internal/entity/JumioProfile$Status;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 144
    const-string v6, ""

    .line 147
    :goto_0
    const v8, 0x7f0d02d6

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 148
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    invoke-virtual {v2}, Lcom/coinbase/api/internal/entity/JumioProfile;->getType()Lcom/coinbase/api/internal/entity/JumioProfileType;

    move-result-object v3

    .line 150
    .local v3, "profileType":Lcom/coinbase/api/internal/entity/JumioProfileType;
    iget-object v8, p0, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$JumioProfileAdapter;->this$0:Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;

    const v9, 0x7f070117

    invoke-virtual {v8, v9}, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 151
    .local v4, "profileTypeString":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 152
    iget-object v8, p0, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$JumioProfileAdapter;->this$0:Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;

    invoke-virtual {v8}, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    check-cast v8, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;

    invoke-virtual {v8, v3}, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;->getDisplayName(Lcom/coinbase/api/internal/entity/JumioProfileType;)Ljava/lang/String;

    move-result-object v4

    .line 154
    :cond_1
    const v8, 0x7f0d02d5

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 155
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    const v8, 0x7f0d02d4

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 159
    .local v0, "flagView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 160
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$LoadFlagImageTask;

    invoke-virtual {v8, v11}, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$LoadFlagImageTask;->cancel(Z)Z

    .line 163
    :cond_2
    new-instance v7, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$LoadFlagImageTask;

    iget-object v8, p0, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$JumioProfileAdapter;->this$0:Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$LoadFlagImageTask;-><init>(Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$1;)V

    .line 164
    .local v7, "task":Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$LoadFlagImageTask;
    iput-object v0, v7, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$LoadFlagImageTask;->imageView:Landroid/widget/ImageView;

    .line 165
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 166
    new-array v8, v11, [Ljava/lang/String;

    invoke-virtual {v2}, Lcom/coinbase/api/internal/entity/JumioProfile;->getCountry()Lcom/coinbase/api/internal/entity/JumioProfile$Country;

    move-result-object v9

    invoke-virtual {v9}, Lcom/coinbase/api/internal/entity/JumioProfile$Country;->getImage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v7, v8}, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$LoadFlagImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 168
    return-object p2

    .line 134
    .end local v0    # "flagView":Landroid/widget/ImageView;
    .end local v3    # "profileType":Lcom/coinbase/api/internal/entity/JumioProfileType;
    .end local v4    # "profileTypeString":Ljava/lang/String;
    .end local v7    # "task":Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$LoadFlagImageTask;
    :pswitch_0
    iget-object v8, p0, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$JumioProfileAdapter;->this$0:Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;

    const v9, 0x7f070142

    invoke-virtual {v8, v9}, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 135
    goto :goto_0

    .line 137
    :pswitch_1
    iget-object v8, p0, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$JumioProfileAdapter;->this$0:Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;

    const v9, 0x7f070141

    invoke-virtual {v8, v9}, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 138
    goto :goto_0

    .line 141
    :pswitch_2
    iget-object v8, p0, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$JumioProfileAdapter;->this$0:Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;

    const v9, 0x7f070143

    invoke-virtual {v8, v9}, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 142
    goto/16 :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
