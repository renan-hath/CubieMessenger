.class public Lcom/liquable/nemo/android/service/FrameReceiver;
.super Ljava/lang/Object;
.source "FrameReceiver.java"

# interfaces
.implements Lcom/liquable/nemo/android/service/IEpFrameReceiver;


# instance fields
.field private final listenerMaps:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/liquable/nemo/endpoint/frame/IEpFrame;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/client/ReceiveDataListener",
            "<+",
            "Lcom/liquable/nemo/endpoint/frame/IEpFrame;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/android/service/FrameReceiver;->listenerMaps:Ljava/util/concurrent/ConcurrentHashMap;

    .line 27
    return-void
.end method

.method private receiveFrame(Ljava/lang/Class;Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V
    .locals 5
    .param p2, "epFrame"    # Lcom/liquable/nemo/endpoint/frame/IEpFrame;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1::",
            "Lcom/liquable/nemo/endpoint/frame/IEpFrame;",
            ">(",
            "Ljava/lang/Class",
            "<TT1;>;",
            "Lcom/liquable/nemo/endpoint/frame/IEpFrame;",
            ")V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT1;>;"
    iget-object v3, p0, Lcom/liquable/nemo/android/service/FrameReceiver;->listenerMaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 87
    .local v1, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/client/ReceiveDataListener<+Lcom/liquable/nemo/endpoint/frame/IEpFrame;>;>;"
    if-nez v1, :cond_1

    .line 94
    :cond_0
    return-void

    .line 90
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/endpoint/frame/IEpFrame;

    .line 91
    .local v2, "response":Lcom/liquable/nemo/endpoint/frame/IEpFrame;, "TT1;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/client/ReceiveDataListener;

    .line 92
    .local v0, "listener":Lcom/liquable/nemo/client/ReceiveDataListener;, "Lcom/liquable/nemo/client/ReceiveDataListener<+Lcom/liquable/nemo/endpoint/frame/IEpFrame;>;"
    invoke-interface {v0, v2}, Lcom/liquable/nemo/client/ReceiveDataListener;->onReceive(Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V

    goto :goto_0
.end method


# virtual methods
.method public addListener(Ljava/lang/Class;Lcom/liquable/nemo/client/ReceiveDataListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1::",
            "Lcom/liquable/nemo/endpoint/frame/IEpFrame;",
            ">(",
            "Ljava/lang/Class",
            "<TT1;>;",
            "Lcom/liquable/nemo/client/ReceiveDataListener",
            "<TT1;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT1;>;"
    .local p2, "listener":Lcom/liquable/nemo/client/ReceiveDataListener;, "Lcom/liquable/nemo/client/ReceiveDataListener<TT1;>;"
    monitor-enter p0

    .line 33
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/android/service/FrameReceiver;->listenerMaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 34
    .local v0, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/client/ReceiveDataListener<+Lcom/liquable/nemo/endpoint/frame/IEpFrame;>;>;"
    if-nez v0, :cond_0

    .line 35
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .end local v0    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/client/ReceiveDataListener<+Lcom/liquable/nemo/endpoint/frame/IEpFrame;>;>;"
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 36
    .restart local v0    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/client/ReceiveDataListener<+Lcom/liquable/nemo/endpoint/frame/IEpFrame;>;>;"
    iget-object v1, p0, Lcom/liquable/nemo/android/service/FrameReceiver;->listenerMaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    monitor-exit p0

    .line 40
    return-void

    .line 39
    .end local v0    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/client/ReceiveDataListener<+Lcom/liquable/nemo/endpoint/frame/IEpFrame;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearAllListeners()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/liquable/nemo/android/service/FrameReceiver;->listenerMaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 45
    return-void
.end method

.method public onReceiveFrame(Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V
    .locals 1
    .param p1, "endPointFrame"    # Lcom/liquable/nemo/endpoint/frame/IEpFrame;

    .prologue
    .line 49
    instance-of v0, p1, Lcom/liquable/nemo/endpoint/frame/ReceiveText;

    if-eqz v0, :cond_1

    .line 50
    const-class v0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;

    invoke-direct {p0, v0, p1}, Lcom/liquable/nemo/android/service/FrameReceiver;->receiveFrame(Ljava/lang/Class;Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    instance-of v0, p1, Lcom/liquable/nemo/endpoint/frame/SendAck;

    if-eqz v0, :cond_2

    .line 52
    const-class v0, Lcom/liquable/nemo/endpoint/frame/SendAck;

    invoke-direct {p0, v0, p1}, Lcom/liquable/nemo/android/service/FrameReceiver;->receiveFrame(Ljava/lang/Class;Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V

    goto :goto_0

    .line 53
    :cond_2
    instance-of v0, p1, Lcom/liquable/nemo/endpoint/frame/RpcResponse;

    if-eqz v0, :cond_3

    .line 54
    const-class v0, Lcom/liquable/nemo/endpoint/frame/RpcResponse;

    invoke-direct {p0, v0, p1}, Lcom/liquable/nemo/android/service/FrameReceiver;->receiveFrame(Ljava/lang/Class;Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V

    goto :goto_0

    .line 55
    :cond_3
    instance-of v0, p1, Lcom/liquable/nemo/endpoint/frame/RpcError;

    if-eqz v0, :cond_4

    .line 56
    const-class v0, Lcom/liquable/nemo/endpoint/frame/RpcError;

    invoke-direct {p0, v0, p1}, Lcom/liquable/nemo/android/service/FrameReceiver;->receiveFrame(Ljava/lang/Class;Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V

    goto :goto_0

    .line 57
    :cond_4
    instance-of v0, p1, Lcom/liquable/nemo/endpoint/frame/LoginResponse;

    if-eqz v0, :cond_5

    .line 58
    const-class v0, Lcom/liquable/nemo/endpoint/frame/LoginResponse;

    invoke-direct {p0, v0, p1}, Lcom/liquable/nemo/android/service/FrameReceiver;->receiveFrame(Ljava/lang/Class;Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V

    goto :goto_0

    .line 59
    :cond_5
    instance-of v0, p1, Lcom/liquable/nemo/endpoint/frame/LoginError;

    if-eqz v0, :cond_6

    .line 60
    const-class v0, Lcom/liquable/nemo/endpoint/frame/LoginError;

    invoke-direct {p0, v0, p1}, Lcom/liquable/nemo/android/service/FrameReceiver;->receiveFrame(Ljava/lang/Class;Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V

    goto :goto_0

    .line 61
    :cond_6
    instance-of v0, p1, Lcom/liquable/nemo/endpoint/frame/HeartbeatResponse;

    if-eqz v0, :cond_7

    .line 62
    const-class v0, Lcom/liquable/nemo/endpoint/frame/HeartbeatResponse;

    invoke-direct {p0, v0, p1}, Lcom/liquable/nemo/android/service/FrameReceiver;->receiveFrame(Ljava/lang/Class;Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V

    goto :goto_0

    .line 63
    :cond_7
    instance-of v0, p1, Lcom/liquable/nemo/endpoint/frame/SendError;

    if-eqz v0, :cond_8

    .line 64
    const-class v0, Lcom/liquable/nemo/endpoint/frame/SendError;

    invoke-direct {p0, v0, p1}, Lcom/liquable/nemo/android/service/FrameReceiver;->receiveFrame(Ljava/lang/Class;Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V

    goto :goto_0

    .line 65
    :cond_8
    instance-of v0, p1, Lcom/liquable/nemo/endpoint/frame/ErrorResponse;

    if-eqz v0, :cond_9

    .line 66
    const-class v0, Lcom/liquable/nemo/endpoint/frame/ErrorResponse;

    invoke-direct {p0, v0, p1}, Lcom/liquable/nemo/android/service/FrameReceiver;->receiveFrame(Ljava/lang/Class;Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V

    goto :goto_0

    .line 67
    :cond_9
    instance-of v0, p1, Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;

    if-eqz v0, :cond_a

    .line 69
    const-class v0, Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;

    invoke-direct {p0, v0, p1}, Lcom/liquable/nemo/android/service/FrameReceiver;->receiveFrame(Ljava/lang/Class;Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V

    goto :goto_0

    .line 70
    :cond_a
    instance-of v0, p1, Lcom/liquable/nemo/endpoint/frame/StopConnection;

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public removeListener(Ljava/lang/Class;Lcom/liquable/nemo/client/ReceiveDataListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1::",
            "Lcom/liquable/nemo/endpoint/frame/IEpFrame;",
            ">(",
            "Ljava/lang/Class",
            "<TT1;>;",
            "Lcom/liquable/nemo/client/ReceiveDataListener",
            "<TT1;>;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT1;>;"
    .local p2, "listener":Lcom/liquable/nemo/client/ReceiveDataListener;, "Lcom/liquable/nemo/client/ReceiveDataListener<TT1;>;"
    iget-object v1, p0, Lcom/liquable/nemo/android/service/FrameReceiver;->listenerMaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 104
    .local v0, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/client/ReceiveDataListener<+Lcom/liquable/nemo/endpoint/frame/IEpFrame;>;>;"
    if-nez v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
