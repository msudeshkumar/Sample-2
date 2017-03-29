.class public Lcom/coinbase/android/phone/DeletePhoneTask;
.super Ljava/lang/Object;
.source "DeletePhoneTask.java"


# instance fields
.field private isVerified:Z

.field mActivity:Landroid/support/v7/app/AppCompatActivity;

.field mBus:Lcom/squareup/otto/Bus;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field private mId:Ljava/lang/String;

.field mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field mProgressDialog:Landroid/app/ProgressDialog;

.field private mTfaToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/AppCompatActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "activity"    # Landroid/support/v7/app/AppCompatActivity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "tfaToken"    # Ljava/lang/String;
    .param p5, "isVerified"    # Z

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/coinbase/android/phone/DeletePhoneTask;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    .line 42
    iput-object p2, p0, Lcom/coinbase/android/phone/DeletePhoneTask;->mContext:Landroid/content/Context;

    .line 43
    iput-object p3, p0, Lcom/coinbase/android/phone/DeletePhoneTask;->mId:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/coinbase/android/phone/DeletePhoneTask;->mTfaToken:Ljava/lang/String;

    .line 45
    iput-boolean p5, p0, Lcom/coinbase/android/phone/DeletePhoneTask;->isVerified:Z

    .line 47
    invoke-static {p2}, Lroboguice/RoboGuice;->getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;

    move-result-object v0

    .line 48
    .local v0, "injector":Lroboguice/inject/RoboInjector;
    invoke-interface {v0, p0}, Lroboguice/inject/RoboInjector;->injectMembersWithoutViews(Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/coinbase/android/phone/DeletePhoneTask;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/phone/DeletePhoneTask;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/coinbase/android/phone/DeletePhoneTask;->mId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/coinbase/android/phone/DeletePhoneTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/phone/DeletePhoneTask;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/coinbase/android/phone/DeletePhoneTask;->isVerified:Z

    return v0
.end method


# virtual methods
.method public deletePhoneNumber()V
    .locals 4

    .prologue
    .line 52
    iget-object v0, p0, Lcom/coinbase/android/phone/DeletePhoneTask;->mContext:Landroid/content/Context;

    const-string v1, ""

    iget-object v2, p0, Lcom/coinbase/android/phone/DeletePhoneTask;->mContext:Landroid/content/Context;

    const v3, 0x7f0700ec

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/phone/DeletePhoneTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 54
    iget-object v0, p0, Lcom/coinbase/android/phone/DeletePhoneTask;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v0}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/coinbase/android/phone/DeletePhoneTask;->mTfaToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/coinbase/android/phone/DeletePhoneTask;->mId:Ljava/lang/String;

    new-instance v3, Lcom/coinbase/android/phone/DeletePhoneTask$1;

    invoke-direct {v3, p0}, Lcom/coinbase/android/phone/DeletePhoneTask$1;-><init>(Lcom/coinbase/android/phone/DeletePhoneTask;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/coinbase/api/internal/CoinbaseInternal;->deletePhoneNumber(Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V

    .line 91
    return-void
.end method
