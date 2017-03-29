.class public abstract Lcom/fasterxml/jackson/databind/node/ContainerNode;
.super Lcom/fasterxml/jackson/databind/node/BaseJsonNode;
.source "ContainerNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/fasterxml/jackson/databind/node/ContainerNode",
        "<TT;>;>",
        "Lcom/fasterxml/jackson/databind/node/BaseJsonNode;"
    }
.end annotation


# instance fields
.field protected final _nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V
    .locals 0
    .param p1, "nc"    # Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .prologue
    .line 26
    .local p0, "this":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<TT;>;"
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/node/BaseJsonNode;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .line 28
    return-void
.end method


# virtual methods
.method public final arrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 1

    .prologue
    .line 66
    .local p0, "this":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->arrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    return-object v0
.end method

.method public asText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    .local p0, "this":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<TT;>;"
    const-string v0, ""

    return-object v0
.end method

.method public final booleanNode(Z)Lcom/fasterxml/jackson/databind/node/BooleanNode;
    .locals 1
    .param p1, "v"    # Z

    .prologue
    .line 79
    .local p0, "this":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->booleanNode(Z)Lcom/fasterxml/jackson/databind/node/BooleanNode;

    move-result-object v0

    return-object v0
.end method

.method public final nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;
    .locals 1

    .prologue
    .line 76
    .local p0, "this":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v0

    return-object v0
.end method

.method public final objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1

    .prologue
    .line 73
    .local p0, "this":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public final textNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/TextNode;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 119
    .local p0, "this":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->textNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/TextNode;

    move-result-object v0

    return-object v0
.end method
