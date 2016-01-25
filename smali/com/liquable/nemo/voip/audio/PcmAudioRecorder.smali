.class public Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;
.super Ljava/lang/Object;
.source "PcmAudioRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$RecordedPcmFrameListener;,
        Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$ReadingChunkTask;,
        Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$InitializeTask;
    }
.end annotation


# static fields
.field private static final logger:Lcom/liquable/nemo/util/Logger;


# instance fields
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

.field private final frameDurationInMs:I

.field private final recordedPcmFrameListener:Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$RecordedPcmFrameListener;

.field private final samplingCountPerFrame:I

.field private final samplingRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 247
    const-class v0, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->logger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method public constructor <init>(IILcom/liquable/nemo/voip/audio/PcmAudioRecorder$RecordedPcmFrameListener;Lcom/liquable/nemo/voip/event/EventSink;)V
    .locals 1
    .param p1, "samplingRate"    # I
    .param p2, "frameDurationInMs"    # I
    .param p3, "recordedPcmFrameListener"    # Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$RecordedPcmFrameListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$RecordedPcmFrameListener;",
            "Lcom/liquable/nemo/voip/event/EventSink",
            "<",
            "Lcom/liquable/nemo/voip/event/VoipEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p4, "eventSink":Lcom/liquable/nemo/voip/event/EventSink;, "Lcom/liquable/nemo/voip/event/EventSink<Lcom/liquable/nemo/voip/event/VoipEvent;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->executor:Ljava/util/concurrent/ExecutorService;

    .line 260
    iput p1, p0, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->samplingRate:I

    .line 261
    iput p2, p0, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->frameDurationInMs:I

    .line 262
    iput-object p4, p0, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->eventSink:Lcom/liquable/nemo/voip/event/EventSink;

    .line 263
    iput-object p3, p0, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->recordedPcmFrameListener:Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$RecordedPcmFrameListener;

    .line 264
    mul-int v0, p1, p2

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->samplingCountPerFrame:I

    .line 265
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;)I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;

    .prologue
    .line 22
    iget v0, p0, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->samplingRate:I

    return v0
.end method

.method static synthetic access$100()Lcom/liquable/nemo/util/Logger;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->logger:Lcom/liquable/nemo/util/Logger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;)Lcom/liquable/nemo/voip/event/EventSink;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->eventSink:Lcom/liquable/nemo/voip/event/EventSink;

    return-object v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;I)I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;
    .param p1, "x1"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->calcBestChunkSize(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->executor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;)I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;

    .prologue
    .line 22
    iget v0, p0, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->frameDurationInMs:I

    return v0
.end method

.method static synthetic access$600(Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;)I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;

    .prologue
    .line 22
    iget v0, p0, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->samplingCountPerFrame:I

    return v0
.end method

.method static synthetic access$700(Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;)Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$RecordedPcmFrameListener;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->recordedPcmFrameListener:Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$RecordedPcmFrameListener;

    return-object v0
.end method

.method private calcBestChunkSize(I)I
    .locals 6
    .param p1, "minBufferSizeInByte"    # I

    .prologue
    .line 269
    mul-int/lit8 v0, p1, 0x2

    .line 273
    .local v0, "minSmoothSoundBufferSizeInByte":I
    iget v3, p0, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->samplingCountPerFrame:I

    mul-int/lit8 v2, v3, 0x2

    .line 274
    .local v2, "sizePerFrameInByte":I
    move v1, v2

    .line 275
    .local v1, "preferChunkSizeInByte":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 276
    add-int/2addr v1, v2

    goto :goto_0

    .line 279
    :cond_0
    sget-object v3, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "min AudioRecord buffer size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "[b], chunk size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "[b]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/util/Logger;->info(Ljava/lang/String;)V

    .line 284
    return v1
.end method


# virtual methods
.method public destroySync()V
    .locals 5

    .prologue
    .line 288
    iget-object v1, p0, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 290
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->executor:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v2, 0x3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_0
    return-void

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "ignore":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public initializeSync()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 302
    :try_start_0
    iget-object v2, p0, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$InitializeTask;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$InitializeTask;-><init>(Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$1;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    const-wide/16 v3, 0x8

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_3

    .line 303
    const/4 v1, 0x1

    .line 321
    :goto_0
    return v1

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    goto :goto_0

    .line 306
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :catch_1
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 308
    iget-object v2, p0, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->eventSink:Lcom/liquable/nemo/voip/event/EventSink;

    const-string/jumbo v3, "initialize pcm audio recorder interrupted"

    invoke-static {v0, v3}, Lcom/liquable/nemo/voip/event/VoipExceptionEvent;->createRecorderFail(Ljava/lang/Exception;Ljava/lang/String;)Lcom/liquable/nemo/voip/event/VoipExceptionEvent;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/liquable/nemo/voip/event/EventSink;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 311
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v0

    .line 312
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    sget-object v2, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v3, "initialize pcm audio recorder fail"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 313
    iget-object v2, p0, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->eventSink:Lcom/liquable/nemo/voip/event/EventSink;

    const-string/jumbo v3, "initialize pcm audio recorder fail"

    invoke-static {v0, v3}, Lcom/liquable/nemo/voip/event/VoipExceptionEvent;->createRecorderFail(Ljava/lang/Exception;Ljava/lang/String;)Lcom/liquable/nemo/voip/event/VoipExceptionEvent;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/liquable/nemo/voip/event/EventSink;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 316
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_3
    move-exception v0

    .line 317
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    sget-object v2, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v3, "initialize pcm audio recorder timeout"

    invoke-virtual {v2, v3, v0}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 318
    iget-object v2, p0, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->eventSink:Lcom/liquable/nemo/voip/event/EventSink;

    const-string/jumbo v3, "initialize pcm audio recorder timeout"

    invoke-static {v0, v3}, Lcom/liquable/nemo/voip/event/VoipExceptionEvent;->createRecorderFail(Ljava/lang/Exception;Ljava/lang/String;)Lcom/liquable/nemo/voip/event/VoipExceptionEvent;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/liquable/nemo/voip/event/EventSink;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method
