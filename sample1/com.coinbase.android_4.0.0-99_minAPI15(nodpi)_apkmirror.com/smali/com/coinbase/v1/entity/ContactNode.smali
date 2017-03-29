.class public Lcom/coinbase/v1/entity/ContactNode;
.super Ljava/lang/Object;
.source "ContactNode.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x8eb54958203989dL


# instance fields
.field private _contact:Lcom/coinbase/v1/entity/Contact;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContact()Lcom/coinbase/v1/entity/Contact;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/coinbase/v1/entity/ContactNode;->_contact:Lcom/coinbase/v1/entity/Contact;

    return-object v0
.end method

.method public setContact(Lcom/coinbase/v1/entity/Contact;)V
    .locals 0
    .param p1, "contact"    # Lcom/coinbase/v1/entity/Contact;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/coinbase/v1/entity/ContactNode;->_contact:Lcom/coinbase/v1/entity/Contact;

    .line 18
    return-void
.end method
