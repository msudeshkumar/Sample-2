.class public Lcom/coinbase/api/internal/deserializer/MFALifter;
.super Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
.source "MFALifter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer",
        "<",
        "Lcom/coinbase/api/internal/entity/MFA;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/coinbase/api/internal/entity/MFA;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V

    .line 16
    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/coinbase/api/internal/entity/MFA;
    .locals 19
    .param p1, "jp"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 20
    new-instance v7, Lcom/coinbase/api/internal/entity/MFA;

    invoke-direct {v7}, Lcom/coinbase/api/internal/entity/MFA;-><init>()V

    .line 21
    .local v7, "mfa":Lcom/coinbase/api/internal/entity/MFA;
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/ObjectCodec;->readTree(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/TreeNode;

    move-result-object v8

    check-cast v8, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 22
    .local v8, "node":Lcom/fasterxml/jackson/databind/JsonNode;
    const-string v17, "type"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 23
    const-string v17, "type"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/coinbase/api/internal/entity/MFA$Type;->create(Ljava/lang/String;)Lcom/coinbase/api/internal/entity/MFA$Type;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/coinbase/api/internal/entity/MFA;->setType(Lcom/coinbase/api/internal/entity/MFA$Type;)V

    .line 25
    sget-object v17, Lcom/coinbase/api/internal/deserializer/MFALifter$1;->$SwitchMap$com$coinbase$api$internal$entity$MFA$Type:[I

    invoke-virtual {v7}, Lcom/coinbase/api/internal/entity/MFA;->getType()Lcom/coinbase/api/internal/entity/MFA$Type;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/coinbase/api/internal/entity/MFA$Type;->ordinal()I

    move-result v18

    aget v17, v17, v18

    packed-switch v17, :pswitch_data_0

    .line 68
    :cond_0
    :goto_0
    return-object v7

    .line 27
    :pswitch_0
    const-string v17, "data"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->findValue(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v11

    .line 28
    .local v11, "questionsList":Lcom/fasterxml/jackson/databind/JsonNode;
    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/JsonNode;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v10, v0, [Ljava/lang/String;

    .line 29
    .local v10, "questions":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/JsonNode;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v4, v0, :cond_1

    .line 30
    invoke-virtual {v11, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v17

    const-string v18, "question"

    invoke-virtual/range {v17 .. v18}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v10, v4

    .line 29
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {v7, v10}, Lcom/coinbase/api/internal/entity/MFA;->setQuestions([Ljava/lang/String;)V

    goto :goto_0

    .line 35
    .end local v4    # "i":I
    .end local v10    # "questions":[Ljava/lang/String;
    .end local v11    # "questionsList":Lcom/fasterxml/jackson/databind/JsonNode;
    :pswitch_1
    const-string v17, "data"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->findValue(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v14

    .line 36
    .local v14, "selectionsList":Lcom/fasterxml/jackson/databind/JsonNode;
    invoke-virtual {v14}, Lcom/fasterxml/jackson/databind/JsonNode;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v13, v0, [Lcom/coinbase/api/internal/entity/MFA$Selection;

    .line 37
    .local v13, "selections":[Lcom/coinbase/api/internal/entity/MFA$Selection;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    invoke-virtual {v14}, Lcom/fasterxml/jackson/databind/JsonNode;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v4, v0, :cond_3

    .line 38
    new-instance v12, Lcom/coinbase/api/internal/entity/MFA$Selection;

    invoke-direct {v12}, Lcom/coinbase/api/internal/entity/MFA$Selection;-><init>()V

    .line 39
    .local v12, "selection":Lcom/coinbase/api/internal/entity/MFA$Selection;
    invoke-virtual {v14, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v6

    .line 40
    .local v6, "jsonNode":Lcom/fasterxml/jackson/databind/JsonNode;
    const-string v17, "question"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/coinbase/api/internal/entity/MFA$Selection;->setQuestion(Ljava/lang/String;)V

    .line 41
    const-string v17, "answers"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->findValue(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    .line 42
    .local v3, "answersNodes":Lcom/fasterxml/jackson/databind/JsonNode;
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v2, v0, [Ljava/lang/String;

    .line 43
    .local v2, "answers":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_3
    array-length v0, v2

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v5, v0, :cond_2

    .line 44
    invoke-virtual {v3, v5}, Lcom/fasterxml/jackson/databind/JsonNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v2, v5

    .line 43
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 46
    :cond_2
    invoke-virtual {v12, v2}, Lcom/coinbase/api/internal/entity/MFA$Selection;->setAnswers([Ljava/lang/String;)V

    .line 47
    aput-object v12, v13, v4

    .line 37
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 49
    .end local v2    # "answers":[Ljava/lang/String;
    .end local v3    # "answersNodes":Lcom/fasterxml/jackson/databind/JsonNode;
    .end local v5    # "j":I
    .end local v6    # "jsonNode":Lcom/fasterxml/jackson/databind/JsonNode;
    .end local v12    # "selection":Lcom/coinbase/api/internal/entity/MFA$Selection;
    :cond_3
    invoke-virtual {v7, v13}, Lcom/coinbase/api/internal/entity/MFA;->setSelections([Lcom/coinbase/api/internal/entity/MFA$Selection;)V

    goto/16 :goto_0

    .line 52
    .end local v4    # "i":I
    .end local v13    # "selections":[Lcom/coinbase/api/internal/entity/MFA$Selection;
    .end local v14    # "selectionsList":Lcom/fasterxml/jackson/databind/JsonNode;
    :pswitch_2
    const-string v17, "data"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->findValue(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v15

    .line 53
    .local v15, "sendOptionsList":Lcom/fasterxml/jackson/databind/JsonNode;
    if-eqz v15, :cond_0

    .line 54
    invoke-virtual {v15}, Lcom/fasterxml/jackson/databind/JsonNode;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Lcom/coinbase/api/internal/entity/MFA$SendOption;

    move-object/from16 v16, v0

    .line 55
    .local v16, "sendoptions":[Lcom/coinbase/api/internal/entity/MFA$SendOption;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    invoke-virtual {v15}, Lcom/fasterxml/jackson/databind/JsonNode;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v4, v0, :cond_4

    .line 56
    new-instance v9, Lcom/coinbase/api/internal/entity/MFA$SendOption;

    invoke-direct {v9}, Lcom/coinbase/api/internal/entity/MFA$SendOption;-><init>()V

    .line 57
    .local v9, "option":Lcom/coinbase/api/internal/entity/MFA$SendOption;
    invoke-virtual {v15, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v6

    .line 58
    .restart local v6    # "jsonNode":Lcom/fasterxml/jackson/databind/JsonNode;
    const-string v17, "type"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/coinbase/api/internal/entity/MFA$SendOption$Type;->create(Ljava/lang/String;)Lcom/coinbase/api/internal/entity/MFA$SendOption$Type;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/coinbase/api/internal/entity/MFA$SendOption;->setType(Lcom/coinbase/api/internal/entity/MFA$SendOption$Type;)V

    .line 59
    const-string v17, "mask"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/coinbase/api/internal/entity/MFA$SendOption;->setMask(Ljava/lang/String;)V

    .line 60
    aput-object v9, v16, v4

    .line 55
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 62
    .end local v6    # "jsonNode":Lcom/fasterxml/jackson/databind/JsonNode;
    .end local v9    # "option":Lcom/coinbase/api/internal/entity/MFA$SendOption;
    :cond_4
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/coinbase/api/internal/entity/MFA;->setSendOptions([Lcom/coinbase/api/internal/entity/MFA$SendOption;)V

    goto/16 :goto_0

    .line 25
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/coinbase/api/internal/deserializer/MFALifter;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/coinbase/api/internal/entity/MFA;

    move-result-object v0

    return-object v0
.end method
