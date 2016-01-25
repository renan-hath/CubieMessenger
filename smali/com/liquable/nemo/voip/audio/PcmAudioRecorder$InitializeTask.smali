.class final Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$InitializeTask;
.super Ljava/lang/Object;
.source "PcmAudioRecorder.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InitializeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$InitializeTask;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;
    .param p2, "x1"    # Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$1;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$InitializeTask;-><init>(Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;)V

    return-void
.end method

.method private createAudioRecord(I)Landroid/media/AudioRecord;
    .locals 9
    .param p1, "bufferSizeInBytes"    # I

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x2

    .line 98
    :try_start_0
    new-instance v0, Landroid/media/AudioRecord;

    invoke-direct {p0}, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$InitializeTask;->getAudioSouce()I

    move-result v1

    iget-object v2, p0, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$InitializeTask;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;

    .line 99
    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->samplingRate:I
    invoke-static {v2}, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->access$000(Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;)I

    move-result v2

    const/16 v3, 0x10

    const/4 v4, 0x2

    move v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    return-object v0

    .line 103
    :catch_0
    move-exception v6

    .line 115
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 116
    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->access$100()Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    const-string/jumbo v1, "could not create AudioRecord with AudioSource.VOICE_COMMUNICATION, retry with VOICE_CALL"

    invoke-virtual {v0, v1, v6}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$InitializeTask;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;

    .line 119
    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->samplingRate:I
    invoke-static {v2}, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->access$000(Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;)I

    move-result v2

    move v3, v8

    move v4, v7

    move v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    goto :goto_0

    .line 124
    :cond_0
    throw v6
.end method

.method private getAudioSouce()I
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x7

    return v0
.end method

