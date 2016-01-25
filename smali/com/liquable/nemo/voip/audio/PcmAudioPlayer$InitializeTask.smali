.class final Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$InitializeTask;
.super Ljava/lang/Object;
.source "PcmAudioPlayer.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;
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
.field final synthetic this$0:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$InitializeTask;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;
    .param p2, "x1"    # Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$1;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$InitializeTask;-><init>(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)V

    return-void
.end method

.method private prefillBufferToTriggerAudioTrackPlaying(Landroid/media/AudioTrack;)I
    .locals 6
    .param p1, "audioTrack"    # Landroid/media/AudioTrack;

    .prologue
    .line 99
    const/4 v1, 0x0

    .line 100
    .local v1, "initializationSamplesInShort":I
    :goto_0
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v3

    if-nez v3, :cond_0

    .line 101
    iget-object v3, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$InitializeTask;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->silence:Ljava/nio/ShortBuffer;
    invoke-static {v3}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$400(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)Ljava/nio/ShortBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ShortBuffer;->array()[S

    move-result-object v3

    iget-object v4, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$InitializeTask;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    .line 102
    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->silence:Ljava/nio/ShortBuffer;
    invoke-static {v4}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$400(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)Ljava/nio/ShortBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ShortBuffer;->position()I

    move-result v4

    iget-object v5, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$InitializeTask;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    .line 103
    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->silence:Ljava/nio/ShortBuffer;
    invoke-static {v5}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$400(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)Ljava/nio/ShortBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ShortBuffer;->limit()I

    move-result v5

    .line 101
    invoke-virtual {p1, v3, v4, v5}, Landroid/media/AudioTrack;->write([SII)I

    move-result v2

    .line 104
    .local v2, "writtenInShort":I
    add-int/2addr v1, v2

    .line 105
    iget-object v3, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$InitializeTask;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    iget-object v4, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$InitializeTask;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->bufferedSamplesInShort:I
    invoke-static {v4}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$500(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)I

    move-result v4

    add-int/2addr v4, v2

    # setter for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->bufferedSamplesInShort:I
    invoke-static {v3, v4}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$502(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;I)I

    .line 106
    iget-object v3, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$InitializeTask;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    # operator++ for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->frameCount:I
    invoke-static {v3}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$608(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)I

    .line 108
    const-wide/16 v3, 0x1

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/InterruptedException;
    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$100()Lcom/liquable/nemo/util/Logger;

    move-result-object v3

    const-string/jumbo v4, "Interrupted while fill initial silence buffer, quit"

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    .line 111
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 112
    const/4 v3, -0x1

    .line 115
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "writtenInShort":I
    :goto_1
    return v3

    :cond_0
    move v3, v1

    goto :goto_1
.end method

.method private waitHardwareInitialized(Landroid/media/AudioTrack;)Z
    .locals 6
    .param p1, "audioTrack"    # Landroid/media/AudioTrack;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "count":I
    :goto_0
    const/16 v4, 0x1e

    if-ge v0, v4, :cond_1

    .line 122
    add-int/lit8 v0, v0, 0x1

    .line 123
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getState()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 133
    :goto_1
    return v2

    .line 127
    :cond_0
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    move v2, v3

    .line 130
    goto :goto_1

    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1
    move v2, v3

    .line 133
    goto :goto_1
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v12, 0x0

    const/4 v1, 0x0

    .line 30
    iget-object v2, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$InitializeTask;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->samplingRate:I
    invoke-static {v2}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$000(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)I

    move-result v2

    invoke-static {v2, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v9

    .line 34
    .local v9, "minHardwareBufferSize":I
    const/4 v2, -0x2

    if-eq v9, v2, :cond_0

    const/4 v2, -0x1

    if-ne v9, v2, :cond_1

    .line 35
    :cond_0
    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$100()Lcom/liquable/nemo/util/Logger;

    move-result-object v2

    const-string/jumbo v3, "AudioTrack could not get min buffer size"

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;)V

    .line 36
    iget-object v2, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$InitializeTask;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->eventSink:Lcom/liquable/nemo/voip/event/EventSink;
    invoke-static {v2}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$200(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)Lcom/liquable/nemo/voip/event/EventSink;

    move-result-object v2

    const-string/jumbo v3, "AudioTrack could not get min buffer size"

    invoke-static {v12, v3}, Lcom/liquable/nemo/voip/event/VoipExceptionEvent;->createPlayerFail(Ljava/lang/Exception;Ljava/lang/String;)Lcom/liquable/nemo/voip/event/VoipExceptionEvent;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/liquable/nemo/voip/event/EventSink;->offer(Ljava/lang/Object;)Z

    .line 39
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 85
    :goto_0
    return-object v1

    .line 42
    :cond_1
    add-int/lit16 v5, v9, 0x3e80

    .line 44
    .local v5, "smoothSoundMinHardwareBufferSize":I
    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$100()Lcom/liquable/nemo/util/Logger;

    move-result-object v2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "min AudioTrack hardware buffer size:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "[b], chosen buffer:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "[b]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 49
    new-instance v0, Landroid/media/AudioTrack;

    iget-object v2, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$InitializeTask;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    .line 50
    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->samplingRate:I
    invoke-static {v2}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$000(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)I

    move-result v2

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 56
    .local v0, "audioTrack":Landroid/media/AudioTrack;
    invoke-direct {p0, v0}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$InitializeTask;->waitHardwareInitialized(Landroid/media/AudioTrack;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 57
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 58
    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$100()Lcom/liquable/nemo/util/Logger;

    move-result-object v2

    const-string/jumbo v3, "AudioTrack hardware fail to start"

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;)V

    .line 59
    iget-object v2, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$InitializeTask;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->eventSink:Lcom/liquable/nemo/voip/event/EventSink;
    invoke-static {v2}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$200(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)Lcom/liquable/nemo/voip/event/EventSink;

    move-result-object v2

    const-string/jumbo v3, "AudioTrack hardware fail to start"

    invoke-static {v12, v3}, Lcom/liquable/nemo/voip/event/VoipExceptionEvent;->createPlayerFail(Ljava/lang/Exception;Ljava/lang/String;)Lcom/liquable/nemo/voip/event/VoipExceptionEvent;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/liquable/nemo/voip/event/EventSink;->offer(Ljava/lang/Object;)Z

    .line 62
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 68
    invoke-direct {p0, v0}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$InitializeTask;->prefillBufferToTriggerAudioTrackPlaying(Landroid/media/AudioTrack;)I

    move-result v8

    .line 69
    .local v8, "initializationSamplesInShort":I
    if-gez v8, :cond_3

    .line 70
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 71
    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$100()Lcom/liquable/nemo/util/Logger;

    move-result-object v2

    const-string/jumbo v3, "fail prefill AudioTrack buffer"

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;)V

    .line 72
    iget-object v2, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$InitializeTask;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->eventSink:Lcom/liquable/nemo/voip/event/EventSink;
    invoke-static {v2}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$200(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)Lcom/liquable/nemo/voip/event/EventSink;

    move-result-object v2

    const-string/jumbo v3, "fail prefill AudioTrack buffer"

    invoke-static {v12, v3}, Lcom/liquable/nemo/voip/event/VoipExceptionEvent;->createPlayerFail(Ljava/lang/Exception;Ljava/lang/String;)Lcom/liquable/nemo/voip/event/VoipExceptionEvent;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/liquable/nemo/voip/event/EventSink;->offer(Ljava/lang/Object;)Z

    .line 74
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    .line 78
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$InitializeTask;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->executor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v2}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$300(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PlayQueue;

    iget-object v4, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$InitializeTask;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    invoke-direct {v3, v4, v0}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PlayQueue;-><init>(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;Landroid/media/AudioTrack;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 79
    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$100()Lcom/liquable/nemo/util/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pcm audio player started, initialization samples:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "[s]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 81
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto/16 :goto_0

    .line 82
    :catch_0
    move-exception v7

    .line 83
    .local v7, "e":Ljava/util/concurrent/RejectedExecutionException;
    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$100()Lcom/liquable/nemo/util/Logger;

    move-result-object v2

    const-string/jumbo v3, "pcm audio player initialized but shutdowned, force stop"

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 85
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

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
    .line 26
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$InitializeTask;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
