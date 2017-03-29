.class public Lau/com/bytecode/opencsv/CSVReader;
.super Ljava/lang/Object;
.source "CSVReader.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private br:Ljava/io/BufferedReader;

.field private final escape:C

.field private hasNext:Z

.field private linesSkiped:Z

.field private final quotechar:C

.field private final separator:C

.field private skipLines:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;

    .prologue
    .line 78
    const/16 v0, 0x2c

    invoke-direct {p0, p1, v0}, Lau/com/bytecode/opencsv/CSVReader;-><init>(Ljava/io/Reader;C)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;C)V
    .locals 2
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "separator"    # C

    .prologue
    .line 90
    const/16 v0, 0x22

    const/16 v1, 0x5c

    invoke-direct {p0, p1, p2, v0, v1}, Lau/com/bytecode/opencsv/CSVReader;-><init>(Ljava/io/Reader;CCC)V

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;CCC)V
    .locals 6
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "separator"    # C
    .param p3, "quotechar"    # C
    .param p4, "escape"    # C

    .prologue
    .line 111
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lau/com/bytecode/opencsv/CSVReader;-><init>(Ljava/io/Reader;CCCI)V

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;CCCI)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "separator"    # C
    .param p3, "quotechar"    # C
    .param p4, "escape"    # C
    .param p5, "line"    # I

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lau/com/bytecode/opencsv/CSVReader;->hasNext:Z

    .line 145
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lau/com/bytecode/opencsv/CSVReader;->br:Ljava/io/BufferedReader;

    .line 146
    iput-char p2, p0, Lau/com/bytecode/opencsv/CSVReader;->separator:C

    .line 147
    iput-char p3, p0, Lau/com/bytecode/opencsv/CSVReader;->quotechar:C

    .line 148
    iput-char p4, p0, Lau/com/bytecode/opencsv/CSVReader;->escape:C

    .line 149
    iput p5, p0, Lau/com/bytecode/opencsv/CSVReader;->skipLines:I

    .line 150
    return-void
.end method

.method private getNextLine()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    iget-boolean v2, p0, Lau/com/bytecode/opencsv/CSVReader;->linesSkiped:Z

    if-nez v2, :cond_1

    .line 199
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lau/com/bytecode/opencsv/CSVReader;->skipLines:I

    if-ge v0, v2, :cond_0

    .line 200
    iget-object v2, p0, Lau/com/bytecode/opencsv/CSVReader;->br:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lau/com/bytecode/opencsv/CSVReader;->linesSkiped:Z

    .line 204
    .end local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lau/com/bytecode/opencsv/CSVReader;->br:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "nextLine":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 206
    const/4 v2, 0x0

    iput-boolean v2, p0, Lau/com/bytecode/opencsv/CSVReader;->hasNext:Z

    .line 208
    :cond_2
    iget-boolean v2, p0, Lau/com/bytecode/opencsv/CSVReader;->hasNext:Z

    if-eqz v2, :cond_3

    .end local v1    # "nextLine":Ljava/lang/String;
    :goto_1
    return-object v1

    .restart local v1    # "nextLine":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private isEscapable(Ljava/lang/String;ZI)Z
    .locals 2
    .param p1, "nextLine"    # Ljava/lang/String;
    .param p2, "inQuotes"    # Z
    .param p3, "i"    # I

    .prologue
    .line 295
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, p3, 0x1

    if-le v0, v1, :cond_1

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget-char v1, p0, Lau/com/bytecode/opencsv/CSVReader;->quotechar:C

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget-char v1, p0, Lau/com/bytecode/opencsv/CSVReader;->escape:C

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEscapedQuote(Ljava/lang/String;ZI)Z
    .locals 2
    .param p1, "nextLine"    # Ljava/lang/String;
    .param p2, "inQuotes"    # Z
    .param p3, "i"    # I

    .prologue
    .line 282
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, p3, 0x1

    if-le v0, v1, :cond_0

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget-char v1, p0, Lau/com/bytecode/opencsv/CSVReader;->quotechar:C

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseLine(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p1, "nextLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x40

    const/4 v5, 0x0

    .line 221
    if-nez p1, :cond_0

    .line 222
    const/4 v5, 0x0

    .line 270
    :goto_0
    return-object v5

    .line 225
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v4, "tokensOnThisLine":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 227
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 229
    .local v2, "inQuotes":Z
    :cond_1
    if-eqz v2, :cond_2

    .line 231
    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-direct {p0}, Lau/com/bytecode/opencsv/CSVReader;->getNextLine()Ljava/lang/String;

    move-result-object p1

    .line 233
    if-nez p1, :cond_2

    .line 269
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    goto :goto_0

    .line 236
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_a

    .line 238
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 239
    .local v0, "c":C
    iget-char v6, p0, Lau/com/bytecode/opencsv/CSVReader;->escape:C

    if-ne v0, v6, :cond_5

    .line 240
    invoke-direct {p0, p1, v2, v1}, Lau/com/bytecode/opencsv/CSVReader;->isEscapable(Ljava/lang/String;ZI)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 241
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 242
    add-int/lit8 v1, v1, 0x1

    .line 236
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 244
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 246
    :cond_5
    iget-char v6, p0, Lau/com/bytecode/opencsv/CSVReader;->quotechar:C

    if-ne v0, v6, :cond_8

    .line 247
    invoke-direct {p0, p1, v2, v1}, Lau/com/bytecode/opencsv/CSVReader;->isEscapedQuote(Ljava/lang/String;ZI)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 248
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 251
    :cond_6
    if-nez v2, :cond_7

    const/4 v2, 0x1

    .line 253
    :goto_4
    const/4 v6, 0x2

    if-le v1, v6, :cond_3

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iget-char v7, p0, Lau/com/bytecode/opencsv/CSVReader;->separator:C

    if-eq v6, v7, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v7, v1, 0x1

    if-le v6, v7, :cond_3

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iget-char v7, p0, Lau/com/bytecode/opencsv/CSVReader;->separator:C

    if-eq v6, v7, :cond_3

    .line 258
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    move v2, v5

    .line 251
    goto :goto_4

    .line 261
    :cond_8
    iget-char v6, p0, Lau/com/bytecode/opencsv/CSVReader;->separator:C

    if-ne v0, v6, :cond_9

    if-nez v2, :cond_9

    .line 262
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "sb":Ljava/lang/StringBuilder;
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    goto :goto_3

    .line 265
    :cond_9
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 268
    .end local v0    # "c":C
    :cond_a
    if-nez v2, :cond_1

    goto/16 :goto_1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    iget-object v0, p0, Lau/com/bytecode/opencsv/CSVReader;->br:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 307
    return-void
.end method

.method public readNext()[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-direct {p0}, Lau/com/bytecode/opencsv/CSVReader;->getNextLine()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "nextLine":Ljava/lang/String;
    iget-boolean v1, p0, Lau/com/bytecode/opencsv/CSVReader;->hasNext:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lau/com/bytecode/opencsv/CSVReader;->parseLine(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
