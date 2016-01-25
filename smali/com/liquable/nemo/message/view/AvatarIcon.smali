.class public Lcom/liquable/nemo/message/view/AvatarIcon;
.super Lcom/liquable/nemo/util/AbstractLoadableImage;
.source "AvatarIcon.java"


# static fields
.field public static AVATAR_CORNER_RADIUS:F = 0.0f

.field public static final AVATAR_HEIGHT_DP:I = 0x34

.field public static final AVATAR_WIDTH_DP:I = 0x34


# instance fields
.field private final height:I

.field private final loadableImage:Lcom/liquable/nemo/util/LoadableImage;

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/high16 v0, 0x40800000    # 4.0f

    sput v0, Lcom/liquable/nemo/message/view/AvatarIcon;->AVATAR_CORNER_RADIUS:F

    return-void
.end method

.method public constructor <init>(Lcom/liquable/nemo/util/LoadableImage;)V
    .locals 1
    .param p1, "loadableImage"    # Lcom/liquable/nemo/util/LoadableImage;

    .prologue
    const/16 v0, 0x34

    .line 27
    invoke-direct {p0}, Lcom/liquable/nemo/util/AbstractLoadableImage;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/liquable/nemo/message/view/AvatarIcon;->loadableImage:Lcom/liquable/nemo/util/LoadableImage;

    .line 29
    iput v0, p0, Lcom/liquable/nemo/message/view/AvatarIcon;->width:I

    .line 30
    iput v0, p0, Lcom/liquable/nemo/message/view/AvatarIcon;->height:I

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/liquable/nemo/util/LoadableImage;II)V
    .locals 0
    .param p1, "loadableImage"    # Lcom/liquable/nemo/util/LoadableImage;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/liquable/nemo/util/AbstractLoadableImage;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/liquable/nemo/message/view/AvatarIcon;->loadableImage:Lcom/liquable/nemo/util/LoadableImage;

    .line 35
    iput p2, p0, Lcom/liquable/nemo/message/view/AvatarIcon;->width:I

    .line 36
    iput p3, p0, Lcom/liquable/nemo/message/view/AvatarIcon;->height:I

    .line 37
    return-void
.end method


# virtual methods
.method public imageMissingResourceId()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public keyEquals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 46
    if-ne p0, p1, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v1

    .line 49
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 50
    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 53
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 55
    check-cast v0, Lcom/liquable/nemo/message/view/AvatarIcon;

    .line 56
    .local v0, "other":Lcom/liquable/nemo/message/view/AvatarIcon;
    iget-object v3, p0, Lcom/liquable/nemo/message/view/AvatarIcon;->loadableImage:Lcom/liquable/nemo/util/LoadableImage;

    if-nez v3, :cond_4

    .line 57
    iget-object v3, v0, Lcom/liquable/nemo/message/view/AvatarIcon;->loadableImage:Lcom/liquable/nemo/util/LoadableImage;

    if-eqz v3, :cond_0

    move v1, v2

    .line 58
    goto :goto_0

    .line 60
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/message/view/AvatarIcon;->loadableImage:Lcom/liquable/nemo/util/LoadableImage;

    iget-object v4, v0, Lcom/liquable/nemo/message/view/AvatarIcon;->loadableImage:Lcom/liquable/nemo/util/LoadableImage;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 61
    goto :goto_0
.end method

.method public keyHashCode()I
    .locals 3

    .prologue
    .line 68
    const/16 v0, 0x1f

    .line 69
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 70
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/message/view/AvatarIcon;->loadableImage:Lcom/liquable/nemo/util/LoadableImage;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 71
    return v1

    .line 70
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/message/view/AvatarIcon;->loadableImage:Lcom/liquable/nemo/util/LoadableImage;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public load(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 77
    .local v0, "density":F
    iget-object v2, p0, Lcom/liquable/nemo/message/view/AvatarIcon;->loadableImage:Lcom/liquable/nemo/util/LoadableImage;

    invoke-interface {v2, p1}, Lcom/liquable/nemo/util/LoadableImage;->load(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 79
    .local v1, "originalBitmp":Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 80
    iget-object v2, p0, Lcom/liquable/nemo/message/view/AvatarIcon;->loadableImage:Lcom/liquable/nemo/util/LoadableImage;

    invoke-interface {v2}, Lcom/liquable/nemo/util/LoadableImage;->imageMissingResourceId()I

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/message/view/AvatarIcon;->loadableImage:Lcom/liquable/nemo/util/LoadableImage;

    .line 82
    invoke-interface {v3}, Lcom/liquable/nemo/util/LoadableImage;->imageMissingResourceId()I

    move-result v3

    .line 81
    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 89
    :cond_0
    invoke-static {v1}, Lcom/liquable/nemo/util/Optional;->fromNullable(Ljava/lang/Object;)Lcom/liquable/nemo/util/Optional;

    move-result-object v2

    iget v3, p0, Lcom/liquable/nemo/message/view/AvatarIcon;->width:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iget v4, p0, Lcom/liquable/nemo/message/view/AvatarIcon;->height:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    sget v5, Lcom/liquable/nemo/message/view/AvatarIcon;->AVATAR_CORNER_RADIUS:F

    mul-float/2addr v5, v0

    .line 88
    invoke-static {p1, v2, v3, v4, v5}, Lcom/liquable/nemo/util/ImageUtils;->createRoundedBitmap(Landroid/content/Context;Lcom/liquable/nemo/util/Optional;IIF)Lcom/liquable/nemo/util/Optional;

    move-result-object v2

    .line 92
    invoke-virtual {v2}, Lcom/liquable/nemo/util/Optional;->orNull()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    :goto_0
    return-object v2

    .line 84
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public predictSize(FLandroid/view/View;)V
    .locals 1
    .param p1, "density"    # F
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 98
    iget v0, p0, Lcom/liquable/nemo/message/view/AvatarIcon;->height:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 99
    iget v0, p0, Lcom/liquable/nemo/message/view/AvatarIcon;->width:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 100
    return-void
.end method
