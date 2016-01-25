.class public final Lcom/liquable/nemo/opus/VoiceEncoder;
.super Ljava/lang/Object;
.source "VoiceEncoder.java"


# static fields
.field public static final ENCODER_SAMPLING_RATE:I = 0x1f40

.field private static final ENCODING_BUFFER_MAX_LENGTH:I = 0xfa0


# instance fields
.field private final opusEncodePtr:J

.field private final packetBufferPool:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/nio/ByteBuffer;",
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
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v2, p0, Lcom/liquable/nemo/opus/VoiceEncoder;->packetBufferPool:Ljava/util/concurrent/BlockingQueue;

    .line 69
    new-array v0, v4, [I

    .line 75
    .local v0, "error":[I
    const/16 v2, 0x1f40

    const/4 v3, 0x1

    const/16 v4, 0x800

    :try_start_0
    invoke-static {v2, v3, v4, v0}, Ljni/opus/Opus;->opus_encoder_create(III[I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/liquable/nemo/opus/VoiceEncoder;->opusEncodePtr:J
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    aget v2, v0, v5

    if-gez v2, :cond_0

    .line 85
    aget v2, v0, v5

    invoke-static {v2}, Lcom/liquable/nemo/opus/VoiceEncoder;->createOpusException(I)Lcom/liquable/nemo/opus/OpusCodecException;

    move-result-object v2

    throw v2

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, "unsatisfiedLinkError":Ljava/lang/UnsatisfiedLinkError;
    new-instance v2, Lcom/liquable/nemo/opus/OpusException;

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/liquable/nemo/opus/OpusException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 93
    .end local v1    # "unsatisfiedLinkError":Ljava/lang/UnsatisfiedLinkError;
    :cond_0
    iget-wide v2, p0, Lcom/liquable/nemo/opus/VoiceEncoder;->opusEncodePtr:J

    const/16 v4, 0x1e

    invoke-static {v2, v3, v4}, Lcom/liquable/nemo/opus/VoiceEncoder;->allowPacketLoss(JI)V

    .line 94
    iget-wide v2, p0, Lcom/liquable/nemo/opus/VoiceEncoder;->opusEncodePtr:J

    invoke-static {v2, v3}, Lcom/liquable/nemo/opus/VoiceEncoder;->enableDTX(J)V

    .line 95
    return-void
.end method

.method private static allowPacketLoss(JI)V
    .locals 1
    .param p0, "opusEncodePtr"    # J
    .param p2, "percet"    # I

    .prologue
    .line 18
    const/16 v0, 0xfae

    invoke-static {p0, p1, v0, p2}, Ljni/opus/Opus;->opus_encoder_ctl(JII)I

    .line 19
    return-void
.end method

.method private static createOpusException(I)Lcom/liquable/nemo/opus/OpusCodecException;
    .locals 2
    .param p0, "errorCode"    # I

    .prologue
    .line 22
    new-instance v0, Lcom/liquable/nemo/opus/OpusCodecException;

    invoke-static {p0}, Ljni/opus/Opus;->opus_strerror(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/opus/OpusCodecException;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method private static enableDTX(J)V
    .locals 2
    .param p0, "opusEncodePtr"    # J

    .prologue
    .line 34
    const/16 v0, 0xfb0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Ljni/opus/Opus;->opus_encoder_ctl(JII)I

    .line 35
    return-void
.end method

.method private static enableFEC(J)V
    .locals 2
    .param p0, "opusEncodePtr"    # J

    .prologue
    .line 55
    const/16 v0, 0xfac

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Ljni/opus/Opus;->opus_encoder_ctl(JII)I

    .line 56
    return-void
.end method


# virtual methods
.method public encode([S)Ljava/nio/ByteBuffer;
    .locals 8
    .param p1, "pcmSamplesOfSingleFrame"    # [S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/opus/OpusCodecException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xfa0

    .line 104
    iget-object v0, p0, Lcom/liquable/nemo/opus/VoiceEncoder;->packetBufferPool:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    .line 105
    .local v7, "packetBuffer":Ljava/nio/ByteBuffer;
    if-nez v7, :cond_0

    .line 106
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 112
    :goto_0
    iget-wide v0, p0, Lcom/liquable/nemo/opus/VoiceEncoder;->opusEncodePtr:J

    array-length v3, p1

    .line 115
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    move-object v2, p1

    .line 112
    invoke-static/range {v0 .. v5}, Ljni/opus/Opus;->opus_encode(J[SI[BI)I

    move-result v6

    .line 118
    .local v6, "len":I
    if-gez v6, :cond_1

    .line 119
    invoke-static {v6}, Lcom/liquable/nemo/opus/VoiceEncoder;->createOpusException(I)Lcom/liquable/nemo/opus/OpusCodecException;

    move-result-object v0

    throw v0

    .line 108
    .end local v6    # "len":I
    :cond_0
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0

    .line 126
    .restart local v6    # "len":I
    :cond_1
    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 127
    return-object v7
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 139
    iget-wide v0, p0, Lcom/liquable/nemo/opus/VoiceEncoder;->opusEncodePtr:J

    invoke-static {v0, v1}, Ljni/opus/Opus;->opus_encoder_destroy(J)V

    .line 140
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 141
    return-void
.end method

.method public recycle(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "voicePacket"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 144
    if-eqz p1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/liquable/nemo/opus/VoiceEncoder;->packetBufferPool:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 147
    :cond_0
    return-void
.end method
