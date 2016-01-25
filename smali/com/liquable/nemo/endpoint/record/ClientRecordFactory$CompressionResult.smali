.class Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$CompressionResult;
.super Ljava/lang/Object;
.source "ClientRecordFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompressionResult"
.end annotation


# instance fields
.field private final compressed:[B

.field private final compressedLength:I

.field private final compression:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;

.field private final intermediateByteBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;[BILjava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "compress"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;
    .param p2, "compressed"    # [B
    .param p3, "compressedLength"    # I
    .param p4, "intermediateByteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$CompressionResult;->compression:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;

    .line 78
    iput-object p2, p0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$CompressionResult;->compressed:[B

    .line 79
    iput p3, p0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$CompressionResult;->compressedLength:I

    .line 80
    iput-object p4, p0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$CompressionResult;->intermediateByteBuffer:Ljava/nio/ByteBuffer;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$CompressionResult;)I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$CompressionResult;

    .prologue
    .line 64
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$CompressionResult;->compressedLength:I

    return v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$CompressionResult;)[B
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$CompressionResult;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$CompressionResult;->compressed:[B

    return-object v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$CompressionResult;)Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$CompressionResult;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$CompressionResult;->compression:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;

    return-object v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$CompressionResult;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$CompressionResult;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$CompressionResult;->intermediateByteBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method
