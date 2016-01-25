.class final Lcom/liquable/nemo/endpoint/record/ByteBufferPool;
.super Ljava/lang/Object;
.source "ByteBufferPool.java"


# instance fields
.field private final byteBufferCapacity:I

.field private final pool:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "byteBufferCapacity"    # I
    .param p2, "maxPoolSize"    # I

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/liquable/nemo/endpoint/record/ByteBufferPool;->byteBufferCapacity:I

    .line 13
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, p2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/ByteBufferPool;->pool:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 14
    return-void
.end method


# virtual methods
.method public allocate()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 17
    iget-object v1, p0, Lcom/liquable/nemo/endpoint/record/ByteBufferPool;->pool:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 18
    .local v0, "found":Ljava/nio/ByteBuffer;
    if-nez v0, :cond_0

    .line 19
    iget v1, p0, Lcom/liquable/nemo/endpoint/record/ByteBufferPool;->byteBufferCapacity:I

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 21
    .end local v0    # "found":Ljava/nio/ByteBuffer;
    :cond_0
    return-object v0
.end method

.method public allocate(I)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "minCapacity"    # I

    .prologue
    .line 25
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/ByteBufferPool;->byteBufferCapacity:I

    if-le p1, v0, :cond_0

    .line 26
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 29
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/ByteBufferPool;->allocate()Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public recycle(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 33
    if-nez p1, :cond_1

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget v1, p0, Lcom/liquable/nemo/endpoint/record/ByteBufferPool;->byteBufferCapacity:I

    if-ne v0, v1, :cond_0

    .line 40
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 41
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/record/ByteBufferPool;->pool:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method
