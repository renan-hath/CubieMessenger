.class public Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;
.super Ljava/lang/Object;
.source "PcmAudioPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$Reporter;,
        Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PlayQueue;,
        Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PcmPlayedListender;,
        Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$InitializeTask;
    }
.end annotation


# static fields
.field private static final SILENCE_FILL_FRAME_COUNT:I = 0x14

.field private static final logger:Lcom/liquable/nemo/util/Logger;


# instance fields
.field private bufferedSamplesInShort:I

.field private final eventSink:Lcom/liquable/nemo/voip/event/EventSink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/voip/event/EventSink",
            "<",
            "Lcom/liquable/nemo/voip/event/VoipEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private fillSilenceInShort:I

.field private frameCount:I

.field private final frameDurationInMs:I

.field private final pcmPlayedListender:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PcmPlayedListender;

.field private final queue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/nio/ShortBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final random:Ljava/util/Random;

.field private final samplingCountPerFrame:I

.field private final samplingRate:I

.field private final silence:Ljava/nio/ShortBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 256
    const-class v0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->logger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method public constructor <init>(IILcom/liquable/nemo/voip/audio/PcmAudioPlayer$PcmPlayedListender;Lcom/liquable/nemo/voip/event/EventSink;)V
    .locals 2
    .param p1, "samplingRate"    # I
    .param p2, "frameDurationInMs"    # I
    .param p3, "pcmPlayedListender"    # Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PcmPlayedListender;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PcmPlayedListender;",
            "Lcom/liquable/nemo/voip/event/EventSink",
            "<",
            "Lcom/liquable/nemo/voip/event/VoipEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 286
    .local p4, "eventSink":Lcom/liquable/nemo/voip/event/EventSink;, "Lcom/liquable/nemo/voip/event/EventSink<Lcom/liquable/nemo/voip/event/VoipEvent;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 264
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->executor:Ljava/util/concurrent/ExecutorService;

    .line 266
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->random:Ljava/util/Random;

    .line 287
    iput p1, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->samplingRate:I

    .line 288
    iput p2, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->frameDurationInMs:I

    .line 289
    iput-object p4, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->eventSink:Lcom/liquable/nemo/voip/event/EventSink;

    .line 290
    mul-int v0, p1, p2

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->samplingCountPerFrame:I

    .line 291
    iput-object p3, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->pcmPlayedListender:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PcmPlayedListender;

    .line 293
    iget v0, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->samplingCountPerFrame:I

    new-array v0, v0, [S

    invoke-static {v0}, Ljava/nio/ShortBuffer;->wrap([S)Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->silence:Ljava/nio/ShortBuffer;

    .line 294
    iget-object v0, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->silence:Ljava/nio/ShortBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 295
    iget-object v0, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->silence:Ljava/nio/ShortBuffer;

    iget-object v1, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->silence:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->limit(I)Ljava/nio/Buffer;

    .line 296
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    .prologue
    .line 25
    iget v0, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->samplingRate:I

    return v0
.end method

.method static synthetic access$100()Lcom/liquable/nemo/util/Logger;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->logger:Lcom/liquable/nemo/util/Logger;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    .prologue
    .line 25
    iget v0, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->samplingCountPerFrame:I

    return v0
.end method

.method static synthetic access$1100(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    .prologue
    .line 25
    iget v0, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->fillSilenceInShort:I

    return v0
.end method

.method static synthetic access$1102(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->fillSilenceInShort:I

    return p1
.end method

.method static synthetic access$200(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)Lcom/liquable/nemo/voip/event/EventSink;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->eventSink:Lcom/liquable/nemo/voip/event/EventSink;

    return-object v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->executor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)Ljava/nio/ShortBuffer;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->silence:Ljava/nio/ShortBuffer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    .prologue
    .line 25
    iget v0, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->bufferedSamplesInShort:I

    return v0
.end method

.method static synthetic access$502(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->bufferedSamplesInShort:I

    return p1
.end method

.method static synthetic access$600(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    .prologue
    .line 25
    iget v0, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->frameCount:I

    return v0
.end method

.method static synthetic access$608(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)I
    .locals 2
    .param p0, "x0"    # Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    .prologue
    .line 25
    iget v0, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->frameCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->frameCount:I

    return v0
.end method

.method static synthetic access$700(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    .prologue
    .line 25
    iget v0, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->frameDurationInMs:I

    return v0
.end method

.method static synthetic access$800(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->queue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$900(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PcmPlayedListender;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->pcmPlayedListender:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PcmPlayedListender;

    return-object v0
.end method


# virtual methods
.method public destroySync()V
    .locals 5

    .prologue
    .line 299
    iget-object v1, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 300
    iget-object v1, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 302
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->executor:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v2, 0x3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :goto_0
    return-void

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public getRemainingHardwareBufferInShort(Landroid/media/AudioTrack;)I
    .locals 2
    .param p1, "audioTrack"    # Landroid/media/AudioTrack;

    .prologue
    .line 309
    iget v0, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->bufferedSamplesInShort:I

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public initializeSync()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 314
    :try_start_0
    iget-object v2, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$InitializeTask;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$InitializeTask;-><init>(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$1;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    const-wide/16 v3, 0x4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_3

    .line 315
    const/4 v1, 0x1

    .line 330
    :goto_0
    return v1

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    goto :goto_0

    .line 318
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :catch_1
    move-exception v0

    .line 319
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 320
    iget-object v2, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->eventSink:Lcom/liquable/nemo/voip/event/EventSink;

    const-string/jumbo v3, "initialize pcm audio player interrupted"

    invoke-static {v0, v3}, Lcom/liquable/nemo/voip/event/VoipExceptionEvent;->createPlayerFail(Ljava/lang/Exception;Ljava/lang/String;)Lcom/liquable/nemo/voip/event/VoipExceptionEvent;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/liquable/nemo/voip/event/EventSink;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 323
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v0

    .line 324
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    sget-object v2, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v3, "initialize pcm audio player fail"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 325
    iget-object v2, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->eventSink:Lcom/liquable/nemo/voip/event/EventSink;

    const-string/jumbo v3, "initialize pcm audio player fail"

    invoke-static {v0, v3}, Lcom/liquable/nemo/voip/event/VoipExceptionEvent;->createPlayerFail(Ljava/lang/Exception;Ljava/lang/String;)Lcom/liquable/nemo/voip/event/VoipExceptionEvent;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/liquable/nemo/voip/event/EventSink;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 327
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_3
    move-exception v0

    .line 328
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    sget-object v2, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v3, "initialize pcm audio player timeout"

    invoke-virtual {v2, v3, v0}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 329
    iget-object v2, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->eventSink:Lcom/liquable/nemo/voip/event/EventSink;

    const-string/jumbo v3, "initialize pcm audio player timeout"

    invoke-static {v0, v3}, Lcom/liquable/nemo/voip/event/VoipExceptionEvent;->createPlayerFail(Ljava/lang/Exception;Ljava/lang/String;)Lcom/liquable/nemo/voip/event/VoipExceptionEvent;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/liquable/nemo/voip/event/EventSink;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public playPcm(Ljava/nio/ShortBuffer;)V
    .locals 1
    .param p1, "pcmAudioSamples"    # Ljava/nio/ShortBuffer;

    .prologue
    .line 335
    iget-object v0, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->pcmPlayedListender:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PcmPlayedListender;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->pcmPlayedListender:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PcmPlayedListender;

    invoke-interface {v0, p1}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PcmPlayedListender;->onPcmPlayed(Ljava/nio/ShortBuffer;)V

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public shouldDrop()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 346
    iget-object v3, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    .line 347
    .local v1, "size":I
    const/16 v3, 0xa

    if-ge v1, v3, :cond_1

    .line 370
    :cond_0
    :goto_0
    return v2

    .line 351
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->queue:Ljava/util/concurrent/BlockingQueue;

    iget-object v4, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->silence:Ljava/nio/ShortBuffer;

    invoke-interface {v3, v4}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 366
    const/16 v3, 0x64

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    mul-int/lit8 v0, v3, 0x1e

    .line 367
    .local v0, "dropRate":I
    iget-object v3, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->random:Ljava/util/Random;

    const/16 v4, 0x2710

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    if-ge v3, v0, :cond_0

    .line 368
    const/4 v2, 0x1

    goto :goto_0
.end method
