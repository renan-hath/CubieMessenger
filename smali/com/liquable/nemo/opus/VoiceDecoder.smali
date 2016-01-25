.class public final Lcom/liquable/nemo/opus/VoiceDecoder;
.super Ljava/lang/Object;
.source "VoiceDecoder.java"


# static fields
.field public static final DECODER_SAMPLING_RATE:I = 0x1f40

.field public static final FRAME_DURATION:I = 0x14

.field private static final SAMPLE_COUNT_PER_FRAME:I = 0xa0


# instance fields
.field private final opusDecodePtr:J

.field private final pcmSamplePool:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/nio/ShortBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/opus/OpusException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v2, p0, Lcom/liquable/nemo/opus/VoiceDecoder;->pcmSamplePool:Ljava/util/concurrent/BlockingQueue;

    .line 28
    new-array v0, v5, [I

    .line 36
    .local v0, "error":[I
    const/16 v2, 0x1f40

    const/4 v3, 0x1

    :try_start_0
    invoke-static {v2, v3, v0}, Ljni/opus/Opus;->opus_decoder_create(II[I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/liquable/nemo/opus/VoiceDecoder;->opusDecodePtr:J
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    aget v2, v0, v4

    if-gez v2, :cond_0

    .line 42
    aget v2, v0, v4

    invoke-static {v2}, Lcom/liquable/nemo/opus/VoiceDecoder;->createOpusException(I)Lcom/liquable/nemo/opus/OpusCodecException;

    move-result-object v2

    throw v2

    .line 37
    :catch_0
    move-exception v1

    .line 38
    .local v1, "unsatisfiedLinkError":Ljava/lang/UnsatisfiedLinkError;
    new-instance v2, Lcom/liquable/nemo/opus/OpusException;

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/liquable/nemo/opus/OpusException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 44
    .end local v1    # "unsatisfiedLinkError":Ljava/lang/UnsatisfiedLinkError;
    :cond_0
    return-void
.end method

.method private static createOpusException(I)Lcom/liquable/nemo/opus/OpusCodecException;
    .locals 2
    .param p0, "errorCode"    # I

    .prologue
    .line 11
    new-instance v0, Lcom/liquable/nemo/opus/OpusCodecException;

    invoke-static {p0}, Ljni/opus/Opus;->opus_strerror(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/opus/OpusCodecException;-><init>(ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public decode([B)Ljava/nio/ShortBuffer;
    .locals 9
    .param p1, "voicePacket"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/opus/OpusCodecException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/liquable/nemo/opus/VoiceDecoder;->pcmSamplePool:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/nio/ShortBuffer;

    .line 57
    .local v8, "pcmSamples":Ljava/nio/ShortBuffer;
    if-nez v8, :cond_0

    .line 58
    const/16 v0, 0xa0

    invoke-static {v0}, Ljava/nio/ShortBuffer;->allocate(I)Ljava/nio/ShortBuffer;

    move-result-object v8

    .line 64
    :goto_0
    if-nez p1, :cond_1

    .line 66
    iget-wide v0, p0, Lcom/liquable/nemo/opus/VoiceDecoder;->opusDecodePtr:J

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v8}, Ljava/nio/ShortBuffer;->array()[S

    move-result-object v4

    const/16 v5, 0xa0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Ljni/opus/Opus;->opus_decode(J[BI[SII)I

    move-result v7

    .line 76
    .local v7, "len":I
    :goto_1
    if-gez v7, :cond_2

    .line 77
    invoke-static {v7}, Lcom/liquable/nemo/opus/VoiceDecoder;->createOpusException(I)Lcom/liquable/nemo/opus/OpusCodecException;

    move-result-object v0

    throw v0

    .line 60
    .end local v7    # "len":I
    :cond_0
    invoke-virtual {v8}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0

    .line 68
    :cond_1
    iget-wide v0, p0, Lcom/liquable/nemo/opus/VoiceDecoder;->opusDecodePtr:J

    array-length v3, p1

    .line 71
    invoke-virtual {v8}, Ljava/nio/ShortBuffer;->array()[S

    move-result-object v4

    const/16 v5, 0xa0

    const/4 v6, 0x0

    move-object v2, p1

    .line 68
    invoke-static/range {v0 .. v6}, Ljni/opus/Opus;->opus_decode(J[BI[SII)I

    move-result v7

    .restart local v7    # "len":I
    goto :goto_1

    .line 79
    :cond_2
    invoke-virtual {v8, v7}, Ljava/nio/ShortBuffer;->limit(I)Ljava/nio/Buffer;

    .line 80
    return-object v8
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/liquable/nemo/opus/VoiceDecoder;->opusDecodePtr:J

    invoke-static {v0, v1}, Ljni/opus/Opus;->opus_decoder_destroy(J)V

    .line 89
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 90
    return-void
.end method

.method public recycle(Ljava/nio/ShortBuffer;)V
    .locals 1
    .param p1, "pcmAudioSamples"    # Ljava/nio/ShortBuffer;

    .prologue
    .line 93
    if-eqz p1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/liquable/nemo/opus/VoiceDecoder;->pcmSamplePool:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 96
    :cond_0
    return-void
.end method
