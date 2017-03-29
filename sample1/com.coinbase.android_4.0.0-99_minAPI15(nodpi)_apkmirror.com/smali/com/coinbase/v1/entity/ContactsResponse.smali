.class public Lcom/coinbase/v1/entity/ContactsResponse;
.super Lcom/coinbase/v1/entity/Response;
.source "ContactsResponse.java"


# static fields
.field private static final serialVersionUID:J = 0x15ebe6b0dd434a16L


# instance fields
.field private _contacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v1/entity/Contact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/coinbase/v1/entity/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public getContacts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v1/entity/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Lcom/coinbase/v1/entity/ContactsResponse;->_contacts:Ljava/util/List;

    return-object v0
.end method

.method public setContacts(Ljava/util/List;)V
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        converter = Lcom/coinbase/v1/deserializer/ContactsLifter;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v1/entity/Contact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v1/entity/Contact;>;"
    iput-object p1, p0, Lcom/coinbase/v1/entity/ContactsResponse;->_contacts:Ljava/util/List;

    .line 22
    return-void
.end method
