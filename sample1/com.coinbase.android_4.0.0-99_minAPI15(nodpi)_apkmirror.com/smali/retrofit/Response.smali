.class public final Lretrofit/Response;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final body:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final errorBody:Lcom/squareup/okhttp/ResponseBody;

.field private final rawResponse:Lcom/squareup/okhttp/Response;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/Response;Ljava/lang/Object;Lcom/squareup/okhttp/ResponseBody;)V
    .locals 1
    .param p1, "rawResponse"    # Lcom/squareup/okhttp/Response;
    .param p3, "errorBody"    # Lcom/squareup/okhttp/ResponseBody;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/okhttp/Response;",
            "TT;",
            "Lcom/squareup/okhttp/ResponseBody;",
            ")V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lretrofit/Response;, "Lretrofit/Response<TT;>;"
    .local p2, "body":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-string v0, "rawResponse == null"

    invoke-static {p1, v0}, Lretrofit/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/Response;

    iput-object v0, p0, Lretrofit/Response;->rawResponse:Lcom/squareup/okhttp/Response;

    .line 73
    iput-object p2, p0, Lretrofit/Response;->body:Ljava/lang/Object;

    .line 74
    iput-object p3, p0, Lretrofit/Response;->errorBody:Lcom/squareup/okhttp/ResponseBody;

    .line 75
    return-void
.end method

.method public static error(Lcom/squareup/okhttp/ResponseBody;Lcom/squareup/okhttp/Response;)Lretrofit/Response;
    .locals 2
    .param p0, "body"    # Lcom/squareup/okhttp/ResponseBody;
    .param p1, "rawResponse"    # Lcom/squareup/okhttp/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/okhttp/ResponseBody;",
            "Lcom/squareup/okhttp/Response;",
            ")",
            "Lretrofit/Response",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Lretrofit/Response;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0}, Lretrofit/Response;-><init>(Lcom/squareup/okhttp/Response;Ljava/lang/Object;Lcom/squareup/okhttp/ResponseBody;)V

    return-object v0
.end method

.method public static success(Ljava/lang/Object;Lcom/squareup/okhttp/Response;)Lretrofit/Response;
    .locals 2
    .param p1, "rawResponse"    # Lcom/squareup/okhttp/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/squareup/okhttp/Response;",
            ")",
            "Lretrofit/Response",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "body":Ljava/lang/Object;, "TT;"
    new-instance v0, Lretrofit/Response;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lretrofit/Response;-><init>(Lcom/squareup/okhttp/Response;Ljava/lang/Object;Lcom/squareup/okhttp/ResponseBody;)V

    return-object v0
.end method


# virtual methods
.method public body()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lretrofit/Response;, "Lretrofit/Response<TT;>;"
    iget-object v0, p0, Lretrofit/Response;->body:Ljava/lang/Object;

    return-object v0
.end method

.method public errorBody()Lcom/squareup/okhttp/ResponseBody;
    .locals 1

    .prologue
    .line 108
    .local p0, "this":Lretrofit/Response;, "Lretrofit/Response<TT;>;"
    iget-object v0, p0, Lretrofit/Response;->errorBody:Lcom/squareup/okhttp/ResponseBody;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 98
    .local p0, "this":Lretrofit/Response;, "Lretrofit/Response<TT;>;"
    iget-object v0, p0, Lretrofit/Response;->rawResponse:Lcom/squareup/okhttp/Response;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->isSuccessful()Z

    move-result v0

    return v0
.end method
