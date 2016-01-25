.class Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$BackedByteOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "ClientRecordFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackedByteOutputStream"
.end annotation


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "backedBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 55
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$BackedByteOutputStream;->buf:[B

    .line 56
    return-void
.end method


# virtual methods
.method public getBuf()[B
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$BackedByteOutputStream;->buf:[B

    return-object v0
.end method
