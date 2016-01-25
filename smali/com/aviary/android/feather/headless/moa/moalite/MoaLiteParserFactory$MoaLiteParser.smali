.class public abstract Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteParserFactory$MoaLiteParser;
.super Ljava/lang/Object;
.source "MoaLiteParserFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteParserFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MoaLiteParser"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract parseStream(Ljava/io/InputStream;)Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public parseZip(Ljava/io/InputStream;)Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;
    .locals 4
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 47
    new-instance v2, Ljava/util/zip/ZipInputStream;

    invoke-direct {v2, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 48
    .local v2, "zip":Ljava/util/zip/ZipInputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 49
    .local v0, "fos":Ljava/io/ByteArrayOutputStream;
    const-string/jumbo v3, "index.json"

    invoke-static {v2, v3, v0}, Lcom/aviary/android/feather/headless/utils/IOUtils;->readFileFromZip(Ljava/util/zip/ZipInputStream;Ljava/lang/String;Ljava/io/OutputStream;)Z

    .line 50
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 51
    .local v1, "input":Ljava/io/ByteArrayInputStream;
    invoke-virtual {p0, v1}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteParserFactory$MoaLiteParser;->parseStream(Ljava/io/InputStream;)Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;

    move-result-object v3

    return-object v3
.end method
