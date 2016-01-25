.class public interface abstract Lcom/liquable/nemo/client/layer/EpFrameLayer;
.super Ljava/lang/Object;
.source "EpFrameLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/client/layer/EpFrameLayer$ReadEpFrameListener;
    }
.end annotation


# virtual methods
.method public abstract begin(Ljava/net/Socket;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createSocketFactory()Ljavax/net/SocketFactory;
.end method

.method public abstract startReadingFrames(Ljava/io/InputStream;Lcom/liquable/nemo/client/layer/EpFrameLayer$ReadEpFrameListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract toShortDescription()Ljava/lang/String;
.end method

.method public abstract writeFrame(Lcom/liquable/nemo/endpoint/frame/IEpFrame;Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
