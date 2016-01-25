.class Lcom/liquable/nemo/util/ImageUtils$PictureScaleOption;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/util/ImageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PictureScaleOption"
.end annotation


# instance fields
.field private final maxTargetSize:I

.field private final option:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method public constructor <init>(Landroid/graphics/BitmapFactory$Options;I)V
    .locals 0
    .param p1, "option"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "maxTargetSize"    # I

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/liquable/nemo/util/ImageUtils$PictureScaleOption;->option:Landroid/graphics/BitmapFactory$Options;

    .line 60
    iput p2, p0, Lcom/liquable/nemo/util/ImageUtils$PictureScaleOption;->maxTargetSize:I

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/util/ImageUtils$PictureScaleOption;)Landroid/graphics/BitmapFactory$Options;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/util/ImageUtils$PictureScaleOption;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/liquable/nemo/util/ImageUtils$PictureScaleOption;->option:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/util/ImageUtils$PictureScaleOption;)I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/util/ImageUtils$PictureScaleOption;

    .prologue
    .line 54
    iget v0, p0, Lcom/liquable/nemo/util/ImageUtils$PictureScaleOption;->maxTargetSize:I

    return v0
.end method
