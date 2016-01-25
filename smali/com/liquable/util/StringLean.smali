.class public final Lcom/liquable/util/StringLean;
.super Ljava/lang/Object;
.source "StringLean.java"


# static fields
.field private static final ANGLE_BRACKET_PATTERN:Ljava/lang/String; = "[\\<\\>]"

.field public static final EMPTY:Ljava/lang/String; = ""

.field private static final STRONG_UNSAFE_CHARS:[C

.field private static final STRONG_UNSAFE_CHARS_PATTERN:Ljava/lang/String;

.field private static final UNSAFE_CHARS:[C

.field private static final UNSAFE_CHARS_PATTERN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 319
    const/16 v3, 0x8

    new-array v3, v3, [C

    fill-array-data v3, :array_0

    sput-object v3, Lcom/liquable/util/StringLean;->UNSAFE_CHARS:[C

    .line 331
    const/16 v3, 0x13

    new-array v3, v3, [C

    fill-array-data v3, :array_1

    sput-object v3, Lcom/liquable/util/StringLean;->STRONG_UNSAFE_CHARS:[C

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    sget-object v4, Lcom/liquable/util/StringLean;->UNSAFE_CHARS:[C

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_0

    aget-char v1, v4, v3

    .line 362
    .local v1, "unsafeChar":C
    const-string/jumbo v6, "\\"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 361
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 365
    .end local v1    # "unsafeChar":C
    :cond_0
    const-string/jumbo v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/liquable/util/StringLean;->UNSAFE_CHARS_PATTERN:Ljava/lang/String;

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "sb":Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 371
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    sget-object v3, Lcom/liquable/util/StringLean;->STRONG_UNSAFE_CHARS:[C

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_1

    aget-char v1, v3, v2

    .line 373
    .restart local v1    # "unsafeChar":C
    const-string/jumbo v5, "\\"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 372
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 376
    .end local v1    # "unsafeChar":C
    :cond_1
    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/liquable/util/StringLean;->STRONG_UNSAFE_CHARS_PATTERN:Ljava/lang/String;

    .line 378
    return-void

    .line 319
    nop

    :array_0
    .array-data 2
        0x7bs
        0x7ds
        0x5bs
        0x5ds
        0x5cs
        0x3cs
        0x3es
        0x22s
    .end array-data

    .line 331
    :array_1
    .array-data 2
        0x7bs
        0x7ds
        0x5bs
        0x5ds
        0x5cs
        0x3cs
        0x3es
        0x22s
        0x26s
        0x3fs
        0x27s
        0x25s
        0x24s
        0x23s
        0x3bs
        0x3as
        0x2fs
        0x2cs
        0x3ds
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static defaultString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 15
    if-nez p0, :cond_0

    const-string/jumbo p0, ""

    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static encodeUCS2(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "src"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 19
    const-string/jumbo v4, "UTF-16BE"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 20
    .local v1, "bytes":[B
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 21
    .local v3, "reValue":Ljava/lang/StringBuffer;
    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-byte v0, v1, v4

    .line 22
    .local v0, "b":B
    and-int/lit16 v6, v0, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 23
    .local v2, "hex":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 24
    const-string/jumbo v6, "%0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 21
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 26
    :cond_0
    const-string/jumbo v6, "%"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 29
    .end local v0    # "b":B
    .end local v2    # "hex":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {p0}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p1    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "defaultValue":Ljava/lang/String;
    :cond_0
    move-object p1, p0

    goto :goto_0
.end method

.method public static htmlDecode(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9
    .param p0, "htmlEncodedText"    # Ljava/lang/String;
    .param p1, "testSafety"    # Z

    .prologue
    .line 43
    if-nez p0, :cond_0

    .line 116
    .end local p0    # "htmlEncodedText":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 47
    .restart local p0    # "htmlEncodedText":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 49
    .local v4, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :cond_1
    :goto_1
    if-ge v3, v4, :cond_10

    .line 50
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 51
    .local v1, "c":C
    add-int/lit8 v3, v3, 0x1

    .line 52
    if-eqz p1, :cond_2

    invoke-static {v1}, Lcom/liquable/util/StringLean;->isUnsafe(C)Z

    move-result v6

    if-nez v6, :cond_1

    .line 55
    :cond_2
    const/16 v6, 0x26

    if-ne v6, v1, :cond_f

    .line 56
    const/16 v6, 0x3b

    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 57
    .local v5, "semiColon":I
    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "entity":Ljava/lang/String;
    add-int/lit8 v3, v5, 0x1

    .line 60
    const-string/jumbo v6, "lt"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 61
    const-string/jumbo v6, "<"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 65
    :cond_3
    const-string/jumbo v6, "gt"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 66
    const-string/jumbo v6, ">"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 70
    :cond_4
    const-string/jumbo v6, "amp"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 71
    const-string/jumbo v6, "&"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 74
    :cond_5
    const-string/jumbo v6, "quot"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 75
    const/16 v6, 0x22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 78
    :cond_6
    const-string/jumbo v6, "#123"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 79
    const/16 v6, 0x7b

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 82
    :cond_7
    const-string/jumbo v6, "#125"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 83
    const/16 v6, 0x7d

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 86
    :cond_8
    const-string/jumbo v6, "#91"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 87
    const/16 v6, 0x5b

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 90
    :cond_9
    const-string/jumbo v6, "#93"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 91
    const/16 v6, 0x5d

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 94
    :cond_a
    const-string/jumbo v6, "#92"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 95
    const/16 v6, 0x5c

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 98
    :cond_b
    const-string/jumbo v6, "#10"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 99
    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 102
    :cond_c
    const-string/jumbo v6, "#13"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 103
    const/16 v6, 0xd

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 106
    :cond_d
    const-string/jumbo v6, "#36"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 107
    const/16 v6, 0x24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 111
    :cond_e
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unknown/unsupported html entity &"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 113
    .end local v2    # "entity":Ljava/lang/String;
    .end local v5    # "semiColon":I
    :cond_f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 116
    .end local v1    # "c":C
    :cond_10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method public static htmlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "plainText"    # Ljava/lang/String;

    .prologue
    .line 126
    if-nez p0, :cond_0

    .line 176
    .end local p0    # "plainText":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 129
    .restart local p0    # "plainText":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 131
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 132
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 133
    .local v1, "c":C
    sparse-switch v1, :sswitch_data_0

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 135
    :sswitch_0
    const-string/jumbo v4, "&#123;"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 138
    :sswitch_1
    const-string/jumbo v4, "&#125;"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 141
    :sswitch_2
    const-string/jumbo v4, "&#91;"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 144
    :sswitch_3
    const-string/jumbo v4, "&#93;"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 147
    :sswitch_4
    const-string/jumbo v4, "&lt;"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 150
    :sswitch_5
    const-string/jumbo v4, "&gt;"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 153
    :sswitch_6
    const-string/jumbo v4, "&amp;"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 156
    :sswitch_7
    const-string/jumbo v4, "&quot;"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 159
    :sswitch_8
    const-string/jumbo v4, "&#92;"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 162
    :sswitch_9
    const-string/jumbo v4, "&#13;"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 165
    :sswitch_a
    const-string/jumbo v4, "&#10;"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 168
    :sswitch_b
    const-string/jumbo v4, "&#36;"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 176
    .end local v1    # "c":C
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 133
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_a
        0xd -> :sswitch_9
        0x22 -> :sswitch_7
        0x24 -> :sswitch_b
        0x26 -> :sswitch_6
        0x3c -> :sswitch_4
        0x3e -> :sswitch_5
        0x5b -> :sswitch_2
        0x5c -> :sswitch_8
        0x5d -> :sswitch_3
        0x7b -> :sswitch_0
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method public static isBlank(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 180
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isUnsafe(C)Z
    .locals 5
    .param p0, "c"    # C

    .prologue
    const/4 v1, 0x0

    .line 184
    sget-object v3, Lcom/liquable/util/StringLean;->UNSAFE_CHARS:[C

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-char v0, v3, v2

    .line 185
    .local v0, "unsafe":C
    if-ne v0, p0, :cond_1

    .line 186
    const/4 v1, 0x1

    .line 189
    .end local v0    # "unsafe":C
    :cond_0
    return v1

    .line 184
    .restart local v0    # "unsafe":C
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static join(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const-string/jumbo v0, ","

    invoke-static {p0, v0}, Lcom/liquable/util/StringLean;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "seperator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 198
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 199
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 200
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 201
    .local v2, "t":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_0

    .line 205
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 206
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 207
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 211
    .end local v2    # "t":Ljava/lang/Object;, "TT;"
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static removeAngleBracket(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "raw"    # Ljava/lang/String;

    .prologue
    .line 215
    if-nez p0, :cond_0

    .line 219
    .end local p0    # "raw":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "raw":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "[\\<\\>]"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static removeHeadSlash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 223
    const-string/jumbo v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 226
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static removeStrongUnsafe(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "raw"    # Ljava/lang/String;

    .prologue
    .line 230
    if-nez p0, :cond_0

    .line 233
    .end local p0    # "raw":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "raw":Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/liquable/util/StringLean;->STRONG_UNSAFE_CHARS_PATTERN:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static removeUnsafe(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "rawHtml"    # Ljava/lang/String;

    .prologue
    .line 237
    if-nez p0, :cond_0

    .line 240
    .end local p0    # "rawHtml":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "rawHtml":Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/liquable/util/StringLean;->UNSAFE_CHARS_PATTERN:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static splitTrim(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p0, "commaString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    invoke-static {p0}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 264
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 287
    :goto_0
    return-object v6

    .line 267
    :cond_0
    const/4 v0, 0x0

    .line 268
    .local v0, "blankCount":I
    const-string/jumbo v6, "\\s*,\\s*"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 269
    .local v3, "subs":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v6, v3

    if-ge v1, v6, :cond_2

    .line 270
    aget-object v6, v3, v1

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    .line 271
    aget-object v6, v3, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 272
    add-int/lit8 v0, v0, 0x1

    .line 269
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 275
    :cond_2
    if-lez v0, :cond_5

    .line 276
    array-length v6, v3

    sub-int/2addr v6, v0

    new-array v4, v6, [Ljava/lang/String;

    .line 277
    .local v4, "trimed":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 278
    .local v5, "trimedIndex":I
    array-length v7, v3

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v7, :cond_4

    aget-object v2, v3, v6

    .line 279
    .local v2, "sub":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_3

    .line 278
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 282
    :cond_3
    aput-object v2, v4, v5

    .line 283
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 285
    .end local v2    # "sub":Ljava/lang/String;
    :cond_4
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    goto :goto_0

    .line 287
    .end local v4    # "trimed":[Ljava/lang/String;
    .end local v5    # "trimedIndex":I
    :cond_5
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    goto :goto_0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 292
    if-nez p0, :cond_0

    .line 293
    const-string/jumbo v0, "null"

    .line 295
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static trimToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "raw"    # Ljava/lang/String;

    .prologue
    .line 299
    const-string/jumbo v0, ""

    invoke-static {p0, v0}, Lcom/liquable/util/StringLean;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static validateCommaSeparatedString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "commasString"    # Ljava/lang/String;
    .param p1, "elementTitle"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 304
    invoke-static {p0}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 305
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 316
    :goto_0
    return-object v2

    .line 307
    :cond_0
    const-string/jumbo v2, "\\s*,\\s*"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, "rawStrings":[Ljava/lang/String;
    array-length v2, v1

    if-nez v2, :cond_1

    .line 309
    new-array v2, v6, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid blank "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 311
    :cond_1
    array-length v4, v1

    move v2, v3

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v0, v1, v2

    .line 312
    .local v0, "raw":Ljava/lang/String;
    invoke-static {v0}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 313
    new-array v2, v6, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid blank "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 311
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 316
    .end local v0    # "raw":Ljava/lang/String;
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method
