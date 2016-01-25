.class final Lcom/liquable/nemo/util/crop/DiskCache$Record;
.super Ljava/lang/Object;
.source "DiskCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/util/crop/DiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Record"
.end annotation


# instance fields
.field public final chunk:I

.field public final offset:I

.field public final size:I

.field public final sizeOnDisk:I

.field public final timestamp:J


# direct methods
.method public constructor <init>(IIIIJ)V
    .locals 0
    .param p1, "chunk"    # I
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .param p4, "sizeOnDisk"    # I
    .param p5, "timestamp"    # J

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/liquable/nemo/util/crop/DiskCache$Record;->chunk:I

    .line 45
    iput p2, p0, Lcom/liquable/nemo/util/crop/DiskCache$Record;->offset:I

    .line 46
    iput p3, p0, Lcom/liquable/nemo/util/crop/DiskCache$Record;->size:I

    .line 47
    iput-wide p5, p0, Lcom/liquable/nemo/util/crop/DiskCache$Record;->timestamp:J

    .line 48
    iput p4, p0, Lcom/liquable/nemo/util/crop/DiskCache$Record;->sizeOnDisk:I

    .line 49
    return-void
.end method
