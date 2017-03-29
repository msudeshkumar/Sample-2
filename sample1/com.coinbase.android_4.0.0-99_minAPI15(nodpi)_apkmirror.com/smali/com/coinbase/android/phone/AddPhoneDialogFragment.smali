.class public Lcom/coinbase/android/phone/AddPhoneDialogFragment;
.super Lroboguice/fragment/RoboDialogFragment;
.source "AddPhoneDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/phone/AddPhoneDialogFragment$CountryCode;
    }
.end annotation


# static fields
.field public static final COUNTRY:Ljava/lang/String; = "country"

.field public static final IS_NEW:Ljava/lang/String; = "IS_NEW"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final SHOW_TFA:Ljava/lang/String; = "show_tfa"


# instance fields
.field m2faInput:Landroid/widget/EditText;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0149
    .end annotation
.end field

.field private mCountryAlpha2:Ljava/lang/String;

.field mCountryCodeLabel:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0147
    .end annotation
.end field

.field mCountryInput:Landroid/widget/Spinner;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0146
    .end annotation
.end field

.field mPhoneNumberInput:Landroid/widget/EditText;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0148
    .end annotation
.end field

.field private mShowTfa:Z

.field mSkipButton:Landroid/widget/Button;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d014a
    .end annotation
.end field

.field private mUserPhoneNumber:Ljava/lang/String;

.field mVerifyButton:Landroid/widget/Button;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d014b
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lroboguice/fragment/RoboDialogFragment;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coinbase/android/phone/AddPhoneDialogFragment;->mShowTfa:Z

    return-void
.end method

