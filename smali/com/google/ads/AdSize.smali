.class public Lcom/google/ads/AdSize;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AUTO_HEIGHT:I = -0x2

.field public static final BANNER:Lcom/google/ads/AdSize;

.field public static final FULL_WIDTH:I = -0x1

.field public static final IAB_BANNER:Lcom/google/ads/AdSize;

.field public static final IAB_LEADERBOARD:Lcom/google/ads/AdSize;

.field public static final IAB_MRECT:Lcom/google/ads/AdSize;

.field public static final IAB_WIDE_SKYSCRAPER:Lcom/google/ads/AdSize;

.field public static final LANDSCAPE_AD_HEIGHT:I = 0x20

.field public static final LARGE_AD_HEIGHT:I = 0x5a

.field public static final PORTRAIT_AD_HEIGHT:I = 0x32

.field public static final SMART_BANNER:Lcom/google/ads/AdSize;


# instance fields
.field private final a:I

.field private final b:I

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 93
    new-instance v0, Lcom/google/ads/AdSize;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const-string/jumbo v3, "mb"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/AdSize;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/AdSize;->SMART_BANNER:Lcom/google/ads/AdSize;

    .line 97
    new-instance v0, Lcom/google/ads/AdSize;

    const/16 v1, 0x140

    const/16 v2, 0x32

    const-string/jumbo v3, "mb"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/AdSize;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    .line 100
    new-instance v0, Lcom/google/ads/AdSize;

    const/16 v1, 0x12c

    const/16 v2, 0xfa

    const-string/jumbo v3, "as"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/AdSize;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/AdSize;->IAB_MRECT:Lcom/google/ads/AdSize;

    .line 103
    new-instance v0, Lcom/google/ads/AdSize;

    const/16 v1, 0x1d4

    const/16 v2, 0x3c

    const-string/jumbo v3, "as"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/AdSize;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/AdSize;->IAB_BANNER:Lcom/google/ads/AdSize;

    .line 106
    new-instance v0, Lcom/google/ads/AdSize;

    const/16 v1, 0x2d8

    const/16 v2, 0x5a

    const-string/jumbo v3, "as"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/AdSize;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/AdSize;->IAB_LEADERBOARD:Lcom/google/ads/AdSize;

    .line 112
    new-instance v0, Lcom/google/ads/AdSize;

    const/16 v1, 0xa0

    const/16 v2, 0x258

    const-string/jumbo v3, "as"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/AdSize;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/AdSize;->IAB_WIDE_SKYSCRAPER:Lcom/google/ads/AdSize;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/ads/AdSize;-><init>(IILjava/lang/String;)V

    .line 145
    invoke-direct {p0}, Lcom/google/ads/AdSize;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/AdSize;->e:Z

    .line 147
    const-string/jumbo v0, "mb"

    iput-object v0, p0, Lcom/google/ads/AdSize;->f:Ljava/lang/String;

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/AdSize;->e:Z

    goto :goto_0
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput p1, p0, Lcom/google/ads/AdSize;->a:I

    .line 162
    iput p2, p0, Lcom/google/ads/AdSize;->b:I

    .line 163
    iput-object p3, p0, Lcom/google/ads/AdSize;->f:Ljava/lang/String;

    .line 164
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/ads/AdSize;->c:Z

    .line 165
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/google/ads/AdSize;->d:Z

    .line 166
    iput-boolean v2, p0, Lcom/google/ads/AdSize;->e:Z

    .line 167
    return-void

    :cond_0
    move v0, v2

    .line 164
    goto :goto_0

    :cond_1
    move v1, v2

    .line 165
    goto :goto_1
.end method

