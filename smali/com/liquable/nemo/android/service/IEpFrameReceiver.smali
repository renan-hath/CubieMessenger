.class public interface abstract Lcom/liquable/nemo/android/service/IEpFrameReceiver;
.super Ljava/lang/Object;
.source "IEpFrameReceiver.java"


# virtual methods
.method public abstract addListener(Ljava/lang/Class;Lcom/liquable/nemo/client/ReceiveDataListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/liquable/nemo/endpoint/frame/IEpFrame;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/liquable/nemo/client/ReceiveDataListener",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public abstract clearAllListeners()V
.end method

.method public abstract onReceiveFrame(Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V
.end method

.method public abstract removeListener(Ljava/lang/Class;Lcom/liquable/nemo/client/ReceiveDataListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1::",
            "Lcom/liquable/nemo/endpoint/frame/IEpFrame;",
            ">(",
            "Ljava/lang/Class",
            "<TT1;>;",
            "Lcom/liquable/nemo/client/ReceiveDataListener",
            "<TT1;>;)V"
        }
    .end annotation
.end method
