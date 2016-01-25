.class Lcom/liquable/nemo/util/bitmap/DiskLruCache$1;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/util/bitmap/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/util/bitmap/DiskLruCache;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/util/bitmap/DiskLruCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/util/bitmap/DiskLruCache;

    .prologue
    .line 566
    iput-object p1, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$1;->this$0:Lcom/liquable/nemo/util/bitmap/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 569
    iget-object v1, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$1;->this$0:Lcom/liquable/nemo/util/bitmap/DiskLruCache;

    monitor-enter v1

    .line 570
    :try_start_0
    iget-object v0, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$1;->this$0:Lcom/liquable/nemo/util/bitmap/DiskLruCache;

    # getter for: Lcom/liquable/nemo/util/bitmap/DiskLruCache;->journalWriter:Ljava/io/Writer;
    invoke-static {v0}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->access$1100(Lcom/liquable/nemo/util/bitmap/DiskLruCache;)Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 571
    monitor-exit v1

    .line 579
    :goto_0
    return-object v3

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$1;->this$0:Lcom/liquable/nemo/util/bitmap/DiskLruCache;

    # invokes: Lcom/liquable/nemo/util/bitmap/DiskLruCache;->trimToSize()V
    invoke-static {v0}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->access$1200(Lcom/liquable/nemo/util/bitmap/DiskLruCache;)V

    .line 574
    iget-object v0, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$1;->this$0:Lcom/liquable/nemo/util/bitmap/DiskLruCache;

    # invokes: Lcom/liquable/nemo/util/bitmap/DiskLruCache;->journalRebuildRequired()Z
    invoke-static {v0}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->access$1300(Lcom/liquable/nemo/util/bitmap/DiskLruCache;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 575
    iget-object v0, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$1;->this$0:Lcom/liquable/nemo/util/bitmap/DiskLruCache;

    # invokes: Lcom/liquable/nemo/util/bitmap/DiskLruCache;->rebuildJournal()V
    invoke-static {v0}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->access$1400(Lcom/liquable/nemo/util/bitmap/DiskLruCache;)V

    .line 576
    iget-object v0, p0, Lcom/liquable/nemo/util/bitmap/DiskLruCache$1;->this$0:Lcom/liquable/nemo/util/bitmap/DiskLruCache;

    const/4 v2, 0x0

    # setter for: Lcom/liquable/nemo/util/bitmap/DiskLruCache;->redundantOpCount:I
    invoke-static {v0, v2}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->access$1502(Lcom/liquable/nemo/util/bitmap/DiskLruCache;I)I

    .line 578
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
