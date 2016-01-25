.class public abstract Lcom/liquable/nemo/util/crop/Texture;
.super Ljava/lang/Object;
.source "Texture.java"


# static fields
.field public static final STATE_ERROR:I = 0x4

.field public static final STATE_LOADED:I = 0x3

.field public static final STATE_LOADING:I = 0x2

.field public static final STATE_QUEUED:I = 0x1

.field public static final STATE_UNLOADED:I


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field mHeight:I

.field mId:I

.field mNormalizedHeight:F

.field mNormalizedWidth:F

.field mState:I

.field mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/liquable/nemo/util/crop/Texture;->mState:I

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/liquable/nemo/util/crop/Texture;->mId:I

    .line 37
    iput v0, p0, Lcom/liquable/nemo/util/crop/Texture;->mState:I

    .line 38
    iput v0, p0, Lcom/liquable/nemo/util/crop/Texture;->mWidth:I

    .line 39
    iput v0, p0, Lcom/liquable/nemo/util/crop/Texture;->mHeight:I

    .line 40
    iput v1, p0, Lcom/liquable/nemo/util/crop/Texture;->mNormalizedWidth:F

    .line 41
    iput v1, p0, Lcom/liquable/nemo/util/crop/Texture;->mNormalizedHeight:F

    .line 42
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/Texture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/Texture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/util/crop/Texture;->mBitmap:Landroid/graphics/Bitmap;

    .line 46
    :cond_0
    return-void
.end method

.method public final getHeight()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/liquable/nemo/util/crop/Texture;->mHeight:I

    return v0
.end method

.method public final getNormalizedHeight()F
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/liquable/nemo/util/crop/Texture;->mNormalizedHeight:F

    return v0
.end method

.method public final getNormalizedWidth()F
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/liquable/nemo/util/crop/Texture;->mNormalizedWidth:F

    return v0
.end method

.method public final getState()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/liquable/nemo/util/crop/Texture;->mState:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/liquable/nemo/util/crop/Texture;->mWidth:I

    return v0
.end method

.method public isCached()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public final isLoaded()Z
    .locals 2

    .prologue
    .line 73
    iget v0, p0, Lcom/liquable/nemo/util/crop/Texture;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUncachedVideo()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract load(Lcom/liquable/nemo/util/crop/RenderView;)Landroid/graphics/Bitmap;
.end method

.method protected shouldQueue()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method
