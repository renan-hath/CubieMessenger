.class public interface abstract Lcom/liquable/nemo/client/ReceiveDataListener;
.super Ljava/lang/Object;
.source "ReceiveDataListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/liquable/nemo/endpoint/frame/IEpFrame;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onReceive(Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
