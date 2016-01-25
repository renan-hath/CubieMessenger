.class Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;
.super Ljava/lang/Object;
.source "VoiceMessageRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioRecordJob"
.end annotation


# instance fields
.field private final audioRecord:Landroid/media/AudioRecord;

.field private volatile bufferSize:I

.field private final context:Landroid/content/Context;

.field private volatile duration:J

.field private final handler:Landroid/os/Handler;

.field private volatile isCancel:Z

.field private volatile isStop:Z

.field private final maxDuration:J

.field private final notifyAmplifyInterval:I

.field private final onAudioRecordProgressListener:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioRecordProgressListener;

.field private volatile startTime:J

.field final synthetic this$0:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

.field private final voiceFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;Landroid/content/Context;ILjava/io/File;Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioRecordProgressListener;ILandroid/os/Handler;)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "maxDuration"    # I
    .param p4, "voiceFile"    # Ljava/io/File;
    .param p5, "onAudioRecordProgressListener"    # Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioRecordProgressListener;
    .param p6, "notifyAmplifyRate"    # I
    .param p7, "handler"    # Landroid/os/Handler;

    .prologue
    const/16 v2, 0x1f40

    const/16 v3, 0x10

    const/4 v4, 0x2

    .line 65
    iput-object p1, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->this$0:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p2, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->context:Landroid/content/Context;

    .line 67
    int-to-long v0, p3

    iput-wide v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->maxDuration:J

    .line 68
    iput-object p4, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->voiceFile:Ljava/io/File;

    .line 69
    iput-object p5, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->onAudioRecordProgressListener:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioRecordProgressListener;

    .line 70
    iput-object p7, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->handler:Landroid/os/Handler;

    .line 71
    const/16 v0, 0x3e8

    div-int/2addr v0, p6

    iput v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->notifyAmplifyInterval:I

    .line 72
    invoke-static {v2, v3, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->bufferSize:I

    .line 76
    iget v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->bufferSize:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "throw AudioRecord.ERROR_BAD_VALUE when AudioRecord.getMinBufferSize"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->bufferSize:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->bufferSize:I

    .line 80
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    iget v5, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->bufferSize:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->audioRecord:Landroid/media/AudioRecord;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;)J
    .locals 2
    .param p0, "x0"    # Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->duration:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;J)J
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;
    .param p1, "x1"    # J

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->duration:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;)J
    .locals 2
    .param p0, "x0"    # Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->startTime:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;)Landroid/media/AudioRecord;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->audioRecord:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;)Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioRecordProgressListener;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->onAudioRecordProgressListener:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioRecordProgressListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;)J
    .locals 2
    .param p0, "x0"    # Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->maxDuration:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->voiceFile:Ljava/io/File;

    return-object v0
.end method


# virtual methods
.method public cancelRecord()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->isCancel:Z

    .line 89
    return-void
.end method

