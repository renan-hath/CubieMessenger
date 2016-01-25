.class public interface abstract Lcom/liquable/nemo/voip/audio/VoiceRecorder$RecordedVoicePacketListener;
.super Ljava/lang/Object;
.source "VoiceRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/voip/audio/VoiceRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RecordedVoicePacketListener"
.end annotation


# virtual methods
.method public abstract onVoicePacket(Ljava/nio/ByteBuffer;)V
.end method
