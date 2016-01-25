.class public final Lcom/liquable/nemo/voip/audio/VoicePlayer;
.super Ljava/lang/Object;
.source "VoicePlayer.java"


# static fields
.field private static final logger:Lcom/liquable/nemo/util/Logger;


# instance fields
.field private currentPacketStatusIndex:I

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

.field private final pcmAudioPlayer:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

.field private final recentPacketStatus:[Z

.field private final voiceDecoder:Lcom/liquable/nemo/opus/VoiceDecoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/liquable/nemo/voip/audio/VoicePlayer;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/voip/audio/VoicePlayer;->logger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/liquable/nemo/opus/VoiceDecoder;Lcom/liquable/nemo/voip/event/EventSink;)V
    .locals 4
    .param p1, "voiceDecoder"    # Lcom/liquable/nemo/opus/VoiceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/opus/VoiceDecoder;",
            "Lcom/liquable/nemo/voip/event/EventSink",
            "<",
            "Lcom/liquable/nemo/voip/event/VoipEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "eventSink":Lcom/liquable/nemo/voip/event/EventSink;, "Lcom/liquable/nemo/voip/event/EventSink<Lcom/liquable/nemo/voip/event/VoipEvent;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/16 v1, 0x64

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/liquable/nemo/voip/audio/VoicePlayer;->recentPacketStatus:[Z

    .line 22
    const/4 v1, 0x0

    iput v1, p0, Lcom/liquable/nemo/voip/audio/VoicePlayer;->currentPacketStatusIndex:I

    .line 25
    iput-object p2, p0, Lcom/liquable/nemo/voip/audio/VoicePlayer;->eventSink:Lcom/liquable/nemo/voip/event/EventSink;

    .line 26
    iput-object p1, p0, Lcom/liquable/nemo/voip/audio/VoicePlayer;->voiceDecoder:Lcom/liquable/nemo/opus/VoiceDecoder;

    .line 28
    new-instance v0, Lcom/liquable/nemo/voip/audio/VoicePlayer$1;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/voip/audio/VoicePlayer$1;-><init>(Lcom/liquable/nemo/voip/audio/VoicePlayer;Lcom/liquable/nemo/opus/VoiceDecoder;)V

    .line 41
    .local v0, "recyclePlayedPcmAudioSamples":Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PcmPlayedListender;
    new-instance v1, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    const/16 v2, 0x1f40

    const/16 v3, 0x14

    invoke-direct {v1, v2, v3, v0, p2}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;-><init>(IILcom/liquable/nemo/voip/audio/PcmAudioPlayer$PcmPlayedListender;Lcom/liquable/nemo/voip/event/EventSink;)V

    iput-object v1, p0, Lcom/liquable/nemo/voip/audio/VoicePlayer;->pcmAudioPlayer:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    .line 45
    return-void
.end method


# virtual methods
.method public calcPacketDropPercent()F
    .locals 5

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "dropCount":I
    iget-object v3, p0, Lcom/liquable/nemo/voip/audio/VoicePlayer;->recentPacketStatus:[Z

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-boolean v1, v3, v2

    .line 50
    .local v1, "status":Z
    if-eqz v1, :cond_0

    .line 51
    add-int/lit8 v0, v0, 0x1

    .line 49
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    .end local v1    # "status":Z
    :cond_1
    int-to-float v2, v0

    iget-object v3, p0, Lcom/liquable/nemo/voip/audio/VoicePlayer;->recentPacketStatus:[Z

    array-length v3, v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    return v2
.end method

.method public destroySync()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/liquable/nemo/voip/audio/VoicePlayer;->pcmAudioPlayer:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->destroySync()V

    .line 59
    return-void
.end method

.method public initializeSync()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/liquable/nemo/voip/audio/VoicePlayer;->pcmAudioPlayer:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->initializeSync()Z

    move-result v0

    return v0
.end method

.method public playVoicePacket([B)V
    .locals 6
    .param p1, "voicePacket"    # [B

    .prologue
    const/4 v4, 0x1

    .line 68
    const/4 v0, 0x0

    .line 70
    .local v0, "droppedPcmSamples":Ljava/nio/ShortBuffer;
    :try_start_0
    array-length v3, p1

    if-ne v3, v4, :cond_1

    .line 72
    iget-object v3, p0, Lcom/liquable/nemo/voip/audio/VoicePlayer;->recentPacketStatus:[Z

    iget v4, p0, Lcom/liquable/nemo/voip/audio/VoicePlayer;->currentPacketStatusIndex:I

    const/4 v5, 0x0

    aput-boolean v5, v3, v4

    .line 73
    iget-object v3, p0, Lcom/liquable/nemo/voip/audio/VoicePlayer;->voiceDecoder:Lcom/liquable/nemo/opus/VoiceDecoder;

    invoke-virtual {v3, p1}, Lcom/liquable/nemo/opus/VoiceDecoder;->decode([B)Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 85
    :goto_0
    iget v3, p0, Lcom/liquable/nemo/voip/audio/VoicePlayer;->currentPacketStatusIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/liquable/nemo/voip/audio/VoicePlayer;->currentPacketStatusIndex:I

    .line 86
    iget v3, p0, Lcom/liquable/nemo/voip/audio/VoicePlayer;->currentPacketStatusIndex:I

    iget-object v4, p0, Lcom/liquable/nemo/voip/audio/VoicePlayer;->recentPacketStatus:[Z

    array-length v4, v4

    if-lt v3, v4, :cond_0

    .line 87
    const/4 v3, 0x0

    iput v3, p0, Lcom/liquable/nemo/voip/audio/VoicePlayer;->currentPacketStatusIndex:I
    :try_end_0
    .catch Lcom/liquable/nemo/opus/OpusCodecException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_0
    iget-object v3, p0, Lcom/liquable/nemo/voip/audio/VoicePlayer;->voiceDecoder:Lcom/liquable/nemo/opus/VoiceDecoder;

    invoke-virtual {v3, v0}, Lcom/liquable/nemo/opus/VoiceDecoder;->recycle(Ljava/nio/ShortBuffer;)V

    .line 95
    :goto_1
    return-void

    .line 74
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/liquable/nemo/voip/audio/VoicePlayer;->pcmAudioPlayer:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    invoke-virtual {v3}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->shouldDrop()Z

    move-result v3

    if-nez v3, :cond_2

    .line 75
    iget-object v3, p0, Lcom/liquable/nemo/voip/audio/VoicePlayer;->recentPacketStatus:[Z

    iget v4, p0, Lcom/liquable/nemo/voip/audio/VoicePlayer;->currentPacketStatusIndex:I

    const/4 v5, 0x0

    aput-boolean v5, v3, v4

    .line 78
    iget-object v3, p0, Lcom/liquable/nemo/voip/audio/VoicePlayer;->voiceDecoder:Lcom/liquable/nemo/opus/VoiceDecoder;

    invoke-virtual {v3, p1}, Lcom/liquable/nemo/opus/VoiceDecoder;->decode([B)Ljava/nio/ShortBuffer;

    move-result-object v2

    .line 79
    .local v2, "pcmAudioSamples":Ljava/nio/ShortBuffer;
    iget-object v3, p0, Lcom/liquable/nemo/voip/audio/VoicePlayer;->pcmAudioPlayer:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    invoke-virtual {v3, v2}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->playPcm(Ljava/nio/ShortBuffer;)V
    :try_end_1
    .catch Lcom/liquable/nemo/opus/OpusCodecException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 89
    .end local v2    # "pcmAudioSamples":Ljava/nio/ShortBuffer;
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Lcom/liquable/nemo/opus/OpusCodecException;
    :try_start_2
    sget-object v3, Lcom/liquable/nemo/voip/audio/VoicePlayer;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v4, "playVoicePacket"

    invoke-virtual {v3, v4, v1}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    iget-object v3, p0, Lcom/liquable/nemo/voip/audio/VoicePlayer;->eventSink:Lcom/liquable/nemo/voip/event/EventSink;

    new-instance v4, Lcom/liquable/nemo/voip/event/VoipExceptionEvent;

    sget-object v5, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->OPUS_CODEC_EXCEPTION:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    invoke-direct {v4, v5, v1}, Lcom/liquable/nemo/voip/event/VoipExceptionEvent;-><init>(Lcom/liquable/nemo/voip/event/VoipEvent$Type;Ljava/lang/Exception;)V

    invoke-interface {v3, v4}, Lcom/liquable/nemo/voip/event/EventSink;->offer(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    iget-object v3, p0, Lcom/liquable/nemo/voip/audio/VoicePlayer;->voiceDecoder:Lcom/liquable/nemo/opus/VoiceDecoder;

    invoke-virtual {v3, v0}, Lcom/liquable/nemo/opus/VoiceDecoder;->recycle(Ljava/nio/ShortBuffer;)V

    goto :goto_1

    .line 81
    .end local v1    # "e":Lcom/liquable/nemo/opus/OpusCodecException;
    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/liquable/nemo/voip/audio/VoicePlayer;->recentPacketStatus:[Z

    iget v4, p0, Lcom/liquable/nemo/voip/audio/VoicePlayer;->currentPacketStatusIndex:I

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    .line 83
    iget-object v3, p0, Lcom/liquable/nemo/voip/audio/VoicePlayer;->voiceDecoder:Lcom/liquable/nemo/opus/VoiceDecoder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/opus/VoiceDecoder;->decode([B)Ljava/nio/ShortBuffer;
    :try_end_3
    .catch Lcom/liquable/nemo/opus/OpusCodecException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/liquable/nemo/voip/audio/VoicePlayer;->voiceDecoder:Lcom/liquable/nemo/opus/VoiceDecoder;

    invoke-virtual {v4, v0}, Lcom/liquable/nemo/opus/VoiceDecoder;->recycle(Ljava/nio/ShortBuffer;)V

    throw v3
.end method
