.class final Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteParserNew;
.super Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteParserFactory$MoaLiteParser;
.source "MoaLiteParserNew.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteParserFactory$MoaLiteParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parseStream(Ljava/io/InputStream;)Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;
    .locals 9
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 22
    new-instance v4, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;

    invoke-direct {v4}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;-><init>()V

    .line 24
    .local v4, "pack":Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;
    new-instance v5, Landroid/util/JsonReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v8}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 25
    .local v5, "reader":Landroid/util/JsonReader;
    invoke-virtual {v5}, Landroid/util/JsonReader;->beginObject()V

    .line 26
    :cond_0
    :goto_0
    invoke-virtual {v5}, Landroid/util/JsonReader;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 95
    invoke-virtual {v5}, Landroid/util/JsonReader;->close()V

    .line 97
    return-object v4

    .line 27
    :cond_1
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 28
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v7

    .line 30
    .local v7, "token":Landroid/util/JsonToken;
    sget-object v8, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    invoke-virtual {v7, v8}, Landroid/util/JsonToken;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 32
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    .line 34
    .local v6, "stringValue":Ljava/lang/String;
    const-string/jumbo v8, "packType"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 35
    invoke-virtual {v4, v6}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->setPackType(Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :cond_2
    const-string/jumbo v8, "identifier"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 37
    invoke-virtual {v4, v6}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->setIdentifier(Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_3
    const-string/jumbo v8, "codename"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 39
    invoke-virtual {v4, v6}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->setCodename(Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_4
    const-string/jumbo v8, "displayName"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 41
    invoke-virtual {v4, v6}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->setDisplayName(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_5
    const-string/jumbo v8, "minVersion"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v4, v6}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->setMinVersion(Ljava/lang/String;)V

    goto :goto_0

    .line 44
    .end local v6    # "stringValue":Ljava/lang/String;
    :cond_6
    sget-object v8, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    invoke-virtual {v7, v8}, Landroid/util/JsonToken;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 46
    const-string/jumbo v8, "packVersionCode"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 47
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextInt()I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->setPackVersionCode(I)V

    goto :goto_0

    .line 49
    :cond_7
    invoke-virtual {v5}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 52
    :cond_8
    sget-object v8, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    invoke-virtual {v7, v8}, Landroid/util/JsonToken;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 54
    invoke-virtual {v5}, Landroid/util/JsonReader;->beginArray()V

    .line 56
    const-string/jumbo v8, "items"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 58
    :goto_1
    invoke-virtual {v5}, Landroid/util/JsonReader;->hasNext()Z

    move-result v8

    if-nez v8, :cond_9

    .line 89
    :goto_2
    invoke-virtual {v5}, Landroid/util/JsonReader;->endArray()V

    goto/16 :goto_0

    .line 60
    :cond_9
    invoke-virtual {v5}, Landroid/util/JsonReader;->beginObject()V

    .line 61
    new-instance v0, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack$MoaLiteItem;

    invoke-direct {v0}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack$MoaLiteItem;-><init>()V

    .line 63
    .local v0, "item":Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack$MoaLiteItem;
    :goto_3
    invoke-virtual {v5}, Landroid/util/JsonReader;->hasNext()Z

    move-result v8

    if-nez v8, :cond_a

    .line 81
    invoke-virtual {v4, v0}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->addItem(Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack$MoaLiteItem;)V

    .line 82
    invoke-virtual {v5}, Landroid/util/JsonReader;->endObject()V

    goto :goto_1

    .line 64
    :cond_a
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "itemName":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    .line 67
    .local v2, "itemToken":Landroid/util/JsonToken;
    sget-object v8, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    invoke-virtual {v2, v8}, Landroid/util/JsonToken;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 69
    const-string/jumbo v8, "displayName"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 70
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack$MoaLiteItem;->setDisplayName(Ljava/lang/String;)V

    goto :goto_3

    .line 71
    :cond_b
    const-string/jumbo v8, "ref"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 72
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack$MoaLiteItem;->setRef(Ljava/lang/String;)V

    goto :goto_3

    .line 74
    :cond_c
    invoke-virtual {v5}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_3

    .line 77
    :cond_d
    invoke-virtual {v5}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_3

    .line 86
    .end local v0    # "item":Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack$MoaLiteItem;
    .end local v1    # "itemName":Ljava/lang/String;
    .end local v2    # "itemToken":Landroid/util/JsonToken;
    :cond_e
    invoke-virtual {v5}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_2

    .line 91
    :cond_f
    invoke-virtual {v5}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0
.end method
