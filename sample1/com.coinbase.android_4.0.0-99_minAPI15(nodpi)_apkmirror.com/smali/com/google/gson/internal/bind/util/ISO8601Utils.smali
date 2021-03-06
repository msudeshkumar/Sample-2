.class public Lcom/google/gson/internal/bind/util/ISO8601Utils;
.super Ljava/lang/Object;
.source "ISO8601Utils.java"


# static fields
.field private static final TIMEZONE_UTC:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkOffset(Ljava/lang/String;IC)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "expected"    # C

    .prologue
    .line 284
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static indexOfNonDigit(Ljava/lang/String;I)I
    .locals 3
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "offset"    # I

    .prologue
    .line 341
    move v1, p1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 342
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 343
    .local v0, "c":C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_0

    const/16 v2, 0x39

    if-le v0, v2, :cond_1

    .line 345
    .end local v0    # "c":C
    .end local v1    # "i":I
    :cond_0
    :goto_1
    return v1

    .line 341
    .restart local v0    # "c":C
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 345
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1
.end method

.method public static parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 32
    .param p0, "date"    # Ljava/lang/String;
    .param p1, "pos"    # Ljava/text/ParsePosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 124
    const/4 v11, 0x0

    .line 126
    .local v11, "fail":Ljava/lang/Exception;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v20

    .line 129
    .local v20, "offset":I
    add-int/lit8 v21, v20, 0x4

    .end local v20    # "offset":I
    .local v21, "offset":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v28

    .line 130
    .local v28, "year":I
    const/16 v29, 0x2d

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v29

    if-eqz v29, :cond_0

    .line 131
    add-int/lit8 v20, v21, 0x1

    .end local v21    # "offset":I
    .restart local v20    # "offset":I
    move/from16 v21, v20

    .line 135
    .end local v20    # "offset":I
    .restart local v21    # "offset":I
    :cond_0
    add-int/lit8 v20, v21, 0x2

    .end local v21    # "offset":I
    .restart local v20    # "offset":I
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v18

    .line 136
    .local v18, "month":I
    const/16 v29, 0x2d

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v29

    if-eqz v29, :cond_11

    .line 137
    add-int/lit8 v20, v20, 0x1

    move/from16 v21, v20

    .line 141
    .end local v20    # "offset":I
    .restart local v21    # "offset":I
    :goto_0
    add-int/lit8 v20, v21, 0x2

    .end local v21    # "offset":I
    .restart local v20    # "offset":I
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v7

    .line 143
    .local v7, "day":I
    const/4 v14, 0x0

    .line 144
    .local v14, "hour":I
    const/16 v17, 0x0

    .line 145
    .local v17, "minutes":I
    const/16 v23, 0x0

    .line 146
    .local v23, "seconds":I
    const/16 v16, 0x0

    .line 149
    .local v16, "milliseconds":I
    const/16 v29, 0x54

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v13

    .line 151
    .local v13, "hasT":Z
    if-nez v13, :cond_1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v29

    move/from16 v0, v29

    move/from16 v1, v20

    if-gt v0, v1, :cond_1

    .line 152
    new-instance v5, Ljava/util/GregorianCalendar;

    add-int/lit8 v29, v18, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-direct {v5, v0, v1, v7}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 154
    .local v5, "calendar":Ljava/util/Calendar;
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 155
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v29

    .line 255
    :goto_1
    return-object v29

    .line 158
    .end local v5    # "calendar":Ljava/util/Calendar;
    :cond_1
    if-eqz v13, :cond_4

    .line 161
    add-int/lit8 v20, v20, 0x1

    add-int/lit8 v21, v20, 0x2

    .end local v20    # "offset":I
    .restart local v21    # "offset":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v14

    .line 162
    const/16 v29, 0x3a

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v29

    if-eqz v29, :cond_2

    .line 163
    add-int/lit8 v20, v21, 0x1

    .end local v21    # "offset":I
    .restart local v20    # "offset":I
    move/from16 v21, v20

    .line 166
    .end local v20    # "offset":I
    .restart local v21    # "offset":I
    :cond_2
    add-int/lit8 v20, v21, 0x2

    .end local v21    # "offset":I
    .restart local v20    # "offset":I
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v17

    .line 167
    const/16 v29, 0x3a

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v29

    if-eqz v29, :cond_10

    .line 168
    add-int/lit8 v20, v20, 0x1

    move/from16 v21, v20

    .line 171
    .end local v20    # "offset":I
    .restart local v21    # "offset":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v29

    move/from16 v0, v29

    move/from16 v1, v21

    if-le v0, v1, :cond_f

    .line 172
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 173
    .local v4, "c":C
    const/16 v29, 0x5a

    move/from16 v0, v29

    if-eq v4, v0, :cond_f

    const/16 v29, 0x2b

    move/from16 v0, v29

    if-eq v4, v0, :cond_f

    const/16 v29, 0x2d

    move/from16 v0, v29

    if-eq v4, v0, :cond_f

    .line 174
    add-int/lit8 v20, v21, 0x2

    .end local v21    # "offset":I
    .restart local v20    # "offset":I
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v23

    .line 175
    const/16 v29, 0x3b

    move/from16 v0, v23

    move/from16 v1, v29

    if-le v0, v1, :cond_3

    const/16 v29, 0x3f

    move/from16 v0, v23

    move/from16 v1, v29

    if-ge v0, v1, :cond_3

    const/16 v23, 0x3b

    .line 177
    :cond_3
    const/16 v29, 0x2e

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v29

    if-eqz v29, :cond_4

    .line 178
    add-int/lit8 v20, v20, 0x1

    .line 179
    add-int/lit8 v29, v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-static {v0, v1}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->indexOfNonDigit(Ljava/lang/String;I)I

    move-result v9

    .line 180
    .local v9, "endOffset":I
    add-int/lit8 v29, v20, 0x3

    move/from16 v0, v29

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v22

    .line 181
    .local v22, "parseEndOffset":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v12

    .line 183
    .local v12, "fraction":I
    sub-int v29, v22, v20

    packed-switch v29, :pswitch_data_0

    .line 191
    move/from16 v16, v12

    .line 193
    :goto_3
    move/from16 v20, v9

    .line 200
    .end local v4    # "c":C
    .end local v9    # "endOffset":I
    .end local v12    # "fraction":I
    .end local v22    # "parseEndOffset":I
    :cond_4
    :goto_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v29

    move/from16 v0, v29

    move/from16 v1, v20

    if-gt v0, v1, :cond_7

    .line 201
    new-instance v29, Ljava/lang/IllegalArgumentException;

    const-string v30, "No time zone indicator"

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v29
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 258
    .end local v7    # "day":I
    .end local v13    # "hasT":Z
    .end local v14    # "hour":I
    .end local v16    # "milliseconds":I
    .end local v17    # "minutes":I
    .end local v18    # "month":I
    .end local v20    # "offset":I
    .end local v23    # "seconds":I
    .end local v28    # "year":I
    :catch_0
    move-exception v8

    .line 259
    .local v8, "e":Ljava/lang/IndexOutOfBoundsException;
    move-object v11, v8

    .line 265
    .end local v8    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_5
    if-nez p0, :cond_e

    const/4 v15, 0x0

    .line 266
    .local v15, "input":Ljava/lang/String;
    :goto_6
    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    .line 267
    .local v19, "msg":Ljava/lang/String;
    if-eqz v19, :cond_5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v29

    if-eqz v29, :cond_6

    .line 268
    :cond_5
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "("

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ")"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 270
    :cond_6
    new-instance v10, Ljava/text/ParseException;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Failed to parse date ["

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "]: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {p1 .. p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v30

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-direct {v10, v0, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 271
    .local v10, "ex":Ljava/text/ParseException;
    invoke-virtual {v10, v11}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 272
    throw v10

    .line 185
    .end local v10    # "ex":Ljava/text/ParseException;
    .end local v15    # "input":Ljava/lang/String;
    .end local v19    # "msg":Ljava/lang/String;
    .restart local v4    # "c":C
    .restart local v7    # "day":I
    .restart local v9    # "endOffset":I
    .restart local v12    # "fraction":I
    .restart local v13    # "hasT":Z
    .restart local v14    # "hour":I
    .restart local v16    # "milliseconds":I
    .restart local v17    # "minutes":I
    .restart local v18    # "month":I
    .restart local v20    # "offset":I
    .restart local v22    # "parseEndOffset":I
    .restart local v23    # "seconds":I
    .restart local v28    # "year":I
    :pswitch_0
    mul-int/lit8 v16, v12, 0xa

    .line 186
    goto :goto_3

    .line 188
    :pswitch_1
    mul-int/lit8 v16, v12, 0x64

    .line 189
    goto :goto_3

    .line 204
    .end local v4    # "c":C
    .end local v9    # "endOffset":I
    .end local v12    # "fraction":I
    .end local v22    # "parseEndOffset":I
    :cond_7
    const/16 v24, 0x0

    .line 205
    .local v24, "timezone":Ljava/util/TimeZone;
    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v26

    .line 207
    .local v26, "timezoneIndicator":C
    const/16 v29, 0x5a

    move/from16 v0, v26

    move/from16 v1, v29

    if-ne v0, v1, :cond_9

    .line 208
    sget-object v24, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    .line 209
    add-int/lit8 v20, v20, 0x1

    .line 244
    :cond_8
    :goto_7
    new-instance v5, Ljava/util/GregorianCalendar;

    move-object/from16 v0, v24

    invoke-direct {v5, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 245
    .restart local v5    # "calendar":Ljava/util/Calendar;
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setLenient(Z)V

    .line 246
    const/16 v29, 0x1

    move/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 247
    const/16 v29, 0x2

    add-int/lit8 v30, v18, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 248
    const/16 v29, 0x5

    move/from16 v0, v29

    invoke-virtual {v5, v0, v7}, Ljava/util/Calendar;->set(II)V

    .line 249
    const/16 v29, 0xb

    move/from16 v0, v29

    invoke-virtual {v5, v0, v14}, Ljava/util/Calendar;->set(II)V

    .line 250
    const/16 v29, 0xc

    move/from16 v0, v29

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 251
    const/16 v29, 0xd

    move/from16 v0, v29

    move/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 252
    const/16 v29, 0xe

    move/from16 v0, v29

    move/from16 v1, v16

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 254
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 255
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v29

    goto/16 :goto_1

    .line 210
    .end local v5    # "calendar":Ljava/util/Calendar;
    :cond_9
    const/16 v29, 0x2b

    move/from16 v0, v26

    move/from16 v1, v29

    if-eq v0, v1, :cond_a

    const/16 v29, 0x2d

    move/from16 v0, v26

    move/from16 v1, v29

    if-ne v0, v1, :cond_d

    .line 211
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    .line 212
    .local v27, "timezoneOffset":Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v29

    add-int v20, v20, v29

    .line 214
    const-string v29, "+0000"

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_b

    const-string v29, "+00:00"

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_c

    .line 215
    :cond_b
    sget-object v24, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    goto/16 :goto_7

    .line 221
    :cond_c
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "GMT"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 224
    .local v25, "timezoneId":Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v24

    .line 226
    invoke-virtual/range {v24 .. v24}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    .line 227
    .local v3, "act":Ljava/lang/String;
    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_8

    .line 233
    const-string v29, ":"

    const-string v30, ""

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 234
    .local v6, "cleaned":Ljava/lang/String;
    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_8

    .line 235
    new-instance v29, Ljava/lang/IndexOutOfBoundsException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Mismatching time zone indicator: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " given, resolves to "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 236
    invoke-virtual/range {v24 .. v24}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 260
    .end local v3    # "act":Ljava/lang/String;
    .end local v6    # "cleaned":Ljava/lang/String;
    .end local v7    # "day":I
    .end local v13    # "hasT":Z
    .end local v14    # "hour":I
    .end local v16    # "milliseconds":I
    .end local v17    # "minutes":I
    .end local v18    # "month":I
    .end local v20    # "offset":I
    .end local v23    # "seconds":I
    .end local v24    # "timezone":Ljava/util/TimeZone;
    .end local v25    # "timezoneId":Ljava/lang/String;
    .end local v26    # "timezoneIndicator":C
    .end local v27    # "timezoneOffset":Ljava/lang/String;
    .end local v28    # "year":I
    :catch_1
    move-exception v8

    .line 261
    .local v8, "e":Ljava/lang/NumberFormatException;
    move-object v11, v8

    .line 264
    goto/16 :goto_5

    .line 241
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    .restart local v7    # "day":I
    .restart local v13    # "hasT":Z
    .restart local v14    # "hour":I
    .restart local v16    # "milliseconds":I
    .restart local v17    # "minutes":I
    .restart local v18    # "month":I
    .restart local v20    # "offset":I
    .restart local v23    # "seconds":I
    .restart local v24    # "timezone":Ljava/util/TimeZone;
    .restart local v26    # "timezoneIndicator":C
    .restart local v28    # "year":I
    :cond_d
    new-instance v29, Ljava/lang/IndexOutOfBoundsException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Invalid time zone indicator \'"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "\'"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v29
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 262
    .end local v7    # "day":I
    .end local v13    # "hasT":Z
    .end local v14    # "hour":I
    .end local v16    # "milliseconds":I
    .end local v17    # "minutes":I
    .end local v18    # "month":I
    .end local v20    # "offset":I
    .end local v23    # "seconds":I
    .end local v24    # "timezone":Ljava/util/TimeZone;
    .end local v26    # "timezoneIndicator":C
    .end local v28    # "year":I
    :catch_2
    move-exception v8

    .line 263
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    move-object v11, v8

    goto/16 :goto_5

    .line 265
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :cond_e
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v30, 0x22

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\'"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_6

    .restart local v7    # "day":I
    .restart local v13    # "hasT":Z
    .restart local v14    # "hour":I
    .restart local v16    # "milliseconds":I
    .restart local v17    # "minutes":I
    .restart local v18    # "month":I
    .restart local v21    # "offset":I
    .restart local v23    # "seconds":I
    .restart local v28    # "year":I
    :cond_f
    move/from16 v20, v21

    .end local v21    # "offset":I
    .restart local v20    # "offset":I
    goto/16 :goto_4

    :cond_10
    move/from16 v21, v20

    .end local v20    # "offset":I
    .restart local v21    # "offset":I
    goto/16 :goto_2

    .end local v7    # "day":I
    .end local v13    # "hasT":Z
    .end local v14    # "hour":I
    .end local v16    # "milliseconds":I
    .end local v17    # "minutes":I
    .end local v21    # "offset":I
    .end local v23    # "seconds":I
    .restart local v20    # "offset":I
    :cond_11
    move/from16 v21, v20

    .end local v20    # "offset":I
    .restart local v21    # "offset":I
    goto/16 :goto_0

    .line 183
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseInt(Ljava/lang/String;II)I
    .locals 7
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xa

    .line 297
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-gt p2, v4, :cond_0

    if-le p1, p2, :cond_1

    .line 298
    :cond_0
    new-instance v4, Ljava/lang/NumberFormatException;

    invoke-direct {v4, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 301
    :cond_1
    move v1, p1

    .line 302
    .local v1, "i":I
    const/4 v3, 0x0

    .line 304
    .local v3, "result":I
    if-ge v1, p2, :cond_5

    .line 305
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 306
    .local v0, "digit":I
    if-gez v0, :cond_2

    .line 307
    new-instance v4, Ljava/lang/NumberFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 309
    :cond_2
    neg-int v3, v0

    .line 311
    .end local v0    # "digit":I
    :goto_0
    if-ge v2, p2, :cond_4

    .line 312
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 313
    .restart local v0    # "digit":I
    if-gez v0, :cond_3

    .line 314
    new-instance v4, Ljava/lang/NumberFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 316
    :cond_3
    mul-int/lit8 v3, v3, 0xa

    .line 317
    sub-int/2addr v3, v0

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 319
    .end local v0    # "digit":I
    :cond_4
    neg-int v4, v3

    return v4

    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_5
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0
.end method
