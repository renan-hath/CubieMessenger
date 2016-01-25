.class Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;
.super Ljava/lang/Object;
.source "VoiceMessageRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlayJob"
.end annotation


# instance fields
.field private final audioTrack:Landroid/media/AudioTrack;

.field private volatile duration:J

.field private final handler:Landroid/os/Handler;

.field private onAudioPlayProgressListener:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioPlayProgressListener;

.field private startTime:J

.field private stopped:Z

.field private final voiceFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Landroid/os/Handler;)V
    .locals 7
    .param p1, "voiceFile"    # Ljava/io/File;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/16 v2, 0x1f40

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-boolean v1, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;->stopped:Z

    .line 264
    iput-object p1, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;->voiceFile:Ljava/io/File;

    .line 265
    iput-object p2, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;->handler:Landroid/os/Handler;

    .line 267
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->isPlayVoiceMessageUsingEarpiece()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    .local v1, "stream":I
    :goto_0
    new-instance v0, Landroid/media/AudioTrack;

    .line 274
    invoke-static {v2, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;->audioTrack:Landroid/media/AudioTrack;

    .line 277
    return-void

    .line 267
    .end local v1    # "stream":I
    :cond_0
    const/4 v1, 0x3

    goto :goto_0
.end method

.method static synthetic access$600(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;)Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioPlayProgressListener;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;->onAudioPlayProgressListener:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioPlayProgressListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;)J
    .locals 2
    .param p0, "x0"    # Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;

    .prologue
    .line 239
    iget-wide v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;->duration:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;J)J
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;
    .param p1, "x1"    # J

    .prologue
    .line 239
    iput-wide p1, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;->duration:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;)J
    .locals 2
    .param p0, "x0"    # Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;

    .prologue
    .line 239
    iget-wide v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;->startTime:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;)Landroid/media/AudioTrack;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;->audioTrack:Landroid/media/AudioTrack;

    return-object v0
.end method

