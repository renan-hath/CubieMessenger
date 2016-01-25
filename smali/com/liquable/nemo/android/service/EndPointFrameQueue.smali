.class public Lcom/liquable/nemo/android/service/EndPointFrameQueue;
.super Ljava/lang/Object;
.source "EndPointFrameQueue.java"


# instance fields
.field private final frameBuffer:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/liquable/nemo/endpoint/frame/IEpFrame;",
            ">;"
        }
    .end annotation
.end field

.field private isLoginned:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/android/service/EndPointFrameQueue;->isLoginned:Z

    .line 20
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/android/service/EndPointFrameQueue;->frameBuffer:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method private declared-synchronized pollFrame()Lcom/liquable/nemo/endpoint/frame/IEpFrame;
    .locals 3

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/liquable/nemo/android/service/EndPointFrameQueue;->isLoginned:Z

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/liquable/nemo/android/service/EndPointFrameQueue;->frameBuffer:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 54
    iget-object v1, p0, Lcom/liquable/nemo/android/service/EndPointFrameQueue;->frameBuffer:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/endpoint/frame/IEpFrame;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :goto_0
    monitor-exit p0

    return-object v1

    .line 57
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/liquable/nemo/android/service/EndPointFrameQueue;->frameBuffer:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/endpoint/frame/IEpFrame;

    .line 58
    .local v0, "frame":Lcom/liquable/nemo/endpoint/frame/IEpFrame;
    instance-of v2, v0, Lcom/liquable/nemo/endpoint/frame/SendText;

    if-nez v2, :cond_1

    .line 59
    iget-object v1, p0, Lcom/liquable/nemo/android/service/EndPointFrameQueue;->frameBuffer:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    .line 60
    goto :goto_0

    .line 64
    .end local v0    # "frame":Lcom/liquable/nemo/endpoint/frame/IEpFrame;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 52
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized removeAll(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/liquable/nemo/endpoint/frame/IEpFrame;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v1, "removableFrames":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/endpoint/frame/IEpFrame;>;"
    iget-object v2, p0, Lcom/liquable/nemo/android/service/EndPointFrameQueue;->frameBuffer:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/endpoint/frame/IEpFrame;

    .line 70
    .local v0, "frame":Lcom/liquable/nemo/endpoint/frame/IEpFrame;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 68
    .end local v0    # "frame":Lcom/liquable/nemo/endpoint/frame/IEpFrame;
    .end local v1    # "removableFrames":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/endpoint/frame/IEpFrame;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 74
    .restart local v1    # "removableFrames":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/endpoint/frame/IEpFrame;>;"
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/liquable/nemo/android/service/EndPointFrameQueue;->frameBuffer:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized add(ILcom/liquable/nemo/endpoint/frame/IEpFrame;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "frame"    # Lcom/liquable/nemo/endpoint/frame/IEpFrame;

    .prologue
    .line 30
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liquable/nemo/android/service/EndPointFrameQueue;->frameBuffer:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 31
    iget-boolean v0, p0, Lcom/liquable/nemo/android/service/EndPointFrameQueue;->isLoginned:Z

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/liquable/nemo/endpoint/frame/SendText;

    if-nez v0, :cond_1

    .line 32
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_1
    monitor-exit p0

    return-void

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized add(Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V
    .locals 1
    .param p1, "frame"    # Lcom/liquable/nemo/endpoint/frame/IEpFrame;

    .prologue
    .line 23
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liquable/nemo/android/service/EndPointFrameQueue;->frameBuffer:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    iget-boolean v0, p0, Lcom/liquable/nemo/android/service/EndPointFrameQueue;->isLoginned:Z

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/liquable/nemo/endpoint/frame/SendText;

    if-nez v0, :cond_1

    .line 25
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_1
    monitor-exit p0

    return-void

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liquable/nemo/android/service/EndPointFrameQueue;->frameBuffer:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit p0

    return-void

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public containsSendText(Ljava/lang/String;)Z
    .locals 3
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v1, p0, Lcom/liquable/nemo/android/service/EndPointFrameQueue;->frameBuffer:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/endpoint/frame/IEpFrame;

    .line 42
    .local v0, "frame":Lcom/liquable/nemo/endpoint/frame/IEpFrame;
    instance-of v2, v0, Lcom/liquable/nemo/endpoint/frame/SendText;

    if-eqz v2, :cond_0

    .line 43
    check-cast v0, Lcom/liquable/nemo/endpoint/frame/SendText;

    .end local v0    # "frame":Lcom/liquable/nemo/endpoint/frame/IEpFrame;
    invoke-virtual {v0}, Lcom/liquable/nemo/endpoint/frame/SendText;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    const/4 v1, 0x1

    .line 48
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized removeFrame(Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V
    .locals 1
    .param p1, "frame"    # Lcom/liquable/nemo/endpoint/frame/IEpFrame;

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liquable/nemo/android/service/EndPointFrameQueue;->frameBuffer:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized size()I
    .locals 4

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/liquable/nemo/android/service/EndPointFrameQueue;->isLoginned:Z

    if-eqz v2, :cond_1

    .line 88
    iget-object v2, p0, Lcom/liquable/nemo/android/service/EndPointFrameQueue;->frameBuffer:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 96
    :cond_0
    monitor-exit p0

    return v0

    .line 90
    :cond_1
    const/4 v0, 0x0

    .line 91
    .local v0, "count":I
    :try_start_1
    iget-object v2, p0, Lcom/liquable/nemo/android/service/EndPointFrameQueue;->frameBuffer:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/endpoint/frame/IEpFrame;

    .line 92
    .local v1, "frame":Lcom/liquable/nemo/endpoint/frame/IEpFrame;
    instance-of v3, v1, Lcom/liquable/nemo/endpoint/frame/SendText;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_2

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    .end local v0    # "count":I
    .end local v1    # "frame":Lcom/liquable/nemo/endpoint/frame/IEpFrame;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized switchLoginState(Z)V
    .locals 1
    .param p1, "loginned"    # Z

    .prologue
    .line 100
    monitor-enter p0

    if-nez p1, :cond_0

    .line 101
    :try_start_0
    const-class v0, Lcom/liquable/nemo/endpoint/frame/Login;

    invoke-direct {p0, v0}, Lcom/liquable/nemo/android/service/EndPointFrameQueue;->removeAll(Ljava/lang/Class;)V

    .line 103
    :cond_0
    iput-boolean p1, p0, Lcom/liquable/nemo/android/service/EndPointFrameQueue;->isLoginned:Z

    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized take()Lcom/liquable/nemo/endpoint/frame/IEpFrame;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 109
    monitor-enter p0

    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/liquable/nemo/android/service/EndPointFrameQueue;->pollFrame()Lcom/liquable/nemo/endpoint/frame/IEpFrame;

    move-result-object v0

    .line 110
    .local v0, "frame":Lcom/liquable/nemo/endpoint/frame/IEpFrame;
    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 109
    .end local v0    # "frame":Lcom/liquable/nemo/endpoint/frame/IEpFrame;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 113
    .restart local v0    # "frame":Lcom/liquable/nemo/endpoint/frame/IEpFrame;
    :cond_0
    monitor-exit p0

    return-object v0
.end method
