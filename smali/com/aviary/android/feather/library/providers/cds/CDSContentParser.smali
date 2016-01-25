.class public Lcom/aviary/android/feather/library/providers/cds/CDSContentParser;
.super Ljava/lang/Object;
.source "CDSContentParser.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFolder:Ljava/io/File;

.field private mPack:Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tempFolder"    # Ljava/io/File;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/aviary/android/feather/library/providers/cds/CDSContentParser;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/aviary/android/feather/library/providers/cds/CDSContentParser;->mFolder:Ljava/io/File;

    .line 34
    return-void
.end method

.method private parsePack()Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-static {}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteParserFactory;->create()Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteParserFactory$MoaLiteParser;

    move-result-object v1

    .line 62
    .local v1, "parser":Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteParserFactory$MoaLiteParser;
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/aviary/android/feather/library/providers/cds/CDSContentParser;->mFolder:Ljava/io/File;

    const-string/jumbo v5, "index.json"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteParserFactory$MoaLiteParser;->parseStream(Ljava/io/InputStream;)Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;

    move-result-object v0

    .line 63
    .local v0, "pack":Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;
    return-object v0
.end method


# virtual methods
.method public getPack()Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/aviary/android/feather/library/providers/cds/CDSContentParser;->mPack:Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;

    if-nez v0, :cond_0

    .line 38
    invoke-direct {p0}, Lcom/aviary/android/feather/library/providers/cds/CDSContentParser;->parsePack()Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/library/providers/cds/CDSContentParser;->mPack:Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/library/providers/cds/CDSContentParser;->mPack:Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;

    return-object v0
.end method

.method public loadItem(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 7
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    const/4 v2, 0x0

    .line 47
    .local v2, "pack":Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;
    :try_start_0
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/providers/cds/CDSContentParser;->getPack()Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 52
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->getCount()I

    move-result v4

    if-lt v0, v4, :cond_0

    .line 58
    return-void

    .line 48
    .end local v0    # "i":I
    :catch_0
    move-exception v3

    .line 49
    .local v3, "t":Ljava/lang/Throwable;
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 53
    .end local v3    # "t":Ljava/lang/Throwable;
    .restart local v0    # "i":I
    :cond_0
    invoke-virtual {v2, v0}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->getItemAt(I)Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack$MoaLiteItem;

    move-result-object v1

    .line 54
    .local v1, "item":Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack$MoaLiteItem;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack$MoaLiteItem;->getRef()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 55
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/aviary/android/feather/library/providers/cds/CDSContentParser;->mFolder:Ljava/io/File;

    invoke-virtual {v1}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack$MoaLiteItem;->getRef()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1, v4, p2}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack$MoaLiteItem;->loadContent(Ljava/io/File;Ljava/io/OutputStream;)Z

    .line 52
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
