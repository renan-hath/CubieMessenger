.class public interface abstract Lcom/liquable/nemo/endpoint/frame/IEpFrameMapper;
.super Ljava/lang/Object;
.source "IEpFrameMapper.java"


# virtual methods
.method public abstract decode(Ljava/io/InputStream;)Lcom/liquable/nemo/endpoint/frame/IEpFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/endpoint/frame/FrameMappingException;
        }
    .end annotation
.end method

.method public abstract decode(Ljava/lang/String;)Lcom/liquable/nemo/endpoint/frame/IEpFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/endpoint/frame/FrameMappingException;
        }
    .end annotation
.end method

.method public abstract encode(Lcom/liquable/nemo/endpoint/frame/IEpFrame;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/endpoint/frame/FrameMappingException;
        }
    .end annotation
.end method

.method public abstract encodeInto(Lcom/liquable/nemo/endpoint/frame/IEpFrame;Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/endpoint/frame/FrameMappingException;
        }
    .end annotation
.end method
