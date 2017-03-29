.class Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$OnCountrySelectedListener;
.super Ljava/lang/Object;
.source "JumioChooseCountryFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnCountrySelectedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;


# direct methods
.method private constructor <init>(Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$OnCountrySelectedListener;->this$0:Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;
    .param p2, "x1"    # Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$1;

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$OnCountrySelectedListener;-><init>(Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;)V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$OnCountrySelectedListener;->this$0:Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;

    invoke-virtual {v1}, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d01c4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 118
    .local v0, "iv":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 119
    iget-object v2, p0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$OnCountrySelectedListener;->this$0:Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;

    iget-object v1, p0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$OnCountrySelectedListener;->this$0:Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;

    iget-object v1, v1, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;->mJumioDocuments:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coinbase/api/internal/entity/JumioDocument;

    invoke-virtual {v1}, Lcom/coinbase/api/internal/entity/JumioDocument;->getCountry()Lcom/coinbase/api/internal/entity/JumioProfileCountry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coinbase/api/internal/entity/JumioProfileCountry;->getImage()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;->getImageBitmap(Ljava/lang/String;Landroid/widget/ImageView;)V
    invoke-static {v2, v1, v0}, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;->access$100(Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 121
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
