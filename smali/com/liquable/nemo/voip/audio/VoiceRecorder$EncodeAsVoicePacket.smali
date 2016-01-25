.class Lcom/liquable/nemo/voip/audio/VoiceRecorder$EncodeAsVoicePacket;
.super Ljava/lang/Object;
.source "VoiceRecorder.java"

# interfaces
.implements Lcom/liquable/nemo/voip/audio/PcmAudioRecorder$RecordedPcmFrameListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/voip/audio/VoiceRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EncodeAsVoicePacket"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/voip/audio/VoiceRecorder;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/voip/audio/VoiceRecorder;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/liquable/nemo/voip/audio/VoiceRecorder$EncodeAsVoicePacket;->this$0:Lcom/liquable/nemo/voip/audio/VoiceRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/voip/audio/VoiceRecorder;Lcom/liquable/nemo/voip/audio/VoiceRecorder$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/voip/audio/VoiceRecorder;
    .param p2, "x1"    # Lcom/liquable/nemo/voip/audio/VoiceRecorder$1;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/liquable/nemo/voip/audio/VoiceRecorder$EncodeAsVoicePacket;-><init>(Lcom/liquable/nemo/voip/audio/VoiceRecorder;)V

    return-void
.end method


# virtual methods
.method public onPcmFrame([S)V
    .locals 5
    .param p1, "oneFramePcmSamples"    # [S

    .prologue
    .line 23
    const/4 v1, 0x0

    .line 25
    .local v1, "voicePacket":Ljava/nio/ByteBuffer;
    :try_start_0
    iget-object v2, p0, Lcom/liquable/nemo/voip/audio/VoiceRecorder$EncodeAsVoicePacket;->this$0:Lcom/liquable/nemo/voip/audio/VoiceRecorder;

    # getter for: Lcom/liquable/nemo/voip/audio/VoiceRecorder;->voiceEncoder:Lcom/liquable/nemo/opus/VoiceEncoder;
    invoke-static {v2}, Lcom/liquable/nemo/voip/audio/VoiceRecorder;->access$000(Lcom/liquable/nemo/voip/audio/VoiceRecorder;)Lcom/liquable/nemo/opus/VoiceEncoder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/liquable/nemo/opus/VoiceEncoder;->encode([S)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 26
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 27
    # getter for: Lcom/liquable/nemo/voip/audio/VoiceRecorder;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/voip/audio/VoiceRecorder;->access$100()Lcom/liquable/nemo/util/Logger;

    move-result-object v2

    const-string/jumbo v3, "zero voice packet encoded"

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/liquable/nemo/opus/OpusCodecException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    iget-object v2, p0, Lcom/liquable/nemo/voip/audio/VoiceRecorder$EncodeAsVoicePacket;->this$0:Lcom/liquable/nemo/voip/audio/VoiceRecorder;

    # getter for: Lcom/liquable/nemo/voip/audio/VoiceRecorder;->voiceEncoder:Lcom/liquable/nemo/opus/VoiceEncoder;
    invoke-static {v2}, Lcom/liquable/nemo/voip/audio/VoiceRecorder;->access$000(Lcom/liquable/nemo/voip/audio/VoiceRecorder;)Lcom/liquable/nemo/opus/VoiceEncoder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/liquable/nemo/opus/VoiceEncoder;->recycle(Ljava/nio/ByteBuffer;)V

    .line 38
    :goto_0
    return-void

    .line 31
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/liquable/nemo/voip/audio/VoiceRecorder$EncodeAsVoicePacket;->this$0:Lcom/liquable/nemo/voip/audio/VoiceRecorder;

    # getter for: Lcom/liquable/nemo/voip/audio/VoiceRecorder;->recordedVoicePacketListener:Lcom/liquable/nemo/voip/audio/VoiceRecorder$RecordedVoicePacketListener;
    invoke-static {v2}, Lcom/liquable/nemo/voip/audio/VoiceRecorder;->access$200(Lcom/liquable/nemo/voip/audio/VoiceRecorder;)Lcom/liquable/nemo/voip/audio/VoiceRecorder$RecordedVoicePacketListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/liquable/nemo/voip/audio/VoiceRecorder$RecordedVoicePacketListener;->onVoicePacket(Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catch Lcom/liquable/nemo/opus/OpusCodecException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    iget-object v2, p0, Lcom/liquable/nemo/voip/audio/VoiceRecorder$EncodeAsVoicePacket;->this$0:Lcom/liquable/nemo/voip/audio/VoiceRecorder;

    # getter for: Lcom/liquable/nemo/voip/audio/VoiceRecorder;->voiceEncoder:Lcom/liquable/nemo/opus/VoiceEncoder;
    invoke-static {v2}, Lcom/liquable/nemo/voip/audio/VoiceRecorder;->access$000(Lcom/liquable/nemo/voip/audio/VoiceRecorder;)Lcom/liquable/nemo/opus/VoiceEncoder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/liquable/nemo/opus/VoiceEncoder;->recycle(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Lcom/liquable/nemo/opus/OpusCodecException;
    :try_start_2
    # getter for: Lcom/liquable/nemo/voip/audio/VoiceRecorder;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/voip/audio/VoiceRecorder;->access$100()Lcom/liquable/nemo/util/Logger;

    move-result-object v2

    const-string/jumbo v3, "onPcmFrame"

    invoke-virtual {v2, v3, v0}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    iget-object v2, p0, Lcom/liquable/nemo/voip/audio/VoiceRecorder$EncodeAsVoicePacket;->this$0:Lcom/liquable/nemo/voip/audio/VoiceRecorder;

    # getter for: Lcom/liquable/nemo/voip/audio/VoiceRecorder;->eventSink:Lcom/liquable/nemo/voip/event/EventSink;
    invoke-static {v2}, Lcom/liquable/nemo/voip/audio/VoiceRecorder;->access$300(Lcom/liquable/nemo/voip/audio/VoiceRecorder;)Lcom/liquable/nemo/voip/event/EventSink;

    move-result-object v2

    new-instance v3, Lcom/liquable/nemo/voip/event/VoipExceptionEvent;

    sget-object v4, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->OPUS_CODEC_EXCEPTION:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    invoke-direct {v3, v4, v0}, Lcom/liquable/nemo/voip/event/VoipExceptionEvent;-><init>(Lcom/liquable/nemo/voip/event/VoipEvent$Type;Ljava/lang/Exception;)V

    invoke-interface {v2, v3}, Lcom/liquable/nemo/voip/event/EventSink;->offer(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    iget-object v2, p0, Lcom/liquable/nemo/voip/audio/VoiceRecorder$EncodeAsVoicePacket;->this$0:Lcom/liquable/nemo/voip/audio/VoiceRecorder;

    # getter for: Lcom/liquable/nemo/voip/audio/VoiceRecorder;->voiceEncoder:Lcom/liquable/nemo/opus/VoiceEncoder;
    invoke-static {v2}, Lcom/liquable/nemo/voip/audio/VoiceRecorder;->access$000(Lcom/liquable/nemo/voip/audio/VoiceRecorder;)Lcom/liquable/nemo/opus/VoiceEncoder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/liquable/nemo/opus/VoiceEncoder;->recycle(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .end local v0    # "e":Lcom/liquable/nemo/opus/OpusCodecException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/liquable/nemo/voip/audio/VoiceRecorder$EncodeAsVoicePacket;->this$0:Lcom/liquable/nemo/voip/audio/VoiceRecorder;

    # getter for: Lcom/liquable/nemo/voip/audio/VoiceRecorder;->voiceEncoder:Lcom/liquable/nemo/opus/VoiceEncoder;
    invoke-static {v3}, Lcom/liquable/nemo/voip/audio/VoiceRecorder;->access$000(Lcom/liquable/nemo/voip/audio/VoiceRecorder;)Lcom/liquable/nemo/opus/VoiceEncoder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/liquable/nemo/opus/VoiceEncoder;->recycle(Ljava/nio/ByteBuffer;)V

    throw v2
.end method
