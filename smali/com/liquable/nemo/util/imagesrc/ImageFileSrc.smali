.class public Lcom/liquable/nemo/util/imagesrc/ImageFileSrc;
.super Ljava/lang/Object;
.source "ImageFileSrc.java"

# interfaces
.implements Lcom/liquable/nemo/util/imagesrc/ImageSrc;


# instance fields
.field private final degree:I

.field private final filePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "degree"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/liquable/nemo/util/imagesrc/ImageFileSrc;->filePath:Ljava/lang/String;

    .line 15
    iput p2, p0, Lcom/liquable/nemo/util/imagesrc/ImageFileSrc;->degree:I

    .line 16
    return-void
.end method


# virtual methods
.method public calcDegree()I
    .locals 2

    .prologue
    .line 20
    iget v0, p0, Lcom/liquable/nemo/util/imagesrc/ImageFileSrc;->degree:I

    iget-object v1, p0, Lcom/liquable/nemo/util/imagesrc/ImageFileSrc;->filePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/liquable/nemo/util/ImageUtils;->calculateRotationDegreeByExif(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public open()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/liquable/nemo/util/imagesrc/ImageFileSrc;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