.method private waitHardwareInitialized(Landroid/media/AudioRecord;)Z
    .locals 6
    .param p1, "audioRecord"    # Landroid/media/AudioRecord;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, "count":I
    :goto_0
    const/16 v4, 0x1e

    if-ge v0, v4, :cond_1

    .line 146
    add-int/lit8 v0, v0, 0x1

    .line 147
    invoke-virtual {p1}, Landroid/media/AudioRecord;->getState()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 157
    :goto_1
    return v2

    .line 151
    :cond_0
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v1

    .line 153
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    move v2, v3

    .line 154
    goto :goto_1

    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1
    move v2, v3

    .line 157
    goto :goto_1
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 27
    iget-object v6, p0, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$InitializeTask;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;

    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->samplingRate:I
    invoke-static {v6}, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->access$000(Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;)I

    move-result v6

    const/16 v7, 0x10

    const/4 v8, 0x2

    invoke-static {v6, v7, v8}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v4

    .line 31
    .local v4, "minBufferSizeInByte":I
    const/4 v6, -0x2

    if-eq v4, v6, :cond_0

    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    .line 32
    :cond_0
    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->access$100()Lcom/liquable/nemo/util/Logger;

    move-result-object v6

    const-string/jumbo v7, "AudioRecord could not get min buffer size"

    invoke-virtual {v6, v7}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;)V

    .line 33
    iget-object v6, p0, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$InitializeTask;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;

    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->eventSink:Lcom/liquable/nemo/voip/event/EventSink;
    invoke-static {v6}, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->access$200(Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;)Lcom/liquable/nemo/voip/event/EventSink;

    move-result-object v6

    const-string/jumbo v7, "AudioRecord could not get min buffer size"

    invoke-static {v10, v7}, Lcom/liquable/nemo/voip/event/VoipExceptionEvent;->createRecorderFail(Ljava/lang/Exception;Ljava/lang/String;)Lcom/liquable/nemo/voip/event/VoipExceptionEvent;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/liquable/nemo/voip/event/EventSink;->offer(Ljava/lang/Object;)Z

    .line 36
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 92
    :goto_0
    return-object v6

    .line 39
    :cond_1
    iget-object v6, p0, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$InitializeTask;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;

    # invokes: Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->calcBestChunkSize(I)I
    invoke-static {v6, v4}, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->access$300(Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;I)I

    move-result v1

    .line 45
    .local v1, "chunkSizeInByte":I
    add-int/lit16 v5, v1, 0x3e80

    .line 47
    .local v5, "smoothRecordingBufferSizeInBytes":I
    invoke-direct {p0, v5}, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$InitializeTask;->createAudioRecord(I)Landroid/media/AudioRecord;

    move-result-object v0

    .line 49
    .local v0, "audioRecord":Landroid/media/AudioRecord;
    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->access$100()Lcom/liquable/nemo/util/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "AudioRecord choose buffer:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "[b]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 51
    invoke-direct {p0, v0}, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$InitializeTask;->waitHardwareInitialized(Landroid/media/AudioRecord;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 52
    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->access$100()Lcom/liquable/nemo/util/Logger;

    move-result-object v6

    const-string/jumbo v7, "AudioRecord hardware fail to initialize"

    invoke-virtual {v6, v7}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;)V

    .line 53
    iget-object v6, p0, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$InitializeTask;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;

    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->eventSink:Lcom/liquable/nemo/voip/event/EventSink;
    invoke-static {v6}, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->access$200(Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;)Lcom/liquable/nemo/voip/event/EventSink;

    move-result-object v6

    const-string/jumbo v7, "AudioRecord hardware fail to initialize"

    invoke-static {v10, v7}, Lcom/liquable/nemo/voip/event/VoipExceptionEvent;->createRecorderFail(Ljava/lang/Exception;Ljava/lang/String;)Lcom/liquable/nemo/voip/event/VoipExceptionEvent;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/liquable/nemo/voip/event/EventSink;->offer(Ljava/lang/Object;)Z

    .line 55
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 60
    const/4 v2, 0x0

    .line 61
    .local v2, "count":I
    :goto_1
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_4

    .line 62
    add-int/lit8 v2, v2, 0x1

    .line 63
    const/16 v6, 0x1e

    if-le v2, v6, :cond_3

    .line 65
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 66
    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->access$100()Lcom/liquable/nemo/util/Logger;

    move-result-object v6

    const-string/jumbo v7, "AudioRecord fail to start recording"

    invoke-virtual {v6, v7}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;)V

    .line 67
    iget-object v6, p0, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$InitializeTask;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;

    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->eventSink:Lcom/liquable/nemo/voip/event/EventSink;
    invoke-static {v6}, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->access$200(Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;)Lcom/liquable/nemo/voip/event/EventSink;

    move-result-object v6

    const-string/jumbo v7, "AudioRecord fail to start recording"

    invoke-static {v10, v7}, Lcom/liquable/nemo/voip/event/VoipExceptionEvent;->createRecorderFail(Ljava/lang/Exception;Ljava/lang/String;)Lcom/liquable/nemo/voip/event/VoipExceptionEvent;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/liquable/nemo/voip/event/EventSink;->offer(Ljava/lang/Object;)Z

    .line 70
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto/16 :goto_0

    .line 73
    :cond_3
    const-wide/16 v6, 0x64

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 74
    :catch_0
    move-exception v3

    .line 75
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 76
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 77
    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->access$100()Lcom/liquable/nemo/util/Logger;

    move-result-object v6

    const-string/jumbo v7, "interrupted while AudioRecord start recording, quit"

    invoke-virtual {v6, v7}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    .line 78
    iget-object v6, p0, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$InitializeTask;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;

    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->eventSink:Lcom/liquable/nemo/voip/event/EventSink;
    invoke-static {v6}, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->access$200(Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;)Lcom/liquable/nemo/voip/event/EventSink;

    move-result-object v6

    const-string/jumbo v7, "interrupted while AudioRecord start recording, quit"

    invoke-static {v3, v7}, Lcom/liquable/nemo/voip/event/VoipExceptionEvent;->createRecorderFail(Ljava/lang/Exception;Ljava/lang/String;)Lcom/liquable/nemo/voip/event/VoipExceptionEvent;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/liquable/nemo/voip/event/EventSink;->offer(Ljava/lang/Object;)Z

    .line 81
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto/16 :goto_0

    .line 86
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_4
    :try_start_1
    iget-object v6, p0, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$InitializeTask;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;

    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->executor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v6}, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->access$400(Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;)Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    new-instance v7, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$ReadingChunkTask;

    iget-object v8, p0, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$InitializeTask;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;

    invoke-direct {v7, v8, v0, v1}, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$ReadingChunkTask;-><init>(Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;Landroid/media/AudioRecord;I)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 87
    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->access$100()Lcom/liquable/nemo/util/Logger;

    move-result-object v6

    const-string/jumbo v7, "pcm audio recorder started"

    invoke-virtual {v6, v7}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 88
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    goto/16 :goto_0

    .line 89
    :catch_1
    move-exception v3

    .line 90
    .local v3, "e":Ljava/util/concurrent/RejectedExecutionException;
    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->access$100()Lcom/liquable/nemo/util/Logger;

    move-result-object v6

    const-string/jumbo v7, "pcm audio recorder initialized but shutdowned, force stop"

    invoke-virtual {v6, v7}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 92
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto/16 :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$InitializeTask;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
