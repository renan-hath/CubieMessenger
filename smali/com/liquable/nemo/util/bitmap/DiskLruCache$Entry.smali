.class final Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/util/bitmap/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Entry"
.end annotation


# instance fields
.field private currentEditor:Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;

.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private readable:Z

.field private sequenceNumber:J

.field final synthetic this$0:Lcom/liquable/nemo/util/bitmap/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/util/bitmap/DiskLruCache;Ljava/lang/String;)V
    .locals 1
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->this$0:Lcom/liquable/nemo/util/bitmap/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput-object p2, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->key:Ljava/lang/String;

    .line 242
    # getter for: Lcom/liquable/nemo/util/bitmap/DiskLruCache;->valueCount:I
    invoke-static {p1}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->access$800(Lcom/liquable/nemo/util/bitmap/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->lengths:[J

    .line 243
    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/util/bitmap/DiskLruCache;Ljava/lang/String;Lcom/liquable/nemo/util/bitmap/DiskLruCache$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/util/bitmap/DiskLruCache;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/liquable/nemo/util/bitmap/DiskLruCache$1;

    .prologue
    .line 225
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;-><init>(Lcom/liquable/nemo/util/bitmap/DiskLruCache;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;)[J
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->lengths:[J

    return-object v0
.end method

.method static synthetic access$1800(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;)J
    .locals 2
    .param p0, "x0"    # Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;

    .prologue
    .line 225
    iget-wide v0, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->sequenceNumber:J

    return-wide v0
.end method

.method static synthetic access$1802(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;J)J
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;
    .param p1, "x1"    # J

    .prologue
    .line 225
    iput-wide p1, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->sequenceNumber:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;
    .param p1, "x1"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;)Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->currentEditor:Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;

    return-object v0
.end method

.method static synthetic access$402(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;)Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;
    .param p1, "x1"    # Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->currentEditor:Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;

    return-object p1
.end method

.method static synthetic access$500(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;)Z
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->readable:Z

    return v0
.end method

.method static synthetic access$502(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;
    .param p1, "x1"    # Z

    .prologue
    .line 225
    iput-boolean p1, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->readable:Z

    return p1
.end method

.method private invalidLengths([Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .param p1, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setLengths([Ljava/lang/String;)V
    .locals 5
    .param p1, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    array-length v2, p1

    iget-object v3, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->this$0:Lcom/liquable/nemo/util/bitmap/DiskLruCache;

    # getter for: Lcom/liquable/nemo/util/bitmap/DiskLruCache;->valueCount:I
    invoke-static {v3}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->access$800(Lcom/liquable/nemo/util/bitmap/DiskLruCache;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 270
    invoke-direct {p0, p1}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 274
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 275
    iget-object v2, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->lengths:[J

    aget-object v3, p1, v1

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    aput-wide v3, v2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-direct {p0, p1}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 280
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    return-void
.end method


# virtual methods
.method public getCleanFile(I)Ljava/io/File;
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 246
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->this$0:Lcom/liquable/nemo/util/bitmap/DiskLruCache;

    # getter for: Lcom/liquable/nemo/util/bitmap/DiskLruCache;->directory:Ljava/io/File;
    invoke-static {v1}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->access$900(Lcom/liquable/nemo/util/bitmap/DiskLruCache;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDirtyFile(I)Ljava/io/File;
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 250
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->this$0:Lcom/liquable/nemo/util/bitmap/DiskLruCache;

    # getter for: Lcom/liquable/nemo/util/bitmap/DiskLruCache;->directory:Ljava/io/File;
    invoke-static {v1}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->access$900(Lcom/liquable/nemo/util/bitmap/DiskLruCache;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getLengths()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->lengths:[J

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_0

    aget-wide v1, v4, v3

    .line 256
    .local v1, "size":J
    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 255
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 258
    .end local v1    # "size":J
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
