.class final Lcom/liquable/nemo/client/EndPointClient$SendNormalFrameTask;
.super Ljava/lang/Object;
.source "EndPointClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/client/EndPointClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SendNormalFrameTask"
.end annotation


# instance fields
.field private final connectionListener:Lcom/liquable/nemo/client/ConnectionListener;

.field private final epFrameLayer:Lcom/liquable/nemo/client/layer/EpFrameLayer;

.field private final handler:Landroid/os/Handler;

.field private final logger:Lcom/liquable/nemo/util/Logger;

.field private final sendQueue:Lcom/liquable/nemo/android/service/EndPointFrameQueue;

.field private final writeChannel:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/android/service/EndPointFrameQueue;Ljava/io/OutputStream;Lcom/liquable/nemo/client/ConnectionListener;Landroid/os/Handler;Lcom/liquable/nemo/client/layer/EpFrameLayer;)V
    .locals 1
    .param p1, "sendQueue"    # Lcom/liquable/nemo/android/service/EndPointFrameQueue;
    .param p2, "writeChannel"    # Ljava/io/OutputStream;
    .param p3, "connectionListener"    # Lcom/liquable/nemo/client/ConnectionListener;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "epFrameLayer"    # Lcom/liquable/nemo/client/layer/EpFrameLayer;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Lcom/liquable/nemo/util/Logger;->getInstanceForNetwork()Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/client/EndPointClient$SendNormalFrameTask;->logger:Lcom/liquable/nemo/util/Logger;

    .line 55
    iput-object p1, p0, Lcom/liquable/nemo/client/EndPointClient$SendNormalFrameTask;->sendQueue:Lcom/liquable/nemo/android/service/EndPointFrameQueue;

    .line 56
    iput-object p2, p0, Lcom/liquable/nemo/client/EndPointClient$SendNormalFrameTask;->writeChannel:Ljava/io/OutputStream;

    .line 57
    iput-object p3, p0, Lcom/liquable/nemo/client/EndPointClient$SendNormalFrameTask;->connectionListener:Lcom/liquable/nemo/client/ConnectionListener;

    .line 58
    iput-object p4, p0, Lcom/liquable/nemo/client/EndPointClient$SendNormalFrameTask;->handler:Landroid/os/Handler;

    .line 59
    iput-object p5, p0, Lcom/liquable/nemo/client/EndPointClient$SendNormalFrameTask;->epFrameLayer:Lcom/liquable/nemo/client/layer/EpFrameLayer;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/client/EndPointClient$SendNormalFrameTask;)Lcom/liquable/nemo/client/ConnectionListener;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/client/EndPointClient$SendNormalFrameTask;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/liquable/nemo/client/EndPointClient$SendNormalFrameTask;->connectionListener:Lcom/liquable/nemo/client/ConnectionListener;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 64
    const/4 v2, 0x0

    .line 66
    .local v2, "frame":Lcom/liquable/nemo/endpoint/frame/IEpFrame;
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/liquable/nemo/client/EndPointClient$SendNormalFrameTask;->sendQueue:Lcom/liquable/nemo/android/service/EndPointFrameQueue;

    invoke-virtual {v3}, Lcom/liquable/nemo/android/service/EndPointFrameQueue;->take()Lcom/liquable/nemo/endpoint/frame/IEpFrame;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 67
    iget-object v3, p0, Lcom/liquable/nemo/client/EndPointClient$SendNormalFrameTask;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendFrame@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 69
    move-object v0, v2

    .line 70
    .local v0, "blockFrame":Lcom/liquable/nemo/endpoint/frame/IEpFrame;
    iget-object v3, p0, Lcom/liquable/nemo/client/EndPointClient$SendNormalFrameTask;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/liquable/nemo/client/EndPointClient$SendNormalFrameTask$1;

    invoke-direct {v4, p0, v0}, Lcom/liquable/nemo/client/EndPointClient$SendNormalFrameTask$1;-><init>(Lcom/liquable/nemo/client/EndPointClient$SendNormalFrameTask;Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    iget-object v3, p0, Lcom/liquable/nemo/client/EndPointClient$SendNormalFrameTask;->epFrameLayer:Lcom/liquable/nemo/client/layer/EpFrameLayer;

    iget-object v4, p0, Lcom/liquable/nemo/client/EndPointClient$SendNormalFrameTask;->writeChannel:Ljava/io/OutputStream;

    invoke-interface {v3, v2, v4}, Lcom/liquable/nemo/client/layer/EpFrameLayer;->writeFrame(Lcom/liquable/nemo/endpoint/frame/IEpFrame;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    const/4 v2, 0x0

    .line 80
    goto :goto_0

    .line 90
    .end local v0    # "blockFrame":Lcom/liquable/nemo/endpoint/frame/IEpFrame;
    :cond_0
    instance-of v3, v2, Lcom/liquable/nemo/endpoint/frame/SendText;

    if-eqz v3, :cond_1

    .line 91
    iget-object v3, p0, Lcom/liquable/nemo/client/EndPointClient$SendNormalFrameTask;->sendQueue:Lcom/liquable/nemo/android/service/EndPointFrameQueue;

    invoke-virtual {v3, v6, v2}, Lcom/liquable/nemo/android/service/EndPointFrameQueue;->add(ILcom/liquable/nemo/endpoint/frame/IEpFrame;)V

    .line 94
    :cond_1
    :goto_1
    return-void

    .line 81
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 83
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    instance-of v3, v2, Lcom/liquable/nemo/endpoint/frame/SendText;

    if-eqz v3, :cond_1

    .line 91
    iget-object v3, p0, Lcom/liquable/nemo/client/EndPointClient$SendNormalFrameTask;->sendQueue:Lcom/liquable/nemo/android/service/EndPointFrameQueue;

    invoke-virtual {v3, v6, v2}, Lcom/liquable/nemo/android/service/EndPointFrameQueue;->add(ILcom/liquable/nemo/endpoint/frame/IEpFrame;)V

    goto :goto_1

    .line 84
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 85
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    instance-of v3, v2, Lcom/liquable/nemo/endpoint/frame/SendText;

    if-eqz v3, :cond_1

    .line 91
    iget-object v3, p0, Lcom/liquable/nemo/client/EndPointClient$SendNormalFrameTask;->sendQueue:Lcom/liquable/nemo/android/service/EndPointFrameQueue;

    invoke-virtual {v3, v6, v2}, Lcom/liquable/nemo/android/service/EndPointFrameQueue;->add(ILcom/liquable/nemo/endpoint/frame/IEpFrame;)V

    goto :goto_1

    .line 90
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    instance-of v4, v2, Lcom/liquable/nemo/endpoint/frame/SendText;

    if-eqz v4, :cond_2

    .line 91
    iget-object v4, p0, Lcom/liquable/nemo/client/EndPointClient$SendNormalFrameTask;->sendQueue:Lcom/liquable/nemo/android/service/EndPointFrameQueue;

    invoke-virtual {v4, v6, v2}, Lcom/liquable/nemo/android/service/EndPointFrameQueue;->add(ILcom/liquable/nemo/endpoint/frame/IEpFrame;)V

    :cond_2
    throw v3
.end method