.method public run()V
    .locals 22

    .prologue
    .line 94
    const/16 v2, -0x13

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 95
    const/16 v16, 0x0

    .line 96
    .local v16, "out":Ljava/io/FileOutputStream;
    const/4 v12, 0x0

    .line 98
    .local v12, "hearInputStream":Ljava/io/InputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->audioRecord:Landroid/media/AudioRecord;

    const/16 v4, 0x320

    invoke-virtual {v2, v4}, Landroid/media/AudioRecord;->setPositionNotificationPeriod(I)I

    .line 102
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->audioRecord:Landroid/media/AudioRecord;

    new-instance v4, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob$1;-><init>(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;)V

    invoke-virtual {v2, v4}, Landroid/media/AudioRecord;->setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;)V

    .line 120
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->voiceFile:Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 121
    .end local v16    # "out":Ljava/io/FileOutputStream;
    .local v17, "out":Ljava/io/FileOutputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f060001

    .line 122
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v12

    .line 124
    move-object/from16 v0, v17

    invoke-static {v12, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 126
    move-object/from16 v0, p0

    iget v2, v0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->bufferSize:I

    new-array v3, v2, [B

    .line 127
    .local v3, "tempBuffer":[B
    move-object/from16 v0, p0

    iget v2, v0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->bufferSize:I

    new-array v6, v2, [B

    .line 128
    .local v6, "encoded":[B
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->duration:J

    .line 129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->startRecording()V

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->startTime:J

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 132
    .local v13, "lastNotifyTime":J
    const/4 v15, 0x0

    .line 134
    .local v15, "offset":I
    :goto_0
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v4}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v4

    if-ne v2, v4, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->isCancel:Z

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->isStop:Z

    if-nez v2, :cond_6

    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->audioRecord:Landroid/media/AudioRecord;

    array-length v4, v3

    sub-int/2addr v4, v15

    invoke-virtual {v2, v3, v15, v4}, Landroid/media/AudioRecord;->read([BII)I

    move-result v8

    .line 139
    .local v8, "bufferRead":I
    const/4 v2, -0x3

    if-ne v8, v2, :cond_1

    .line 140
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "read() returned AudioRecord.ERROR_INVALID_OPERATION"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    .end local v3    # "tempBuffer":[B
    .end local v6    # "encoded":[B
    .end local v8    # "bufferRead":I
    .end local v13    # "lastNotifyTime":J
    .end local v15    # "offset":I
    :catch_0
    move-exception v10

    move-object/from16 v16, v17

    .line 181
    .end local v17    # "out":Ljava/io/FileOutputStream;
    .local v10, "e":Ljava/io/IOException;
    .restart local v16    # "out":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->onAudioRecordProgressListener:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioRecordProgressListener;

    if-eqz v2, :cond_0

    .line 182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->onAudioRecordProgressListener:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioRecordProgressListener;

    invoke-interface {v2, v10}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioRecordProgressListener;->onFail(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 189
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V

    .line 190
    invoke-static {v12}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 191
    invoke-static/range {v16 .. v16}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 193
    .end local v10    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    .line 141
    .end local v16    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "tempBuffer":[B
    .restart local v6    # "encoded":[B
    .restart local v8    # "bufferRead":I
    .restart local v13    # "lastNotifyTime":J
    .restart local v15    # "offset":I
    .restart local v17    # "out":Ljava/io/FileOutputStream;
    :cond_1
    const/4 v2, -0x2

    if-ne v8, v2, :cond_3

    .line 142
    :try_start_3
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "read() returned AudioRecord.ERROR_BAD_VALUE"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 184
    .end local v3    # "tempBuffer":[B
    .end local v6    # "encoded":[B
    .end local v8    # "bufferRead":I
    .end local v13    # "lastNotifyTime":J
    .end local v15    # "offset":I
    :catch_1
    move-exception v10

    move-object/from16 v16, v17

    .line 185
    .end local v17    # "out":Ljava/io/FileOutputStream;
    .local v10, "e":Ljava/lang/IllegalStateException;
    .restart local v16    # "out":Ljava/io/FileOutputStream;
    :goto_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->onAudioRecordProgressListener:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioRecordProgressListener;

    if-eqz v2, :cond_2

    .line 186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->onAudioRecordProgressListener:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioRecordProgressListener;

    invoke-interface {v2, v10}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioRecordProgressListener;->onFail(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 189
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V

    .line 190
    invoke-static {v12}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 191
    invoke-static/range {v16 .. v16}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_2

    .line 143
    .end local v10    # "e":Ljava/lang/IllegalStateException;
    .end local v16    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "tempBuffer":[B
    .restart local v6    # "encoded":[B
    .restart local v8    # "bufferRead":I
    .restart local v13    # "lastNotifyTime":J
    .restart local v15    # "offset":I
    .restart local v17    # "out":Ljava/io/FileOutputStream;
    :cond_3
    const/4 v2, -0x3

    if-ne v8, v2, :cond_4

    .line 144
    :try_start_5
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "read() returned AudioRecord.ERROR_INVALID_OPERATION"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 189
    .end local v3    # "tempBuffer":[B
    .end local v6    # "encoded":[B
    .end local v8    # "bufferRead":I
    .end local v13    # "lastNotifyTime":J
    .end local v15    # "offset":I
    :catchall_0
    move-exception v2

    move-object/from16 v16, v17

    .end local v17    # "out":Ljava/io/FileOutputStream;
    .restart local v16    # "out":Ljava/io/FileOutputStream;
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v4}, Landroid/media/AudioRecord;->release()V

    .line 190
    invoke-static {v12}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 191
    invoke-static/range {v16 .. v16}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v2

    .line 146
    .end local v16    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "tempBuffer":[B
    .restart local v6    # "encoded":[B
    .restart local v8    # "bufferRead":I
    .restart local v13    # "lastNotifyTime":J
    .restart local v15    # "offset":I
    .restart local v17    # "out":Ljava/io/FileOutputStream;
    :cond_4
    :try_start_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->notifyAmplifyInterval:I

    int-to-long v0, v2

    move-wide/from16 v20, v0

    cmp-long v2, v4, v20

    if-ltz v2, :cond_5

    .line 147
    # invokes: Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->calcAmplitude([BII)F
    invoke-static {v3, v15, v8}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->access$400([BII)F

    move-result v9

    .line 148
    .local v9, "db":F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->onAudioRecordProgressListener:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioRecordProgressListener;

    if-eqz v2, :cond_5

    .line 150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v9}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob$2;-><init>(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;F)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 158
    .end local v9    # "db":F
    :cond_5
    add-int v19, v8, v15

    .line 159
    .local v19, "totalBytes":I
    move/from16 v0, v19

    rem-int/lit16 v0, v0, 0x140

    move/from16 v18, v0

    .line 160
    .local v18, "remain":I
    invoke-static {}, Lcom/googlecode/androidilbc/Codec;->instance()Lcom/googlecode/androidilbc/Codec;

    move-result-object v2

    const/4 v4, 0x0

    sub-int v5, v19, v18

    const/4 v7, 0x0

    .line 161
    invoke-virtual/range {v2 .. v7}, Lcom/googlecode/androidilbc/Codec;->encode([BII[BI)I

    move-result v11

    .line 163
    .local v11, "encode":I
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v2, v11}, Ljava/io/FileOutputStream;->write([BII)V

    .line 164
    sub-int v2, v19, v18

    const/4 v4, 0x0

    move/from16 v0, v18

    invoke-static {v3, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    move/from16 v15, v18

    .line 166
    goto/16 :goto_0

    .line 168
    .end local v8    # "bufferRead":I
    .end local v11    # "encode":I
    .end local v18    # "remain":I
    .end local v19    # "totalBytes":I
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->isCancel:Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v2, :cond_7

    .line 189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V

    .line 190
    invoke-static {v12}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 191
    invoke-static/range {v17 .. v17}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    move-object/from16 v16, v17

    .line 169
    .end local v17    # "out":Ljava/io/FileOutputStream;
    .restart local v16    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .line 172
    .end local v16    # "out":Ljava/io/FileOutputStream;
    .restart local v17    # "out":Ljava/io/FileOutputStream;
    :cond_7
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->onAudioRecordProgressListener:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioRecordProgressListener;

    if-eqz v2, :cond_8

    .line 173
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob$3;-><init>(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;)V

    const-wide/16 v20, 0x12c

    move-wide/from16 v0, v20

    invoke-virtual {v2, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 189
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V

    .line 190
    invoke-static {v12}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 191
    invoke-static/range {v17 .. v17}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    move-object/from16 v16, v17

    .line 192
    .end local v17    # "out":Ljava/io/FileOutputStream;
    .restart local v16    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .line 189
    .end local v3    # "tempBuffer":[B
    .end local v6    # "encoded":[B
    .end local v13    # "lastNotifyTime":J
    .end local v15    # "offset":I
    :catchall_1
    move-exception v2

    goto/16 :goto_4

    .line 184
    :catch_2
    move-exception v10

    goto/16 :goto_3

    .line 180
    :catch_3
    move-exception v10

    goto/16 :goto_1
.end method

.method public stopRecord()V
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->isStop:Z

    .line 197
    return-void
.end method
