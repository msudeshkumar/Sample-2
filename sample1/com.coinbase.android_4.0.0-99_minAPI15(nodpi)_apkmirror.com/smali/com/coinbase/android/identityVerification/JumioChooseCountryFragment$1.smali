.class Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$1;
.super Ljava/lang/Thread;
.source "JumioChooseCountryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;->getImageBitmap(Ljava/lang/String;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$vw:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$1;->this$0:Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;

    iput-object p2, p0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$1;->val$vw:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 133
    :try_start_0
    iget-object v6, p0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$1;->this$0:Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;

    invoke-virtual {v6}, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    if-nez v6, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    new-instance v0, Ljava/net/URL;

    iget-object v6, p0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$1;->val$url:Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, "aURL":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .line 138
    .local v4, "conn":Ljava/net/URLConnection;
    invoke-virtual {v4}, Ljava/net/URLConnection;->connect()V

    .line 139
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 140
    .local v5, "is":Ljava/io/InputStream;
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 141
    .local v2, "bis":Ljava/io/BufferedInputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 142
    .local v3, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 143
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 144
    iget-object v6, p0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$1;->this$0:Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;

    invoke-virtual {v6}, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 145
    .local v1, "act":Landroid/app/Activity;
    if-eqz v1, :cond_0

    .line 147
    new-instance v6, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$1$1;

    invoke-direct {v6, p0, v3}, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$1$1;-><init>(Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    .end local v0    # "aURL":Ljava/net/URL;
    .end local v1    # "act":Landroid/app/Activity;
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "bm":Landroid/graphics/Bitmap;
    .end local v4    # "conn":Ljava/net/URLConnection;
    .end local v5    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v6

    goto :goto_0
.end method
