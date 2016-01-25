.class public interface abstract Lcom/liquable/nemo/voip/client/IVoipClient;
.super Ljava/lang/Object;
.source "IVoipClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/voip/client/IVoipClient$Dummy;
    }
.end annotation


# virtual methods
.method public abstract connectAsync(Ljava/lang/String;I)V
.end method

.method public abstract disconnectSync()V
.end method

.method public abstract getReadVoicePacketCount()I
.end method

.method public abstract getWriteVoicePacketCount()I
.end method

.method public abstract writeAccept(Ljava/lang/String;)V
.end method

.method public abstract writeBusy(Ljava/lang/String;)V
.end method

.method public abstract writeDial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract writeHangup(Ljava/lang/String;)V
.end method

.method public abstract writePing(Ljava/lang/String;)V
.end method

.method public abstract writeReceive(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract writeReject(Ljava/lang/String;)V
.end method

.method public abstract writeVoicePacket(Ljava/nio/ByteBuffer;)V
.end method
