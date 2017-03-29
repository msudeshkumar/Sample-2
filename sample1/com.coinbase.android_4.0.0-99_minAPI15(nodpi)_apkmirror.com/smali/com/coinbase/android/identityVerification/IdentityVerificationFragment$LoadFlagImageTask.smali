.class Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$LoadFlagImageTask;
.super Landroid/os/AsyncTask;
.source "IdentityVerificationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadFlagImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;


# direct methods
.method private constructor <init>(Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$LoadFlagImageTask;->this$0:Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;
    .param p2, "x1"    # Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$1;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$LoadFlagImageTask;-><init>(Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 91
    :try_start_0
    new-instance v4, Ljava/net/URL;

    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 92
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 93
    .local v1, "connection":Ljava/net/HttpURLConnection;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 94
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 95
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 96
    .local v3, "input":Ljava/io/InputStream;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 100
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v4    # "url":Ljava/net/URL;
    :goto_0
    return-object v0

    .line 98
    :catch_0
    move-exception v2

    .line 100
    .local v2, "e":Ljava/io/IOException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 84
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$LoadFlagImageTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$LoadFlagImageTask;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 107
    if-eqz p1, :cond_1

    .line 108
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$LoadFlagImageTask;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$LoadFlagImageTask;->imageView:Landroid/widget/ImageView;

    const v1, 0x7f020113

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 84
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$LoadFlagImageTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
