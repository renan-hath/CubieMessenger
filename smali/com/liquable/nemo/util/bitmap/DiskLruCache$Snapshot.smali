.class public final Lcom/liquable/nemo/util/bitmap/DiskLruCache$Snapshot;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/util/bitmap/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Snapshot"
.end annotation


# instance fields
.field private final ins:[Ljava/io/InputStream;

.field private final key:Ljava/lang/String;

.field private final sequenceNumber:J

.field final synthetic this$0:Lcom/liquable/nemo/util/bitmap/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/util/bitmap/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/util/bitmap/DiskLruCache;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "sequenceNumber"    # J
    .param p5, "ins"    # [Ljava/io/InputStream;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Snapshot;->this$0:Lcom/liquable/nemo/util/bitmap/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    iput-object p2, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    .line 293
    iput-wide p3, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Snapshot;->sequenceNumber:J

    .line 294
    iput-object p5, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    .line 295
    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/util/bitmap/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;Lcom/liquable/nemo/util/bitmap/DiskLruCache$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/util/bitmap/DiskLruCache;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # J
    .param p5, "x3"    # [Ljava/io/InputStream;
    .param p6, "x4"    # Lcom/liquable/nemo/util/bitmap/DiskLruCache$1;

    .prologue
    .line 286
    invoke-direct/range {p0 .. p5}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Snapshot;-><init>(Lcom/liquable/nemo/util/bitmap/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 299
    iget-object v2, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 300
    .local v0, "in":Ljava/io/InputStream;
    invoke-static {v0}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    .line 299
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 302
    .end local v0    # "in":Ljava/io/InputStream;
    :cond_0
    return-void
.end method

.method public edit()Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    iget-object v0, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Snapshot;->this$0:Lcom/liquable/nemo/util/bitmap/DiskLruCache;

    iget-object v1, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    iget-wide v2, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Snapshot;->sequenceNumber:J

    # invokes: Lcom/liquable/nemo/util/bitmap/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;
    invoke-static {v0, v1, v2, v3}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->access$1000(Lcom/liquable/nemo/util/bitmap/DiskLruCache;Ljava/lang/String;J)Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream(I)Ljava/io/InputStream;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 316
    iget-object v0, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 323
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    # invokes: Lcom/liquable/nemo/util/bitmap/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    invoke-static {v0}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->access$300(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
