.class public interface abstract Lcom/liquable/nemo/client/ConnectionListener;
.super Ljava/lang/Object;
.source "ConnectionListener.java"


# virtual methods
.method public abstract onConnected()V
.end method

.method public abstract onDisconnected()V
.end method

.method public abstract onFrameReceived(Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V
.end method

.method public abstract onFrameSend(Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V
.end method

.method public abstract onServerSelected()V
.end method