.method static synthetic access$000(Lcom/coinbase/android/phone/AddPhoneDialogFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/phone/AddPhoneDialogFragment;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/coinbase/android/phone/AddPhoneDialogFragment;->mShowTfa:Z

    return v0
.end method

.method private getCountryCodes()[Lcom/coinbase/android/phone/AddPhoneDialogFragment$CountryCode;
    .locals 10

    .prologue
    .line 176
    :try_start_0
    new-instance v6, Ljava/util/Scanner;

    invoke-virtual {p0}, Lcom/coinbase/android/phone/AddPhoneDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060001

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v7, "\\A"

    invoke-virtual {v6, v7}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "content":Ljava/lang/String;
    new-instance v0, Lorg/json/JSONArray;

    new-instance v6, Lorg/json/JSONTokener;

    invoke-direct {v6, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v6}, Lorg/json/JSONArray;-><init>(Lorg/json/JSONTokener;)V

    .line 178
    .local v0, "array":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-array v5, v6, [Lcom/coinbase/android/phone/AddPhoneDialogFragment$CountryCode;

    .line 179
    .local v5, "result":[Lcom/coinbase/android/phone/AddPhoneDialogFragment$CountryCode;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 180
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    .line 181
    .local v2, "country":Lorg/json/JSONArray;
    new-instance v6, Lcom/coinbase/android/phone/AddPhoneDialogFragment$CountryCode;

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/coinbase/android/phone/AddPhoneDialogFragment$CountryCode;-><init>(Lcom/coinbase/android/phone/AddPhoneDialogFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 184
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "content":Ljava/lang/String;
    .end local v2    # "country":Lorg/json/JSONArray;
    .end local v4    # "i":I
    .end local v5    # "result":[Lcom/coinbase/android/phone/AddPhoneDialogFragment$CountryCode;
    :catch_0
    move-exception v3

    .line 186
    .local v3, "e":Lorg/json/JSONException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 183
    .end local v3    # "e":Lorg/json/JSONException;
    .restart local v0    # "array":Lorg/json/JSONArray;
    .restart local v1    # "content":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v5    # "result":[Lcom/coinbase/android/phone/AddPhoneDialogFragment$CountryCode;
    :cond_0
    return-object v5
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Lroboguice/fragment/RoboDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/coinbase/android/phone/AddPhoneDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/coinbase/android/phone/AddPhoneDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/phone/AddPhoneDialogFragment;->mUserPhoneNumber:Ljava/lang/String;

    .line 77
    invoke-virtual {p0}, Lcom/coinbase/android/phone/AddPhoneDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "country"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/phone/AddPhoneDialogFragment;->mCountryAlpha2:Ljava/lang/String;

    .line 78
    invoke-virtual {p0}, Lcom/coinbase/android/phone/AddPhoneDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "show_tfa"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coinbase/android/phone/AddPhoneDialogFragment;->mShowTfa:Z

    .line 80
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 167
    invoke-super {p0, p1}, Lroboguice/fragment/RoboDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 170
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 171
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/coinbase/android/phone/AddPhoneDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030046

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 156
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/phone/AddPhoneDialogFragment$CountryCode;

    .line 157
    .local v0, "country":Lcom/coinbase/android/phone/AddPhoneDialogFragment$CountryCode;
    iget-object v1, p0, Lcom/coinbase/android/phone/AddPhoneDialogFragment;->mCountryCodeLabel:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/coinbase/android/phone/AddPhoneDialogFragment$CountryCode;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
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
    .line 163
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method protected onUserConfirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "tfaToken"    # Ljava/lang/String;
    .param p3, "countryAlpha2"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 148
    iget-object v0, p0, Lcom/coinbase/android/phone/AddPhoneDialogFragment;->mUserPhoneNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coinbase/android/phone/AddPhoneDialogFragment;->mUserPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v0

    const-string v1, "Event - Edit phone number"

    new-array v2, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 151
    :cond_0
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v0

    const-string v1, "Event - Phone verification button clicked"

    new-array v2, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    invoke-super {p0, p1, p2}, Lroboguice/fragment/RoboDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 91
    iget-object v3, p0, Lcom/coinbase/android/phone/AddPhoneDialogFragment;->mUserPhoneNumber:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 92
    iget-object v3, p0, Lcom/coinbase/android/phone/AddPhoneDialogFragment;->mPhoneNumberInput:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/coinbase/android/phone/AddPhoneDialogFragment;->mUserPhoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :cond_0
    iget-boolean v3, p0, Lcom/coinbase/android/phone/AddPhoneDialogFragment;->mShowTfa:Z

    if-eqz v3, :cond_1

    .line 96
    iget-object v3, p0, Lcom/coinbase/android/phone/AddPhoneDialogFragment;->m2faInput:Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 100
    :cond_1
    invoke-direct {p0}, Lcom/coinbase/android/phone/AddPhoneDialogFragment;->getCountryCodes()[Lcom/coinbase/android/phone/AddPhoneDialogFragment$CountryCode;

    move-result-object v0

    .line 101
    .local v0, "countryCodes":[Lcom/coinbase/android/phone/AddPhoneDialogFragment$CountryCode;
    iget-object v3, p0, Lcom/coinbase/android/phone/AddPhoneDialogFragment;->mCountryInput:Landroid/widget/Spinner;

    new-instance v4, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/coinbase/android/phone/AddPhoneDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f0300b9

    invoke-direct {v4, v5, v6, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 102
    iget-object v3, p0, Lcom/coinbase/android/phone/AddPhoneDialogFragment;->mCountryAlpha2:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 103
    const/4 v2, 0x0

    .line 104
    .local v2, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 105
    aget-object v3, v0, v1

    iget-object v3, v3, Lcom/coinbase/android/phone/AddPhoneDialogFragment$CountryCode;->alpha2:Ljava/lang/String;

    iget-object v4, p0, Lcom/coinbase/android/phone/AddPhoneDialogFragment;->mCountryAlpha2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 106
    move v2, v1

    .line 110
    :cond_2
    iget-object v3, p0, Lcom/coinbase/android/phone/AddPhoneDialogFragment;->mCountryInput:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 112
    .end local v1    # "i":I
    .end local v2    # "index":I
    :cond_3
    iget-object v3, p0, Lcom/coinbase/android/phone/AddPhoneDialogFragment;->mCountryInput:Landroid/widget/Spinner;

    invoke-virtual {v3, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 114
    iget-object v3, p0, Lcom/coinbase/android/phone/AddPhoneDialogFragment;->mSkipButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/coinbase/android/phone/AddPhoneDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c004e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 115
    iget-object v3, p0, Lcom/coinbase/android/phone/AddPhoneDialogFragment;->mSkipButton:Landroid/widget/Button;

    new-instance v4, Lcom/coinbase/android/phone/AddPhoneDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/coinbase/android/phone/AddPhoneDialogFragment$1;-><init>(Lcom/coinbase/android/phone/AddPhoneDialogFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v3, p0, Lcom/coinbase/android/phone/AddPhoneDialogFragment;->mVerifyButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/coinbase/android/phone/AddPhoneDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0069

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 123
    iget-object v3, p0, Lcom/coinbase/android/phone/AddPhoneDialogFragment;->mVerifyButton:Landroid/widget/Button;

    new-instance v4, Lcom/coinbase/android/phone/AddPhoneDialogFragment$2;

    invoke-direct {v4, p0}, Lcom/coinbase/android/phone/AddPhoneDialogFragment$2;-><init>(Lcom/coinbase/android/phone/AddPhoneDialogFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    invoke-virtual {p0}, Lcom/coinbase/android/phone/AddPhoneDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/coinbase/android/phone/AddPhoneDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "IS_NEW"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 141
    iget-object v3, p0, Lcom/coinbase/android/phone/AddPhoneDialogFragment;->mSkipButton:Landroid/widget/Button;

    const v4, 0x7f0700b4

    invoke-virtual {p0, v4}, Lcom/coinbase/android/phone/AddPhoneDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v3, p0, Lcom/coinbase/android/phone/AddPhoneDialogFragment;->mVerifyButton:Landroid/widget/Button;

    const v4, 0x7f070066

    invoke-virtual {p0, v4}, Lcom/coinbase/android/phone/AddPhoneDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 144
    :cond_4
    return-void

    .line 104
    .restart local v1    # "i":I
    .restart local v2    # "index":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
