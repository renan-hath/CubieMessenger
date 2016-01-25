.class public Lcom/liquable/nemo/util/imagesrc/ImageUriSrc;
.super Ljava/lang/Object;
.source "ImageUriSrc.java"

# interfaces
.implements Lcom/liquable/nemo/util/imagesrc/ImageSrc;


# instance fields
.field private final context:Landroid/content/Context;

.field private final degree:I

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "degree"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p2, p0, Lcom/liquable/nemo/util/imagesrc/ImageUriSrc;->uri:Landroid/net/Uri;

    .line 18
    iput-object p1, p0, Lcom/liquable/nemo/util/imagesrc/ImageUriSrc;->context:Landroid/content/Context;

    .line 19
    iput p3, p0, Lcom/liquable/nemo/util/imagesrc/ImageUriSrc;->degree:I

    .line 20
    return-void
.end method


# virtual methods
.method public calcDegree()I
    .locals 2

    .prologue
    .line 24
    iget v0, p0, Lcom/liquable/nemo/util/imagesrc/ImageUriSrc;->degree:I

    iget-object v1, p0, Lcom/liquable/nemo/util/imagesrc/ImageUriSrc;->uri:Landroid/net/Uri;

    invoke-static {v1}, Lcom/liquable/nemo/util/ImageUtils;->calculateRotationDegreeByExif(Landroid/net/Uri;)I

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
    .line 29
    iget-object v0, p0, Lcom/liquable/nemo/util/imagesrc/ImageUriSrc;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/util/imagesrc/ImageUriSrc;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