.method static createPlayJob(Ljava/io/File;Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioPlayProgressListener;Landroid/os/Handler;)Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;
    .locals 1
    .param p0, "voiceFile"    # Ljava/io/File;
    .param p1, "onAudioPlayProgressListener"    # Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioPlayProgressListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 244
    new-instance v0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;

    invoke-direct {v0, p0, p2}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;-><init>(Ljava/io/File;Landroid/os/Handler;)V

    .line 245
    .local v0, "playThread":Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;
    iput-object p1, v0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;->onAudioPlayProgressListener:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioPlayProgressListener;

    .line 246
    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 281
    const/4 v9, 0x0

    .line 283
    .local v9, "ilbcInputStrean":Ljava/io/RandomAccessFile;
    const/16 v6, 0x1e

    .line 284
    .local v6, "blockCount":I
    const/16 v0, 0x474

    :try_start_0
    new-array v1, v0, [B

    .line 285
    .local v1, "encodedData":[B
    const/16 v0, 0x2580

    new-array v4, v0, [B

    .line 287
    .local v4, "outputSample":[B
    new-instance v10, Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;->voiceFile:Ljava/io/File;

    const-string/jumbo v2, "r"

    invoke-direct {v10, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 288
    .end local v9    # "ilbcInputStrean":Ljava/io/RandomAccessFile;
    .local v10, "ilbcInputStrean":Ljava/io/RandomAccessFile;
    const-wide/16 v2, 0x1000

    :try_start_1
    invoke-virtual {v10, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 289
    iget-object v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob$1;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob$1;-><init>(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 296
    iget-object v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;->audioTrack:Landroid/media/AudioTrack;

    const/16 v2, 0x320

    invoke-virtual {v0, v2}, Landroid/media/AudioTrack;->setPositionNotificationPeriod(I)I

    .line 297
    iget-object v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;->audioTrack:Landroid/media/AudioTrack;

    new-instance v2, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob$2;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob$2;-><init>(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;)V

    invoke-virtual {v0, v2}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V

    .line 310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;->startTime:J

    .line 311
    iget-object v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 312
    const/4 v11, 0x0

    .line 313
    .local v11, "numRead":I
    const/4 v12, 0x0

    .line 314
    .local v12, "offset":I
    :goto_0
    array-length v0, v1

    sub-int/2addr v0, v12

    invoke-virtual {v10, v1, v12, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v11

    if-ltz v11, :cond_0

    .line 315
    add-int v14, v11, v12

    .line 316
    .local v14, "totalBytes":I
    rem-int/lit8 v13, v14, 0x26

    .line 317
    .local v13, "remain":I
    invoke-static {}, Lcom/googlecode/androidilbc/Codec;->instance()Lcom/googlecode/androidilbc/Codec;

    move-result-object v0

    const/4 v2, 0x0

    sub-int v3, v14, v13

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/googlecode/androidilbc/Codec;->decode([BII[BI)I

    move-result v7

    .line 322
    .local v7, "decode":I
    iget-object v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;->audioTrack:Landroid/media/AudioTrack;

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v2, v7}, Landroid/media/AudioTrack;->write([BII)I

    .line 323
    sub-int v0, v14, v13

    const/4 v2, 0x0

    invoke-static {v1, v0, v1, v2, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 324
    move v12, v13

    .line 325
    goto :goto_0

    .line 327
    .end local v7    # "decode":I
    .end local v13    # "remain":I
    .end local v14    # "totalBytes":I
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;->onAudioPlayProgressListener:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioPlayProgressListener;

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob$3;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob$3;-><init>(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 340
    :cond_1
    monitor-enter p0

    .line 341
    :try_start_2
    iget-object v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 342
    iget-object v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;->stopped:Z

    .line 344
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 345
    if-eqz v10, :cond_5

    .line 347
    :try_start_3
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v9, v10

    .line 351
    .end local v1    # "encodedData":[B
    .end local v4    # "outputSample":[B
    .end local v10    # "ilbcInputStrean":Ljava/io/RandomAccessFile;
    .end local v11    # "numRead":I
    .end local v12    # "offset":I
    .restart local v9    # "ilbcInputStrean":Ljava/io/RandomAccessFile;
    :cond_2
    :goto_1
    return-void

    .line 344
    .end local v9    # "ilbcInputStrean":Ljava/io/RandomAccessFile;
    .restart local v1    # "encodedData":[B
    .restart local v4    # "outputSample":[B
    .restart local v10    # "ilbcInputStrean":Ljava/io/RandomAccessFile;
    .restart local v11    # "numRead":I
    .restart local v12    # "offset":I
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 348
    :catch_0
    move-exception v0

    move-object v9, v10

    .end local v10    # "ilbcInputStrean":Ljava/io/RandomAccessFile;
    .restart local v9    # "ilbcInputStrean":Ljava/io/RandomAccessFile;
    goto :goto_1

    .line 335
    .end local v1    # "encodedData":[B
    .end local v4    # "outputSample":[B
    .end local v11    # "numRead":I
    .end local v12    # "offset":I
    :catch_1
    move-exception v8

    .line 336
    .local v8, "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    iget-object v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;->onAudioPlayProgressListener:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioPlayProgressListener;

    if-eqz v0, :cond_3

    .line 337
    iget-object v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;->onAudioPlayProgressListener:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioPlayProgressListener;

    invoke-interface {v0, v8}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioPlayProgressListener;->onFail(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 340
    :cond_3
    monitor-enter p0

    .line 341
    :try_start_6
    iget-object v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 342
    iget-object v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;->stopped:Z

    .line 344
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 345
    if-eqz v9, :cond_2

    .line 347
    :try_start_7
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    .line 348
    :catch_2
    move-exception v0

    goto :goto_1

    .line 344
    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0

    .line 340
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v0

    :goto_3
    monitor-enter p0

    .line 341
    :try_start_9
    iget-object v2, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->stop()V

    .line 342
    iget-object v2, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->release()V

    .line 343
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;->stopped:Z

    .line 344
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 345
    if-eqz v9, :cond_4

    .line 347
    :try_start_a
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 348
    :cond_4
    :goto_4
    throw v0

    .line 344
    :catchall_3
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v0

    .line 348
    :catch_3
    move-exception v2

    goto :goto_4

    .line 340
    .end local v9    # "ilbcInputStrean":Ljava/io/RandomAccessFile;
    .restart local v1    # "encodedData":[B
    .restart local v4    # "outputSample":[B
    .restart local v10    # "ilbcInputStrean":Ljava/io/RandomAccessFile;
    :catchall_4
    move-exception v0

    move-object v9, v10

    .end local v10    # "ilbcInputStrean":Ljava/io/RandomAccessFile;
    .restart local v9    # "ilbcInputStrean":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 335
    .end local v9    # "ilbcInputStrean":Ljava/io/RandomAccessFile;
    .restart local v10    # "ilbcInputStrean":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v8

    move-object v9, v10

    .end local v10    # "ilbcInputStrean":Ljava/io/RandomAccessFile;
    .restart local v9    # "ilbcInputStrean":Ljava/io/RandomAccessFile;
    goto :goto_2

    .end local v9    # "ilbcInputStrean":Ljava/io/RandomAccessFile;
    .restart local v10    # "ilbcInputStrean":Ljava/io/RandomAccessFile;
    .restart local v11    # "numRead":I
    .restart local v12    # "offset":I
    :cond_5
    move-object v9, v10

    .end local v10    # "ilbcInputStrean":Ljava/io/RandomAccessFile;
    .restart local v9    # "ilbcInputStrean":Ljava/io/RandomAccessFile;
    goto :goto_1
.end method

.method public stopPlay()V
    .locals 1

    .prologue
    .line 354
    monitor-enter p0

    .line 355
    :try_start_0
    iget-boolean v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;->stopped:Z

    if-eqz v0, :cond_0

    .line 356
    monitor-exit p0

    .line 360
    :goto_0
    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 359
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
