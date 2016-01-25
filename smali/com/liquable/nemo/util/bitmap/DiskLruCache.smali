.class public final Lcom/liquable/nemo/util/bitmap/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/util/bitmap/DiskLruCache$Snapshot;,
        Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;,
        Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;
    }
.end annotation


# static fields
.field static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final CLEAN:Ljava/lang/String; = "CLEAN"

.field private static final DIRTY:Ljava/lang/String; = "DIRTY"

.field private static final IO_BUFFER_SIZE:I = 0x2000

.field static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field static final JOURNAL_FILE_TMP:Ljava/lang/String; = "journal.tmp"

.field static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final READ:Ljava/lang/String; = "READ"

.field private static final REMOVE:Ljava/lang/String; = "REMOVE"

.field private static final UTF_8:Ljava/nio/charset/Charset;

.field static final VERSION_1:Ljava/lang/String; = "1"


# instance fields
.field private final appVersion:I

.field private final cleanupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final directory:Ljava/io/File;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final journalFile:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private journalWriter:Ljava/io/Writer;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final maxSize:J

.field private nextSequenceNumber:J

.field private redundantOpCount:I

.field private size:J

.field private final valueCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 527
    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 7
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "appVersion"    # I
    .param p3, "valueCount"    # I
    .param p4, "maxSize"    # J

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 542
    iput-wide v4, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->size:J

    .line 546
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v3, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 557
    iput-wide v4, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->nextSequenceNumber:J

    .line 560
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 566
    new-instance v0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$1;-><init>(Lcom/liquable/nemo/util/bitmap/DiskLruCache;)V

    iput-object v0, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    .line 587
    iput-object p1, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->directory:Ljava/io/File;

    .line 588
    iput p2, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->appVersion:I

    .line 589
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->journalFile:Ljava/io/File;

    .line 590
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 591
    iput p3, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->valueCount:I

    .line 592
    iput-wide p4, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->maxSize:J

    .line 593
    return-void
.end method

.method static synthetic access$100(Lcom/liquable/nemo/util/bitmap/DiskLruCache;Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/util/bitmap/DiskLruCache;
    .param p1, "x1"    # Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;
    .param p2, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->completeEdit(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/liquable/nemo/util/bitmap/DiskLruCache;Ljava/lang/String;J)Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/util/bitmap/DiskLruCache;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/liquable/nemo/util/bitmap/DiskLruCache;)Ljava/io/Writer;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/util/bitmap/DiskLruCache;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->journalWriter:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/liquable/nemo/util/bitmap/DiskLruCache;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/util/bitmap/DiskLruCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->trimToSize()V

    return-void
.end method

.method static synthetic access$1300(Lcom/liquable/nemo/util/bitmap/DiskLruCache;)Z
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/util/bitmap/DiskLruCache;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/liquable/nemo/util/bitmap/DiskLruCache;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/util/bitmap/DiskLruCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->rebuildJournal()V

    return-void
.end method

.method static synthetic access$1502(Lcom/liquable/nemo/util/bitmap/DiskLruCache;I)I
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/util/bitmap/DiskLruCache;
    .param p1, "x1"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->redundantOpCount:I

    return p1
.end method

