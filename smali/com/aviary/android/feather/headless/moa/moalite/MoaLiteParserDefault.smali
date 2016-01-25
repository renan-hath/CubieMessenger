.class final Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteParserDefault;
.super Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteParserFactory$MoaLiteParser;
.source "MoaLiteParserDefault.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteParserFactory$MoaLiteParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parseStream(Ljava/io/InputStream;)Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;
    .locals 10
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 20
    const-string/jumbo v8, "parser"

    const-string/jumbo v9, "ANDROID-10"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-static {p1}, Lcom/aviary/android/feather/headless/utils/IOUtils;->readFully(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 23
    .local v4, "jsonstring":Ljava/lang/String;
    new-instance v7, Lorg/json/JSONTokener;

    invoke-direct {v7, v4}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 24
    .local v7, "tokener":Lorg/json/JSONTokener;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v7}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 26
    .local v5, "object":Lorg/json/JSONObject;
    new-instance v6, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;

    invoke-direct {v6}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;-><init>()V

    .line 28
    .local v6, "pack":Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;
    const-string/jumbo v8, "identifier"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->setIdentifier(Ljava/lang/String;)V

    .line 29
    const-string/jumbo v8, "packVersionCode"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->setPackVersionCode(I)V

    .line 30
    const-string/jumbo v8, "packType"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->setPackType(Ljava/lang/String;)V

    .line 31
    const-string/jumbo v8, "codename"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->setCodename(Ljava/lang/String;)V

    .line 32
    const-string/jumbo v8, "displayName"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->setDisplayName(Ljava/lang/String;)V

    .line 33
    const-string/jumbo v8, "minVersion"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->setMinVersion(Ljava/lang/String;)V

    .line 35
    const-string/jumbo v8, "items"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 36
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v2, v8, :cond_0

    .line 43
    return-object v6

    .line 37
    :cond_0
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 38
    .local v1, "element":Lorg/json/JSONObject;
    new-instance v3, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack$MoaLiteItem;

    invoke-direct {v3}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack$MoaLiteItem;-><init>()V

    .line 39
    .local v3, "item":Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack$MoaLiteItem;
    const-string/jumbo v8, "displayName"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack$MoaLiteItem;->setDisplayName(Ljava/lang/String;)V

    .line 40
    const-string/jumbo v8, "ref"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack$MoaLiteItem;->setRef(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v6, v3}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->addItem(Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack$MoaLiteItem;)V

    .line 36
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
