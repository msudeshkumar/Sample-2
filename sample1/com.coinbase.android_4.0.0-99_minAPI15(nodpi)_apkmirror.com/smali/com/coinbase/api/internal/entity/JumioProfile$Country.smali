.class public Lcom/coinbase/api/internal/entity/JumioProfile$Country;
.super Ljava/lang/Object;
.source "JumioProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/api/internal/entity/JumioProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Country"
.end annotation


# instance fields
.field public _code:Ljava/lang/String;

.field public _image:Ljava/lang/String;

.field public _name:Ljava/lang/String;

.field final synthetic this$0:Lcom/coinbase/api/internal/entity/JumioProfile;


# direct methods
.method public constructor <init>(Lcom/coinbase/api/internal/entity/JumioProfile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/api/internal/entity/JumioProfile;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/JumioProfile$Country;->this$0:Lcom/coinbase/api/internal/entity/JumioProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/JumioProfile$Country;->_code:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/JumioProfile$Country;->_image:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/JumioProfile$Country;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/JumioProfile$Country;->_code:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "image"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/JumioProfile$Country;->_image:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/JumioProfile$Country;->_name:Ljava/lang/String;

    .line 61
    return-void
.end method
