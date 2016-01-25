.class public Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;
.super Ljava/lang/Object;
.source "VoiceMessageRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;,
        Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioRecordProgressListener;,
        Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioPlayProgressListener;,
        Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;
    }
.end annotation


# static fields
.field public static final MAX_DURATION:I = 0x5a

.field private static final SAMPLE_RATE:I = 0x1f40


# instance fields
.field private audioRecorderJob:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private playJob:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$400([BII)F
    .locals 1
    .param p0, "x0"    # [B
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 32
    invoke-static {p0, p1, p2}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->calcAmplitude([BII)F

    move-result v0

    return v0
.end method

.method private static calcAmplitude([BII)F
    .locals 13
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 364
    if-nez p2, :cond_0

    .line 365
    const/4 v7, 0x0

    .line 380
    :goto_0
    return v7

    .line 367
    :cond_0
    const/4 v3, 0x0

    .line 368
    .local v3, "peak":I
    const/4 v5, 0x0

    .line 369
    .local v5, "sum":I
    move v1, p1

    .line 370
    .local v1, "from":I
    add-int v6, p1, p2

    .line 371
    .local v6, "to":I
    move v2, v1

    .local v2, "i":I
    :goto_1
    if-ge v2, v6, :cond_2

    .line 373
    add-int/lit8 v7, v2, 0x1

    aget-byte v7, p0, v7

    shl-int/lit8 v7, v7, 0x8

    aget-byte v8, p0, v2

    or-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 374
    .local v4, "samp":I
    if-le v4, v3, :cond_1

    .line 375
    move v3, v4

    .line 377
    :cond_1
    add-int/2addr v5, v4

    .line 371
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 379
    .end local v4    # "samp":I
    :cond_2
    div-int/lit8 v7, p2, 0x2

    div-int v7, v5, v7

    int-to-float v0, v7

    .line 380
    .local v0, "avg":F
    const-wide/high16 v7, 0x4034000000000000L    # 20.0

    float-to-double v9, v0

    const-wide v11, 0x40dfffc000000000L    # 32767.0

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->log10(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    double-to-float v7, v7

    goto :goto_0
.end method


# virtual methods
.method public isPlaying()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 394
    iget-object v1, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->playJob:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;

    if-nez v1, :cond_1

    .line 397
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->playJob:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;

    # getter for: Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;->audioTrack:Landroid/media/AudioTrack;
    invoke-static {v2}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;->access$900(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;)Landroid/media/AudioTrack;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isRecording()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 401
    iget-object v1, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->audioRecorderJob:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;

    if-nez v1, :cond_1

    .line 405
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->audioRecorderJob:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;

    # getter for: Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->audioRecord:Landroid/media/AudioRecord;
    invoke-static {v2}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->access$1000(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;)Landroid/media/AudioRecord;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public startPlay(Ljava/io/File;Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioPlayProgressListener;Landroid/os/Handler;)V
    .locals 2
    .param p1, "voiceFile"    # Ljava/io/File;
    .param p2, "onAudioPlayProgressListener"    # Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioPlayProgressListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->stop()V

    .line 415
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->voipDaemon:Lcom/liquable/nemo/voip/VoipDaemon;

    invoke-virtual {v0, p0}, Lcom/liquable/nemo/voip/VoipDaemon;->activateVoiceMessageRecorder(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;)V

    .line 417
    invoke-static {p1, p2, p3}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;->createPlayJob(Ljava/io/File;Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioPlayProgressListener;Landroid/os/Handler;)Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->playJob:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;

    .line 418
    iget-object v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->playJob:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 420
    return-void
.end method

.method public startRecord(Landroid/content/Context;Ljava/io/File;Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioRecordProgressListener;ILandroid/os/Handler;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "voiceFile"    # Ljava/io/File;
    .param p3, "onAudioRecordProgressListener"    # Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioRecordProgressListener;
    .param p4, "notifyAmplifyRate"    # I
    .param p5, "handler"    # Landroid/os/Handler;

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->stop()V

    .line 429
    invoke-static {p1}, Lcom/liquable/nemo/voip/audio/VoipSounds;->resetSamsungAudioManagerMode(Landroid/content/Context;)V

    .line 433
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->voipDaemon:Lcom/liquable/nemo/voip/VoipDaemon;

    invoke-virtual {v0, p0}, Lcom/liquable/nemo/voip/VoipDaemon;->activateVoiceMessageRecorder(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;)V

    .line 435
    new-instance v0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;

    const/16 v3, 0x5a

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;-><init>(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;Landroid/content/Context;ILjava/io/File;Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioRecordProgressListener;ILandroid/os/Handler;)V

    iput-object v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->audioRecorderJob:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;

    .line 441
    iget-object v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->audioRecorderJob:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 444
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->stopRecord()V

    .line 448
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->stopPlay()V

    .line 449
    return-void
.end method

.method public stopPlay()V
    .locals 1

    .prologue
    .line 452
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->playJob:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;->stopPlay()V

    .line 456
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->voipDaemon:Lcom/liquable/nemo/voip/VoipDaemon;

    invoke-virtual {v0, p0}, Lcom/liquable/nemo/voip/VoipDaemon;->deactivateVoiceMessageRecorder(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;)V

    .line 459
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->playJob:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;

    .line 460
    return-void
.end method

.method public stopRecord()V
    .locals 1

    .prologue
    .line 463
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->audioRecorderJob:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->stopRecord()V

    .line 467
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->voipDaemon:Lcom/liquable/nemo/voip/VoipDaemon;

    invoke-virtual {v0, p0}, Lcom/liquable/nemo/voip/VoipDaemon;->deactivateVoiceMessageRecorder(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;)V

    .line 470
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->audioRecorderJob:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;

    .line 471
    return-void
.end method

.method public terminate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 474
    iget-object v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->audioRecorderJob:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->audioRecorderJob:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->cancelRecord()V

    .line 478
    iput-object v1, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->audioRecorderJob:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;

    .line 479
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->voipDaemon:Lcom/liquable/nemo/voip/VoipDaemon;

    invoke-virtual {v0, p0}, Lcom/liquable/nemo/voip/VoipDaemon;->deactivateVoiceMessageRecorder(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;)V

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->playJob:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;

    if-eqz v0, :cond_1

    .line 485
    iget-object v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->playJob:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;->stopPlay()V

    .line 486
    iput-object v1, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->playJob:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;

    .line 487
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->voipDaemon:Lcom/liquable/nemo/voip/VoipDaemon;

    invoke-virtual {v0, p0}, Lcom/liquable/nemo/voip/VoipDaemon;->deactivateVoiceMessageRecorder(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;)V

    .line 490
    :cond_1
    return-void
.end method