.method static synthetic access$300(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-static {p0}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->UTF_8:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static synthetic access$800(Lcom/liquable/nemo/util/bitmap/DiskLruCache;)I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/util/bitmap/DiskLruCache;

    .prologue
    .line 96
    iget v0, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->valueCount:I

    return v0
.end method

.method static synthetic access$900(Lcom/liquable/nemo/util/bitmap/DiskLruCache;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/util/bitmap/DiskLruCache;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method private checkNotClosed()V
    .locals 2

    .prologue
    .line 596
    iget-object v0, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 597
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 599
    :cond_0
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 2
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 331
    if-eqz p0, :cond_0

    .line 333
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 336
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private declared-synchronized completeEdit(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;Z)V
    .locals 12
    .param p1, "editor"    # Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;
    .param p2, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 621
    monitor-enter p0

    :try_start_0
    # getter for: Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;->entry:Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;
    invoke-static {p1}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;->access$1600(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;)Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;

    move-result-object v2

    .line 622
    .local v2, "entry":Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;
    # getter for: Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->currentEditor:Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;
    invoke-static {v2}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->access$400(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;)Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;

    move-result-object v8

    if-eq v8, p1, :cond_0

    .line 623
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8}, Ljava/lang/IllegalStateException;-><init>()V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 621
    .end local v2    # "entry":Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 627
    .restart local v2    # "entry":Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;
    :cond_0
    if-eqz p2, :cond_2

    :try_start_1
    # getter for: Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->readable:Z
    invoke-static {v2}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->access$500(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 628
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v8, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->valueCount:I

    if-ge v3, v8, :cond_2

    .line 629
    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 630
    invoke-virtual {p1}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;->abort()V

    .line 631
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "edit didn\'t create file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 628
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 636
    .end local v3    # "i":I
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget v8, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->valueCount:I

    if-ge v3, v8, :cond_5

    .line 637
    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v1

    .line 638
    .local v1, "dirty":Ljava/io/File;
    if-eqz p2, :cond_4

    .line 639
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 640
    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v0

    .line 641
    .local v0, "clean":Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 642
    # getter for: Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->lengths:[J
    invoke-static {v2}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->access$1700(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;)[J

    move-result-object v8

    aget-wide v6, v8, v3

    .line 643
    .local v6, "oldLength":J
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 644
    .local v4, "newLength":J
    # getter for: Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->lengths:[J
    invoke-static {v2}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->access$1700(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;)[J

    move-result-object v8

    aput-wide v4, v8, v3

    .line 645
    iget-wide v8, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->size:J

    sub-long/2addr v8, v6

    add-long/2addr v8, v4

    iput-wide v8, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->size:J

    .line 636
    .end local v0    # "clean":Ljava/io/File;
    .end local v4    # "newLength":J
    .end local v6    # "oldLength":J
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 648
    :cond_4
    invoke-static {v1}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    goto :goto_2

    .line 652
    .end local v1    # "dirty":Ljava/io/File;
    :cond_5
    iget v8, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->redundantOpCount:I

    .line 653
    const/4 v8, 0x0

    # setter for: Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->currentEditor:Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;
    invoke-static {v2, v8}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->access$402(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;)Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;

    .line 654
    # getter for: Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->readable:Z
    invoke-static {v2}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->access$500(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;)Z

    move-result v8

    or-int/2addr v8, p2

    if-eqz v8, :cond_9

    .line 655
    const/4 v8, 0x1

    # setter for: Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->readable:Z
    invoke-static {v2, v8}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->access$502(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;Z)Z

    .line 656
    iget-object v8, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "CLEAN "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    # getter for: Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->access$200(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 657
    if-eqz p2, :cond_6

    .line 658
    iget-wide v8, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->nextSequenceNumber:J

    const-wide/16 v10, 0x1

    add-long/2addr v10, v8

    iput-wide v10, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->nextSequenceNumber:J

    # setter for: Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->sequenceNumber:J
    invoke-static {v2, v8, v9}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->access$1802(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;J)J

    .line 665
    :cond_6
    :goto_3
    iget-wide v8, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->size:J

    iget-wide v10, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->maxSize:J

    cmp-long v8, v8, v10

    if-gtz v8, :cond_7

    invoke-direct {p0}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->journalRebuildRequired()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 666
    :cond_7
    iget-object v8, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v9, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v8, v9}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 668
    :cond_8
    monitor-exit p0

    return-void

    .line 661
    :cond_9
    :try_start_2
    iget-object v8, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    # getter for: Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->access$200(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    iget-object v8, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "REMOVE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    # getter for: Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->access$200(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method private static copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    .prologue
    .line 343
    .local p0, "original":[Ljava/lang/Object;, "[TT;"
    array-length v1, p0

    .line 344
    .local v1, "originalLength":I
    if-le p1, p2, :cond_0

    .line 345
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 347
    :cond_0
    if-ltz p1, :cond_1

    if-le p1, v1, :cond_2

    .line 348
    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 350
    :cond_2
    sub-int v3, p2, p1

    .line 351
    .local v3, "resultLength":I
    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 352
    .local v0, "copyLength":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v2, v4

    check-cast v2, [Ljava/lang/Object;

    .line 353
    .local v2, "result":[Ljava/lang/Object;, "[TT;"
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 354
    return-object v2
.end method

.method public static deleteContents(Ljava/io/File;)V
    .locals 5
    .param p0, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 362
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 363
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_0

    .line 364
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "not a directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 366
    :cond_0
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v0, v1, v2

    .line 367
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 368
    invoke-static {v0}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->deleteContents(Ljava/io/File;)V

    .line 370
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_2

    .line 371
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "failed to delete file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 366
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 374
    .end local v0    # "file":Ljava/io/File;
    :cond_3
    return-void
.end method

.method private static deleteIfExists(Ljava/io/File;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 384
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 387
    :cond_0
    return-void
.end method

.method private declared-synchronized edit(Ljava/lang/String;J)Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "expectedSequenceNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 688
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->checkNotClosed()V

    .line 689
    invoke-direct {p0, p1}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 690
    iget-object v2, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;

    .line 691
    .local v1, "entry":Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    # getter for: Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->sequenceNumber:J
    invoke-static {v1}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->access$1800(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_1

    .line 707
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 694
    :cond_1
    if-nez v1, :cond_3

    .line 695
    :try_start_1
    new-instance v1, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;

    .end local v1    # "entry":Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;
    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;-><init>(Lcom/liquable/nemo/util/bitmap/DiskLruCache;Ljava/lang/String;Lcom/liquable/nemo/util/bitmap/DiskLruCache$1;)V

    .line 696
    .restart local v1    # "entry":Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;
    iget-object v2, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    :cond_2
    new-instance v0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;-><init>(Lcom/liquable/nemo/util/bitmap/DiskLruCache;Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;Lcom/liquable/nemo/util/bitmap/DiskLruCache$1;)V

    .line 702
    .local v0, "editor":Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;
    # setter for: Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->currentEditor:Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;
    invoke-static {v1, v0}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->access$402(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;)Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;

    .line 705
    iget-object v2, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DIRTY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 706
    iget-object v2, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 688
    .end local v0    # "editor":Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;
    .end local v1    # "entry":Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 697
    .restart local v1    # "entry":Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;
    :cond_3
    :try_start_2
    # getter for: Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->currentEditor:Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;
    invoke-static {v1}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->access$400(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;)Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_0
.end method

.method private static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 390
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private journalRebuildRequired()Z
    .locals 3

    .prologue
    .line 777
    const/16 v0, 0x7d0

    .line 778
    .local v0, "REDUNDANT_OP_COMPACT_THRESHOLD":I
    iget v1, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->redundantOpCount:I

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->redundantOpCount:I

    iget-object v2, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static open(Ljava/io/File;IIJ)Lcom/liquable/nemo/util/bitmap/DiskLruCache;
    .locals 8
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "appVersion"    # I
    .param p2, "valueCount"    # I
    .param p3, "maxSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 410
    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-gtz v1, :cond_0

    .line 411
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "maxSize <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 413
    :cond_0
    if-gtz p2, :cond_1

    .line 414
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "valueCount <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 418
    :cond_1
    new-instance v0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 419
    .local v0, "cache":Lcom/liquable/nemo/util/bitmap/DiskLruCache;
    iget-object v1, v0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 421
    :try_start_0
    invoke-direct {v0}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->readJournal()V

    .line 422
    invoke-direct {v0}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->processJournal()V

    .line 423
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, v0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v1, v0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    .line 437
    .end local v0    # "cache":Lcom/liquable/nemo/util/bitmap/DiskLruCache;
    .local v6, "cache":Ljava/lang/Object;
    :goto_0
    return-object v6

    .line 426
    .end local v6    # "cache":Ljava/lang/Object;
    .restart local v0    # "cache":Lcom/liquable/nemo/util/bitmap/DiskLruCache;
    :catch_0
    move-exception v7

    .line 429
    .local v7, "journalIsCorrupt":Ljava/io/IOException;
    invoke-virtual {v0}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->delete()V

    .line 434
    .end local v7    # "journalIsCorrupt":Ljava/io/IOException;
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 435
    new-instance v0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;

    .end local v0    # "cache":Lcom/liquable/nemo/util/bitmap/DiskLruCache;
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 436
    .restart local v0    # "cache":Lcom/liquable/nemo/util/bitmap/DiskLruCache;
    invoke-direct {v0}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->rebuildJournal()V

    move-object v6, v0

    .line 437
    .restart local v6    # "cache":Ljava/lang/Object;
    goto :goto_0
.end method

.method private processJournal()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 793
    iget-object v3, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-static {v3}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 794
    iget-object v3, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 795
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;

    .line 796
    .local v0, "entry":Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;
    # getter for: Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->currentEditor:Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->access$400(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;)Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;

    move-result-object v3

    if-nez v3, :cond_1

    .line 797
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_1
    iget v3, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_0

    .line 798
    iget-wide v3, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->size:J

    # getter for: Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->access$1700(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;)[J

    move-result-object v5

    aget-wide v5, v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->size:J

    .line 797
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 801
    .end local v2    # "t":I
    :cond_1
    const/4 v3, 0x0

    # setter for: Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->currentEditor:Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;
    invoke-static {v0, v3}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->access$402(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;)Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;

    .line 802
    const/4 v2, 0x0

    .restart local v2    # "t":I
    :goto_2
    iget v3, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_2

    .line 803
    invoke-virtual {v0, v2}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 804
    invoke-virtual {v0, v2}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 802
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 806
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 809
    .end local v0    # "entry":Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;
    .end local v2    # "t":I
    :cond_3
    return-void
.end method

.method public static readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x50

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 451
    .local v2, "result":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 452
    .local v0, "c":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 453
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 454
    :cond_0
    const/16 v3, 0xa

    if-ne v0, v3, :cond_2

    .line 460
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 461
    .local v1, "length":I
    if-lez v1, :cond_1

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_1

    .line 462
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 464
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 458
    .end local v1    # "length":I
    :cond_2
    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static readFully(Ljava/io/Reader;)Ljava/lang/String;
    .locals 4
    .param p0, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 472
    :try_start_0
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 473
    .local v2, "writer":Ljava/io/StringWriter;
    const/16 v3, 0x400

    new-array v0, v3, [C

    .line 475
    .local v0, "buffer":[C
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v1

    .local v1, "count":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 476
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/StringWriter;->write([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 480
    .end local v0    # "buffer":[C
    .end local v1    # "count":I
    .end local v2    # "writer":Ljava/io/StringWriter;
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    throw v3

    .line 478
    .restart local v0    # "buffer":[C
    .restart local v1    # "count":I
    .restart local v2    # "writer":Ljava/io/StringWriter;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 480
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    return-object v3
.end method

.method private readJournal()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 812
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    iget-object v8, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v8, 0x2000

    invoke-direct {v3, v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 814
    .local v3, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v3}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 815
    .local v4, "magic":Ljava/lang/String;
    invoke-static {v3}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 816
    .local v6, "version":Ljava/lang/String;
    invoke-static {v3}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 817
    .local v0, "appVersionString":Ljava/lang/String;
    invoke-static {v3}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 818
    .local v5, "valueCountString":Ljava/lang/String;
    invoke-static {v3}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 819
    .local v1, "blank":Ljava/lang/String;
    const-string/jumbo v7, "libcore.io.DiskLruCache"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "1"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->appVersion:I

    .line 820
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->valueCount:I

    .line 821
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, ""

    .line 822
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 823
    :cond_0
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unexpected journal header: ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 841
    .end local v0    # "appVersionString":Ljava/lang/String;
    .end local v1    # "blank":Ljava/lang/String;
    .end local v4    # "magic":Ljava/lang/String;
    .end local v5    # "valueCountString":Ljava/lang/String;
    .end local v6    # "version":Ljava/lang/String;
    :catchall_0
    move-exception v7

    invoke-static {v3}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    throw v7

    .line 835
    .restart local v0    # "appVersionString":Ljava/lang/String;
    .restart local v1    # "blank":Ljava/lang/String;
    .restart local v4    # "magic":Ljava/lang/String;
    .restart local v5    # "valueCountString":Ljava/lang/String;
    .restart local v6    # "version":Ljava/lang/String;
    :cond_1
    :goto_0
    :try_start_1
    invoke-static {v3}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 836
    :catch_0
    move-exception v2

    .line 841
    .local v2, "endOfJournal":Ljava/io/EOFException;
    invoke-static {v3}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    .line 843
    return-void
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .locals 9
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 846
    const-string/jumbo v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 847
    .local v2, "parts":[Ljava/lang/String;
    array-length v3, v2

    if-ge v3, v5, :cond_0

    .line 848
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unexpected journal line: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 851
    :cond_0
    aget-object v1, v2, v8

    .line 852
    .local v1, "key":Ljava/lang/String;
    aget-object v3, v2, v6

    const-string/jumbo v4, "REMOVE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    array-length v3, v2

    if-ne v3, v5, :cond_2

    .line 853
    iget-object v3, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    :cond_1
    :goto_0
    return-void

    .line 857
    :cond_2
    iget-object v3, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;

    .line 858
    .local v0, "entry":Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;
    if-nez v0, :cond_3

    .line 859
    new-instance v0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;

    .end local v0    # "entry":Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;
    invoke-direct {v0, p0, v1, v7}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;-><init>(Lcom/liquable/nemo/util/bitmap/DiskLruCache;Ljava/lang/String;Lcom/liquable/nemo/util/bitmap/DiskLruCache$1;)V

    .line 860
    .restart local v0    # "entry":Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;
    iget-object v3, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    :cond_3
    aget-object v3, v2, v6

    const-string/jumbo v4, "CLEAN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    array-length v3, v2

    iget v4, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->valueCount:I

    add-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_4

    .line 864
    # setter for: Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->readable:Z
    invoke-static {v0, v8}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->access$502(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;Z)Z

    .line 865
    # setter for: Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->currentEditor:Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;
    invoke-static {v0, v7}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->access$402(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;)Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;

    .line 866
    array-length v3, v2

    invoke-static {v2, v5, v3}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    # invokes: Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V
    invoke-static {v0, v3}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->access$2200(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;[Ljava/lang/String;)V

    goto :goto_0

    .line 867
    :cond_4
    aget-object v3, v2, v6

    const-string/jumbo v4, "DIRTY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    array-length v3, v2

    if-ne v3, v5, :cond_5

    .line 868
    new-instance v3, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;

    invoke-direct {v3, p0, v0, v7}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;-><init>(Lcom/liquable/nemo/util/bitmap/DiskLruCache;Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;Lcom/liquable/nemo/util/bitmap/DiskLruCache$1;)V

    # setter for: Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->currentEditor:Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;
    invoke-static {v0, v3}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->access$402(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;)Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;

    goto :goto_0

    .line 869
    :cond_5
    aget-object v3, v2, v6

    const-string/jumbo v4, "READ"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    array-length v3, v2

    if-eq v3, v5, :cond_1

    .line 872
    :cond_6
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unexpected journal line: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private declared-synchronized rebuildJournal()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 881
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-eqz v2, :cond_0

    .line 882
    iget-object v2, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    .line 885
    :cond_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 886
    .local v1, "writer":Ljava/io/Writer;
    const-string/jumbo v2, "libcore.io.DiskLruCache"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 887
    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 888
    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 889
    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 890
    iget v2, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->appVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 891
    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 892
    iget v2, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->valueCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 893
    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 894
    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 896
    iget-object v2, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;

    .line 897
    .local v0, "entry":Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;
    # getter for: Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->currentEditor:Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->access$400(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;)Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 898
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DIRTY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v0}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->access$200(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 881
    .end local v0    # "entry":Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;
    .end local v1    # "writer":Ljava/io/Writer;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 900
    .restart local v0    # "entry":Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;
    .restart local v1    # "writer":Ljava/io/Writer;
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CLEAN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v0}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->access$200(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 904
    .end local v0    # "entry":Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;
    :cond_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 905
    iget-object v2, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->journalFileTmp:Ljava/io/File;

    iget-object v3, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 906
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    iget-object v4, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    const/16 v4, 0x2000

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v2, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 907
    monitor-exit p0

    return-void
.end method

.method private trimToSize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 952
    :goto_0
    iget-wide v1, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->size:J

    iget-wide v3, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->maxSize:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 954
    iget-object v1, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 955
    .local v0, "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    .line 957
    .end local v0    # "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;>;"
    :cond_0
    return-void
.end method

.method private validateKey(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 960
    const-string/jumbo v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "\r"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 961
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "keys must not contain spaces or newlines: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 964
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 606
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 617
    :goto_0
    monitor-exit p0

    return-void

    .line 609
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;

    .line 610
    .local v0, "entry":Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;
    # getter for: Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->currentEditor:Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->access$400(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;)Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 611
    # getter for: Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->currentEditor:Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->access$400(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;)Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 606
    .end local v0    # "entry":Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 614
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->trimToSize()V

    .line 615
    iget-object v1, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 616
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 675
    invoke-virtual {p0}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->close()V

    .line 676
    iget-object v0, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->directory:Ljava/io/File;

    invoke-static {v0}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->deleteContents(Ljava/io/File;)V

    .line 677
    return-void
.end method

.method public edit(Ljava/lang/String;)Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 683
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 714
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->checkNotClosed()V

    .line 715
    invoke-direct {p0}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->trimToSize()V

    .line 716
    iget-object v0, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 717
    monitor-exit p0

    return-void

    .line 714
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/liquable/nemo/util/bitmap/DiskLruCache$Snapshot;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 724
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->checkNotClosed()V

    .line 725
    invoke-direct {p0, p1}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 726
    iget-object v1, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 727
    .local v8, "entry":Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;
    if-nez v8, :cond_1

    .line 755
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 731
    :cond_1
    :try_start_1
    # getter for: Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->readable:Z
    invoke-static {v8}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->access$500(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 739
    iget v1, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->valueCount:I

    new-array v5, v1, [Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 741
    .local v5, "ins":[Ljava/io/InputStream;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    :try_start_2
    iget v1, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->valueCount:I

    if-ge v9, v1, :cond_2

    .line 742
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {v8, v9}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v1, v5, v9
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 741
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 744
    :catch_0
    move-exception v7

    .line 746
    .local v7, "e":Ljava/io/FileNotFoundException;
    goto :goto_0

    .line 749
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    :cond_2
    :try_start_3
    iget v0, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->redundantOpCount:I

    .line 750
    iget-object v0, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "READ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 751
    invoke-direct {p0}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 752
    iget-object v0, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 755
    :cond_3
    new-instance v0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Snapshot;

    # getter for: Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->sequenceNumber:J
    invoke-static {v8}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->access$1800(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;)J

    move-result-wide v3

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Snapshot;-><init>(Lcom/liquable/nemo/util/bitmap/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;Lcom/liquable/nemo/util/bitmap/DiskLruCache$1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 724
    .end local v5    # "ins":[Ljava/io/InputStream;
    .end local v8    # "entry":Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;
    .end local v9    # "i":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 762
    iget-object v0, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public maxSize()J
    .locals 2

    .prologue
    .line 785
    iget-wide v0, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->maxSize:J

    return-wide v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 916
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->checkNotClosed()V

    .line 917
    invoke-direct {p0, p1}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 918
    iget-object v3, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;

    .line 919
    .local v0, "entry":Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;
    if-eqz v0, :cond_0

    # getter for: Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->currentEditor:Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->access$400(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;)Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_1

    .line 920
    :cond_0
    const/4 v3, 0x0

    .line 940
    :goto_0
    monitor-exit p0

    return v3

    .line 923
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    :try_start_1
    iget v3, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_3

    .line 924
    invoke-virtual {v0, v2}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v1

    .line 925
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2

    .line 926
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "failed to delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 916
    .end local v0    # "entry":Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 928
    .restart local v0    # "entry":Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "i":I
    :cond_2
    :try_start_2
    iget-wide v3, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->size:J

    # getter for: Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->access$1700(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;)[J

    move-result-object v5

    aget-wide v5, v5, v2

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->size:J

    .line 929
    # getter for: Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;->access$1700(Lcom/liquable/nemo/util/bitmap/DiskLruCache$Entry;)[J

    move-result-object v3

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    .line 923
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 932
    .end local v1    # "file":Ljava/io/File;
    :cond_3
    iget v3, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->redundantOpCount:I

    .line 933
    iget-object v3, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "REMOVE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 934
    iget-object v3, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    invoke-direct {p0}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->journalRebuildRequired()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 937
    iget-object v3, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v4, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 940
    :cond_4
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public declared-synchronized size()J
    .locals 2

    .prologue
    .line 948
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->size:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
