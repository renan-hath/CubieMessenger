.class final Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$ReadingChunkTask;
.super Ljava/lang/Object;
.source "PcmAudioRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReadingChunkTask"
.end annotation


# instance fields
.field private final audioRecord:Landroid/media/AudioRecord;

.field private final chunkSizeInByte:I

.field final synthetic this$0:Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;Landroid/media/AudioRecord;I)V
    .locals 0
    .param p2, "audioRecord"    # Landroid/media/AudioRecord;
    .param p3, "chunkSizeInByte"    # I

    .prologue
    .line 166
    iput-object p1, p0, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$ReadingChunkTask;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p2, p0, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$ReadingChunkTask;->audioRecord:Landroid/media/AudioRecord;

    .line 168
    iput p3, p0, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$ReadingChunkTask;->chunkSizeInByte:I

    .line 169
    return-void
.end method

.method private readUntilChunkFull([S)Z
    .locals 7
    .param p1, "outputChunkInShort"    # [S

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 172
    const/4 v2, 0x0

    .line 173
    .local v2, "totalReadInShort":I
    :cond_0
    :goto_0
    array-length v4, p1

    if-eq v2, v4, :cond_4

    .line 174
    iget-object v4, p0, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$ReadingChunkTask;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;

    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->executor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v4}, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->access$400(Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 208
    :goto_1
    return v3

    .line 178
    :cond_1
    iget-object v4, p0, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$ReadingChunkTask;->audioRecord:Landroid/media/AudioRecord;

    array-length v5, p1

    sub-int/2addr v5, v2

    invoke-virtual {v4, p1, v2, v5}, Landroid/media/AudioRecord;->read([SII)I

    move-result v1

    .line 182
    .local v1, "readLengthInShort":I
    const/4 v4, -0x3

    if-ne v1, v4, :cond_2

    .line 183
    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->access$100()Lcom/liquable/nemo/util/Logger;

    move-result-object v4

    const-string/jumbo v5, "AudioRecord ERROR_INVALID_OPERATION while reading"

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;)V

    .line 184
    iget-object v4, p0, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$ReadingChunkTask;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;

    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->eventSink:Lcom/liquable/nemo/voip/event/EventSink;
    invoke-static {v4}, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->access$200(Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;)Lcom/liquable/nemo/voip/event/EventSink;

    move-result-object v4

    const-string/jumbo v5, "AudioRecord ERROR_INVALID_OPERATION while reading"

    invoke-static {v6, v5}, Lcom/liquable/nemo/voip/event/VoipExceptionEvent;->createRecorderFail(Ljava/lang/Exception;Ljava/lang/String;)Lcom/liquable/nemo/voip/event/VoipExceptionEvent;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/liquable/nemo/voip/event/EventSink;->offer(Ljava/lang/Object;)Z

    goto :goto_1

    .line 189
    :cond_2
    const/4 v4, -0x2

    if-ne v1, v4, :cond_3

    .line 190
    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->access$100()Lcom/liquable/nemo/util/Logger;

    move-result-object v4

    const-string/jumbo v5, "AudioRecord ERROR_BAD_VALUE while reading"

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;)V

    .line 191
    iget-object v4, p0, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$ReadingChunkTask;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;

    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->eventSink:Lcom/liquable/nemo/voip/event/EventSink;
    invoke-static {v4}, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->access$200(Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;)Lcom/liquable/nemo/voip/event/EventSink;

    move-result-object v4

    const-string/jumbo v5, "AudioRecord ERROR_BAD_VALUE while reading"

    invoke-static {v6, v5}, Lcom/liquable/nemo/voip/event/VoipExceptionEvent;->createRecorderFail(Ljava/lang/Exception;Ljava/lang/String;)Lcom/liquable/nemo/voip/event/VoipExceptionEvent;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/liquable/nemo/voip/event/EventSink;->offer(Ljava/lang/Object;)Z

    goto :goto_1

    .line 196
    :cond_3
    add-int/2addr v2, v1

    .line 197
    array-length v4, p1

    if-eq v2, v4, :cond_0

    .line 200
    :try_start_0
    iget-object v4, p0, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$ReadingChunkTask;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;

    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->frameDurationInMs:I
    invoke-static {v4}, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->access$500(Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/InterruptedException;
    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->access$100()Lcom/liquable/nemo/util/Logger;

    move-result-object v4

    const-string/jumbo v5, "Interrupted while filling record chunk"

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    .line 203
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 208
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "readLengthInShort":I
    :cond_4
    const/4 v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 216
    :try_start_0
    iget v4, p0, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$ReadingChunkTask;->chunkSizeInByte:I

    div-int/lit8 v4, v4, 0x2

    new-array v2, v4, [S

    .line 217
    .local v2, "recordChunk":[S
    :cond_0
    iget-object v4, p0, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$ReadingChunkTask;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;

    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->executor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v4}, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->access$400(Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v4

    if-nez v4, :cond_1

    .line 218
    invoke-direct {p0, v2}, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$ReadingChunkTask;->readUntilChunkFull([S)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 219
    .local v3, "success":Z
    if-nez v3, :cond_2

    .line 237
    .end local v3    # "success":Z
    :cond_1
    iget-object v4, p0, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$ReadingChunkTask;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v4}, Landroid/media/AudioRecord;->release()V

    .line 239
    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->access$100()Lcom/liquable/nemo/util/Logger;

    move-result-object v4

    const-string/jumbo v5, "pcm audio recorder stopped"

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 240
    return-void

    .line 224
    .restart local v3    # "success":Z
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$ReadingChunkTask;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;

    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->samplingCountPerFrame:I
    invoke-static {v4}, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->access$600(Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;)I

    move-result v4

    new-array v1, v4, [S

    .line 225
    .local v1, "oneFrameSamples":[S
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    array-length v5, v1

    div-int/2addr v4, v5

    if-ge v0, v4, :cond_0

    .line 226
    array-length v4, v1

    mul-int/2addr v4, v0

    const/4 v5, 0x0

    array-length v6, v1

    invoke-static {v2, v4, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 231
    iget-object v4, p0, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$ReadingChunkTask;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;

    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->executor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v4}, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->access$400(Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v4

    if-nez v4, :cond_3

    .line 232
    iget-object v4, p0, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$ReadingChunkTask;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;

    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->recordedPcmFrameListener:Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$RecordedPcmFrameListener;
    invoke-static {v4}, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->access$700(Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;)Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$RecordedPcmFrameListener;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$RecordedPcmFrameListener;->onPcmFrame([S)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    .end local v0    # "i":I
    .end local v1    # "oneFrameSamples":[S
    .end local v2    # "recordChunk":[S
    .end local v3    # "success":Z
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$ReadingChunkTask;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v5}, Landroid/media/AudioRecord;->release()V

    throw v4
.end method
