.class public interface abstract Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioPlayProgressListener;
.super Ljava/lang/Object;
.source "VoiceMessageRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnAudioPlayProgressListener"
.end annotation


# virtual methods
.method public abstract onComplete()V
.end method

.method public abstract onFail(Ljava/lang/Exception;)V
.end method

.method public abstract onProgress(J)V
.end method

.method public abstract postDecode()V
.end method