.method private static a(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 370
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 371
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, v1, v0

    float-to-int v0, v0

    return v0
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/google/ads/AdSize;->a:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/google/ads/AdSize;->b:I

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 382
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 383
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, v1, v0

    float-to-int v0, v0

    .line 384
    const/16 v1, 0x190

    if-gt v0, v1, :cond_0

    .line 385
    const/16 v0, 0x20

    .line 389
    :goto_0
    return v0

    .line 386
    :cond_0
    const/16 v1, 0x2d0

    if-gt v0, v1, :cond_1

    .line 387
    const/16 v0, 0x32

    goto :goto_0

    .line 389
    :cond_1
    const/16 v0, 0x5a

    goto :goto_0
.end method

.method public static createAdSize(Lcom/google/ads/AdSize;Landroid/content/Context;)Lcom/google/ads/AdSize;
    .locals 4
    .param p0, "adSize"    # Lcom/google/ads/AdSize;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 181
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/ads/AdSize;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 182
    :cond_0
    invoke-direct {p0}, Lcom/google/ads/AdSize;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    .line 195
    .end local p0    # "adSize":Lcom/google/ads/AdSize;
    :cond_1
    :goto_0
    return-object p0

    .line 185
    .restart local p0    # "adSize":Lcom/google/ads/AdSize;
    :cond_2
    iget-boolean v0, p0, Lcom/google/ads/AdSize;->c:Z

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/google/ads/AdSize;->a(Landroid/content/Context;)I

    move-result v0

    .line 187
    :goto_1
    iget-boolean v1, p0, Lcom/google/ads/AdSize;->d:Z

    if-eqz v1, :cond_4

    invoke-static {p1}, Lcom/google/ads/AdSize;->b(Landroid/content/Context;)I

    move-result v1

    .line 190
    :goto_2
    new-instance v2, Lcom/google/ads/AdSize;

    iget-object v3, p0, Lcom/google/ads/AdSize;->f:Ljava/lang/String;

    invoke-direct {v2, v0, v1, v3}, Lcom/google/ads/AdSize;-><init>(IILjava/lang/String;)V

    .line 191
    iget-boolean v0, p0, Lcom/google/ads/AdSize;->d:Z

    iput-boolean v0, v2, Lcom/google/ads/AdSize;->d:Z

    .line 192
    iget-boolean v0, p0, Lcom/google/ads/AdSize;->c:Z

    iput-boolean v0, v2, Lcom/google/ads/AdSize;->c:Z

    .line 193
    iget-boolean v0, p0, Lcom/google/ads/AdSize;->e:Z

    iput-boolean v0, v2, Lcom/google/ads/AdSize;->e:Z

    move-object p0, v2

    .line 195
    goto :goto_0

    .line 185
    :cond_3
    invoke-virtual {p0}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v0

    goto :goto_1

    .line 187
    :cond_4
    invoke-virtual {p0}, Lcom/google/ads/AdSize;->getHeight()I

    move-result v1

    goto :goto_2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 203
    instance-of v1, p1, Lcom/google/ads/AdSize;

    if-nez v1, :cond_1

    .line 209
    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 207
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lcom/google/ads/AdSize;

    .line 209
    .end local p1    # "other":Ljava/lang/Object;
    iget v1, p0, Lcom/google/ads/AdSize;->a:I

    iget v2, p1, Lcom/google/ads/AdSize;->a:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/ads/AdSize;->b:I

    iget v2, p1, Lcom/google/ads/AdSize;->b:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public varargs findBestSize([Lcom/google/ads/AdSize;)Lcom/google/ads/AdSize;
    .locals 14
    .param p1, "options"    # [Lcom/google/ads/AdSize;

    .prologue
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 339
    const/4 v5, 0x0

    .line 340
    const-wide/16 v2, 0x0

    .line 342
    if-eqz p1, :cond_1

    .line 343
    array-length v7, p1

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v4, p1, v6

    .line 344
    iget v0, v4, Lcom/google/ads/AdSize;->a:I

    iget v1, v4, Lcom/google/ads/AdSize;->b:I

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/AdSize;->isSizeAppropriate(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 345
    iget v0, v4, Lcom/google/ads/AdSize;->a:I

    int-to-double v0, v0

    iget v8, v4, Lcom/google/ads/AdSize;->b:I

    int-to-double v8, v8

    mul-double/2addr v0, v8

    iget v8, p0, Lcom/google/ads/AdSize;->a:I

    int-to-double v8, v8

    iget v10, p0, Lcom/google/ads/AdSize;->b:I

    int-to-double v10, v10

    mul-double/2addr v8, v10

    div-double/2addr v0, v8

    .line 347
    cmpl-double v8, v0, v12

    if-lez v8, :cond_0

    .line 348
    div-double v0, v12, v0

    .line 351
    :cond_0
    cmpl-double v8, v0, v2

    if-lez v8, :cond_2

    move-object v2, v4

    .line 343
    :goto_1
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move-object v5, v2

    move-wide v2, v0

    goto :goto_0

    .line 359
    :cond_1
    return-object v5

    :cond_2
    move-wide v0, v2

    move-object v2, v5

    goto :goto_1
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 236
    iget v0, p0, Lcom/google/ads/AdSize;->b:I

    if-gez v0, :cond_0

    .line 237
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Ad size was not set before getHeight() was called."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_0
    iget v0, p0, Lcom/google/ads/AdSize;->b:I

    return v0
.end method

.method public getHeightInPixels(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 301
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/ads/AdSize;->b:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 225
    iget v0, p0, Lcom/google/ads/AdSize;->a:I

    if-gez v0, :cond_0

    .line 226
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Ad size was not set before getWidth() was called."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_0
    iget v0, p0, Lcom/google/ads/AdSize;->a:I

    return v0
.end method

.method public getWidthInPixels(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 291
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/ads/AdSize;->a:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 217
    iget v0, p0, Lcom/google/ads/AdSize;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lcom/google/ads/AdSize;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public isAutoHeight()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/google/ads/AdSize;->d:Z

    return v0
.end method

.method public isCustomAdSize()Z
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/google/ads/AdSize;->e:Z

    return v0
.end method

.method public isFullWidth()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/google/ads/AdSize;->c:Z

    return v0
.end method

.method public isSizeAppropriate(II)Z
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const-wide/high16 v6, 0x3ff4000000000000L    # 1.25

    const-wide v4, 0x3fe999999999999aL    # 0.8

    .line 317
    int-to-double v0, p1

    iget v2, p0, Lcom/google/ads/AdSize;->a:I

    int-to-double v2, v2

    mul-double/2addr v2, v6

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    int-to-double v0, p1

    iget v2, p0, Lcom/google/ads/AdSize;->a:I

    int-to-double v2, v2

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    int-to-double v0, p2

    iget v2, p0, Lcom/google/ads/AdSize;->b:I

    int-to-double v2, v2

    mul-double/2addr v2, v6

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    int-to-double v0, p2

    iget v2, p0, Lcom/google/ads/AdSize;->b:I

    int-to-double v2, v2

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/ads/AdSize;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/ads/AdSize;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/ads/AdSize;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
