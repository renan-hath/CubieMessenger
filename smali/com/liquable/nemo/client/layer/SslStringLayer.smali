.class public Lcom/liquable/nemo/client/layer/SslStringLayer;
.super Ljava/lang/Object;
.source "SslStringLayer.java"

# interfaces
.implements Lcom/liquable/nemo/client/layer/EpFrameLayer;


# static fields
.field private static final NULL_BYTE:B


# instance fields
.field private byteBuffer:Ljava/nio/ByteBuffer;

.field private final frameMapper:Lcom/liquable/nemo/endpoint/frame/IEpFrameMapper;

.field private final readBytes:[B


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/endpoint/frame/IEpFrameMapper;)V
    .locals 1
    .param p1, "frameMapper"    # Lcom/liquable/nemo/endpoint/frame/IEpFrameMapper;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/liquable/nemo/client/layer/SslStringLayer;->readBytes:[B

    .line 25
    iput-object p1, p0, Lcom/liquable/nemo/client/layer/SslStringLayer;->frameMapper:Lcom/liquable/nemo/endpoint/frame/IEpFrameMapper;

    .line 27
    const/high16 v0, 0x20000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/client/layer/SslStringLayer;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 28
    return-void
.end method

.method private parseFrame(Ljava/io/InputStream;Lcom/liquable/nemo/client/layer/EpFrameLayer$ReadEpFrameListener;)I
    .locals 7
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "listener"    # Lcom/liquable/nemo/client/layer/EpFrameLayer$ReadEpFrameListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 40
    iget-object v5, p0, Lcom/liquable/nemo/client/layer/SslStringLayer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_0

    .line 41
    iget-object v5, p0, Lcom/liquable/nemo/client/layer/SslStringLayer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v5}, Lcom/liquable/nemo/util/ByteBufferUtils;->expandByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v5

    iput-object v5, p0, Lcom/liquable/nemo/client/layer/SslStringLayer;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 44
    :cond_0
    iget-object v5, p0, Lcom/liquable/nemo/client/layer/SslStringLayer;->readBytes:[B

    invoke-virtual {p1, v5}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 45
    .local v2, "numberRead":I
    if-ne v2, v4, :cond_2

    move v2, v4

    .line 56
    .end local v2    # "numberRead":I
    :cond_1
    return v2

    .line 48
    .restart local v2    # "numberRead":I
    :cond_2
    iget-object v4, p0, Lcom/liquable/nemo/client/layer/SslStringLayer;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/liquable/nemo/client/layer/SslStringLayer;->readBytes:[B

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 49
    iget-object v4, p0, Lcom/liquable/nemo/client/layer/SslStringLayer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 51
    iget-object v4, p0, Lcom/liquable/nemo/client/layer/SslStringLayer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v4}, Lcom/liquable/nemo/util/ByteBufferUtils;->extractRawFrames(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v0

    .line 52
    .local v0, "extractRawFrames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 53
    .local v3, "rawFrame":Ljava/lang/String;
    iget-object v5, p0, Lcom/liquable/nemo/client/layer/SslStringLayer;->frameMapper:Lcom/liquable/nemo/endpoint/frame/IEpFrameMapper;

    invoke-interface {v5, v3}, Lcom/liquable/nemo/endpoint/frame/IEpFrameMapper;->decode(Ljava/lang/String;)Lcom/liquable/nemo/endpoint/frame/IEpFrame;

    move-result-object v1

    .line 54
    .local v1, "frame":Lcom/liquable/nemo/endpoint/frame/IEpFrame;
    invoke-interface {p2, v1}, Lcom/liquable/nemo/client/layer/EpFrameLayer$ReadEpFrameListener;->onRead(Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V

    goto :goto_0
.end method


# virtual methods
.method public begin(Ljava/net/Socket;)V
    .locals 0
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    return-void
.end method

.method public createSocketFactory()Ljavax/net/SocketFactory;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    invoke-virtual {v0}, Lcom/liquable/nemo/client/ServerType;->createSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public startReadingFrames(Ljava/io/InputStream;Lcom/liquable/nemo/client/layer/EpFrameLayer$ReadEpFrameListener;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "listener"    # Lcom/liquable/nemo/client/layer/EpFrameLayer$ReadEpFrameListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/client/layer/SslStringLayer;->parseFrame(Ljava/io/InputStream;Lcom/liquable/nemo/client/layer/EpFrameLayer$ReadEpFrameListener;)I

    move-result v0

    .line 64
    .local v0, "readDataCount":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 65
    return-void
.end method

.method public toShortDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string/jumbo v0, "SSL"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string/jumbo v0, "SSL String EpFrame Protocol"

    return-object v0
.end method

.method public writeFrame(Lcom/liquable/nemo/endpoint/frame/IEpFrame;Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "frame"    # Lcom/liquable/nemo/endpoint/frame/IEpFrame;
    .param p2, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v1, p0, Lcom/liquable/nemo/client/layer/SslStringLayer;->frameMapper:Lcom/liquable/nemo/endpoint/frame/IEpFrameMapper;

    invoke-interface {v1, p1}, Lcom/liquable/nemo/endpoint/frame/IEpFrameMapper;->encode(Lcom/liquable/nemo/endpoint/frame/IEpFrame;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "rawDara":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 84
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write(I)V

    .line 85
    return-void
.end method
