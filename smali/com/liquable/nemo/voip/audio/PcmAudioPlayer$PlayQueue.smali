.class final Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PlayQueue;
.super Ljava/lang/Object;
.source "PcmAudioPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PlayQueue"
.end annotation


# instance fields
.field private final audioTrack:Landroid/media/AudioTrack;

.field final synthetic this$0:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;Landroid/media/AudioTrack;)V
    .locals 0
    .param p2, "audioTrack"    # Landroid/media/AudioTrack;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PlayQueue;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p2, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PlayQueue;->audioTrack:Landroid/media/AudioTrack;

    .line 146
    return-void
.end method

.method private tryFillSilenceForUnderflow()V
    .locals 5

    .prologue
    .line 214
    iget-object v2, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PlayQueue;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->samplingCountPerFrame:I
    invoke-static {v2}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$1000(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x14

    iget-object v3, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PlayQueue;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    iget-object v4, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PlayQueue;->audioTrack:Landroid/media/AudioTrack;

    .line 215
    invoke-virtual {v3, v4}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->getRemainingHardwareBufferInShort(Landroid/media/AudioTrack;)I

    move-result v3

    sub-int v1, v2, v3

    .line 217
    .local v1, "required":I
    move v0, v1

    .line 219
    .local v0, "delta":I
    :goto_0
    if-lez v0, :cond_0

    .line 220
    iget-object v2, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PlayQueue;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->queue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v2}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$800(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PlayQueue;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->silence:Ljava/nio/ShortBuffer;
    invoke-static {v3}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$400(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)Ljava/nio/ShortBuffer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v2, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PlayQueue;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->samplingCountPerFrame:I
    invoke-static {v2}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$1000(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)I

    move-result v2

    sub-int/2addr v0, v2

    .line 222
    iget-object v2, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PlayQueue;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    iget-object v3, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PlayQueue;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->fillSilenceInShort:I
    invoke-static {v3}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$1100(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)I

    move-result v3

    iget-object v4, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PlayQueue;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->silence:Ljava/nio/ShortBuffer;
    invoke-static {v4}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$400(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)Ljava/nio/ShortBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v4

    add-int/2addr v3, v4

    # setter for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->fillSilenceInShort:I
    invoke-static {v2, v3}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$1102(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;I)I

    goto :goto_0

    .line 224
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 156
    :try_start_0
    iget-object v7, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PlayQueue;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->frameDurationInMs:I
    invoke-static {v7}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$700(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)I

    move-result v7

    mul-int/lit8 v7, v7, 0xf

    int-to-long v1, v7

    .line 157
    .local v1, "durationBeforeUnderflow":J
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PlayQueue;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->executor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v7}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$300(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_4

    .line 158
    const/4 v5, 0x0

    .line 160
    .local v5, "pcm":Ljava/nio/ShortBuffer;
    :try_start_1
    iget-object v7, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PlayQueue;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->queue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v7}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$800(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v7

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v7, v1, v2, v8}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/nio/ShortBuffer;

    move-object v5, v0

    .line 162
    if-nez v5, :cond_2

    .line 163
    invoke-direct {p0}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PlayQueue;->tryFillSilenceForUnderflow()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 191
    :cond_1
    :goto_1
    :try_start_2
    iget-object v7, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PlayQueue;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->pcmPlayedListender:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PcmPlayedListender;
    invoke-static {v7}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$900(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PcmPlayedListender;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PlayQueue;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->silence:Ljava/nio/ShortBuffer;
    invoke-static {v7}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$400(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)Ljava/nio/ShortBuffer;

    move-result-object v7

    if-eq v5, v7, :cond_0

    .line 192
    iget-object v7, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PlayQueue;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->pcmPlayedListender:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PcmPlayedListender;
    invoke-static {v7}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$900(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PcmPlayedListender;

    move-result-object v7

    invoke-interface {v7, v5}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PcmPlayedListender;->onPcmPlayed(Ljava/nio/ShortBuffer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 200
    .end local v1    # "durationBeforeUnderflow":J
    .end local v5    # "pcm":Ljava/nio/ShortBuffer;
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PlayQueue;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v8}, Landroid/media/AudioTrack;->release()V

    throw v7

    .line 165
    .restart local v1    # "durationBeforeUnderflow":J
    .restart local v5    # "pcm":Ljava/nio/ShortBuffer;
    :cond_2
    :try_start_3
    invoke-virtual {v5}, Ljava/nio/ShortBuffer;->limit()I

    move-result v7

    invoke-virtual {v5}, Ljava/nio/ShortBuffer;->position()I

    move-result v8

    sub-int v4, v7, v8

    .line 166
    .local v4, "lengthInShort":I
    iget-object v7, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PlayQueue;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v5}, Ljava/nio/ShortBuffer;->array()[S

    move-result-object v8

    invoke-virtual {v5}, Ljava/nio/ShortBuffer;->position()I

    move-result v9

    invoke-virtual {v5}, Ljava/nio/ShortBuffer;->limit()I

    move-result v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/media/AudioTrack;->write([SII)I

    move-result v6

    .line 168
    .local v6, "writtenInShort":I
    const/4 v7, -0x2

    if-eq v6, v7, :cond_3

    const/4 v7, -0x3

    if-ne v6, v7, :cond_5

    .line 169
    :cond_3
    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$100()Lcom/liquable/nemo/util/Logger;

    move-result-object v7

    const-string/jumbo v8, "write pcm audio samples failed, force stop"

    invoke-virtual {v7, v8}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;)V

    .line 170
    iget-object v7, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PlayQueue;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->eventSink:Lcom/liquable/nemo/voip/event/EventSink;
    invoke-static {v7}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$200(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)Lcom/liquable/nemo/voip/event/EventSink;

    move-result-object v7

    const/4 v8, 0x0

    const-string/jumbo v9, "write pcm audio samples failed, force stop"

    invoke-static {v8, v9}, Lcom/liquable/nemo/voip/event/VoipExceptionEvent;->createPlayerFail(Ljava/lang/Exception;Ljava/lang/String;)Lcom/liquable/nemo/voip/event/VoipExceptionEvent;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/liquable/nemo/voip/event/EventSink;->offer(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 191
    :try_start_4
    iget-object v7, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PlayQueue;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->pcmPlayedListender:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PcmPlayedListender;
    invoke-static {v7}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$900(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PcmPlayedListender;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PlayQueue;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->silence:Ljava/nio/ShortBuffer;
    invoke-static {v7}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$400(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)Ljava/nio/ShortBuffer;

    move-result-object v7

    if-eq v5, v7, :cond_4

    .line 192
    iget-object v7, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PlayQueue;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->pcmPlayedListender:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PcmPlayedListender;
    invoke-static {v7}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$900(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PcmPlayedListender;

    move-result-object v7

    invoke-interface {v7, v5}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PcmPlayedListender;->onPcmPlayed(Ljava/nio/ShortBuffer;)V

    .line 196
    .end local v4    # "lengthInShort":I
    .end local v5    # "pcm":Ljava/nio/ShortBuffer;
    .end local v6    # "writtenInShort":I
    :cond_4
    :goto_2
    iget-object v7, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PlayQueue;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->queue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v7}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$800(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 197
    iget-object v7, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PlayQueue;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v7}, Landroid/media/AudioTrack;->pause()V

    .line 198
    iget-object v7, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PlayQueue;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v7}, Landroid/media/AudioTrack;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 200
    iget-object v7, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PlayQueue;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v7}, Landroid/media/AudioTrack;->release()V

    .line 202
    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$100()Lcom/liquable/nemo/util/Logger;

    move-result-object v7

    const-string/jumbo v8, "pcm audio player stopped"

    invoke-virtual {v7, v8}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 203
    return-void

    .line 176
    .restart local v4    # "lengthInShort":I
    .restart local v5    # "pcm":Ljava/nio/ShortBuffer;
    .restart local v6    # "writtenInShort":I
    :cond_5
    :try_start_5
    iget-object v7, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PlayQueue;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    # operator++ for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->frameCount:I
    invoke-static {v7}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$608(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)I

    .line 177
    iget-object v7, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PlayQueue;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    iget-object v8, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PlayQueue;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->bufferedSamplesInShort:I
    invoke-static {v8}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$500(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)I

    move-result v8

    add-int/2addr v8, v6

    # setter for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->bufferedSamplesInShort:I
    invoke-static {v7, v8}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$502(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;I)I

    .line 179
    if-eq v6, v4, :cond_1

    .line 180
    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$100()Lcom/liquable/nemo/util/Logger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pcm Not fully written, expect:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", but:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_1

    .line 185
    .end local v4    # "lengthInShort":I
    .end local v6    # "writtenInShort":I
    :catch_0
    move-exception v3

    .line 186
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 191
    :try_start_7
    iget-object v7, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PlayQueue;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->pcmPlayedListender:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PcmPlayedListender;
    invoke-static {v7}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$900(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PcmPlayedListender;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PlayQueue;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->silence:Ljava/nio/ShortBuffer;
    invoke-static {v7}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$400(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)Ljava/nio/ShortBuffer;

    move-result-object v7

    if-eq v5, v7, :cond_4

    .line 192
    iget-object v7, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PlayQueue;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->pcmPlayedListender:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PcmPlayedListender;
    invoke-static {v7}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$900(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PcmPlayedListender;

    move-result-object v7

    invoke-interface {v7, v5}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PcmPlayedListender;->onPcmPlayed(Ljava/nio/ShortBuffer;)V

    goto :goto_2

    .line 191
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v7

    iget-object v8, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PlayQueue;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->pcmPlayedListender:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PcmPlayedListender;
    invoke-static {v8}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$900(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PcmPlayedListender;

    move-result-object v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PlayQueue;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->silence:Ljava/nio/ShortBuffer;
    invoke-static {v8}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$400(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)Ljava/nio/ShortBuffer;

    move-result-object v8

    if-eq v5, v8, :cond_6

    .line 192
    iget-object v8, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PlayQueue;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->pcmPlayedListender:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PcmPlayedListender;
    invoke-static {v8}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$900(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PcmPlayedListender;

    move-result-object v8

    invoke-interface {v8, v5}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PcmPlayedListender;->onPcmPlayed(Ljava/nio/ShortBuffer;)V

    :cond_6
    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method
