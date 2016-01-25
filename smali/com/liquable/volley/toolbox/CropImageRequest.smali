.class public Lcom/liquable/volley/toolbox/CropImageRequest;
.super Lcom/android/volley/Request;
.source "CropImageRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/Request",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final IMAGE_BACKOFF_MULT:F = 2.0f

.field private static final IMAGE_MAX_RETRIES:I = 0x2

.field private static final IMAGE_TIMEOUT_MS:I = 0x3e8

.field private static final sDecodeLock:Ljava/lang/Object;


# instance fields
.field private final mDecodeConfig:Landroid/graphics/Bitmap$Config;

.field private final mListener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxHeight:I

.field private final mMaxWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/liquable/volley/toolbox/CropImageRequest;->sDecodeLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "maxWidth"    # I
    .param p4, "maxHeight"    # I
    .param p5, "decodeConfig"    # Landroid/graphics/Bitmap$Config;
    .param p6, "errorListener"    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap$Config;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 105
    .local p2, "listener":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Landroid/graphics/Bitmap;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p6}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 106
    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    const/16 v1, 0x3e8

    const/4 v2, 0x2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/liquable/volley/toolbox/CropImageRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 107
    iput-object p2, p0, Lcom/liquable/volley/toolbox/CropImageRequest;->mListener:Lcom/android/volley/Response$Listener;

    .line 108
    iput-object p5, p0, Lcom/liquable/volley/toolbox/CropImageRequest;->mDecodeConfig:Landroid/graphics/Bitmap$Config;

    .line 109
    iput p3, p0, Lcom/liquable/volley/toolbox/CropImageRequest;->mMaxWidth:I

    .line 110
    iput p4, p0, Lcom/liquable/volley/toolbox/CropImageRequest;->mMaxHeight:I

    .line 111
    return-void
.end method

.method private doParse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 27
    .param p1, "response"    # Lcom/android/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/volley/NetworkResponse;->data:[B

    .line 123
    .local v6, "data":[B
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 124
    .local v7, "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x0

    .line 125
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/volley/toolbox/CropImageRequest;->mMaxWidth:I

    move/from16 v21, v0

    if-nez v21, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/volley/toolbox/CropImageRequest;->mMaxHeight:I

    move/from16 v21, v0

    if-nez v21, :cond_1

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/volley/toolbox/CropImageRequest;->mDecodeConfig:Landroid/graphics/Bitmap$Config;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-object v0, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 127
    const/16 v21, 0x0

    array-length v0, v6

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v6, v0, v1, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 168
    :cond_0
    :goto_0
    if-nez v5, :cond_2

    .line 169
    new-instance v21, Lcom/android/volley/ParseError;

    invoke-direct/range {v21 .. v21}, Lcom/android/volley/ParseError;-><init>()V

    invoke-static/range {v21 .. v21}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v21

    .line 171
    :goto_1
    return-object v21

    .line 130
    :cond_1
    const/16 v21, 0x1

    move/from16 v0, v21

    iput-boolean v0, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 131
    const/16 v21, 0x0

    array-length v0, v6

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v6, v0, v1, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 132
    iget v4, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 133
    .local v4, "actualWidth":I
    iget v3, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 135
    .local v3, "actualHeight":I
    int-to-double v0, v4

    move-wide/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/volley/toolbox/CropImageRequest;->mMaxWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    div-double v19, v21, v23

    .line 136
    .local v19, "widthRatio":D
    int-to-double v0, v3

    move-wide/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/volley/toolbox/CropImageRequest;->mMaxHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    div-double v12, v21, v23

    .line 137
    .local v12, "heightRatio":D
    move-wide/from16 v0, v19

    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v14

    .line 138
    .local v14, "ratio":D
    int-to-double v0, v4

    move-wide/from16 v21, v0

    div-double v21, v21, v14

    move-wide/from16 v0, v21

    double-to-int v9, v0

    .line 139
    .local v9, "desiredWidth":I
    int-to-double v0, v3

    move-wide/from16 v21, v0

    div-double v21, v21, v14

    move-wide/from16 v0, v21

    double-to-int v8, v0

    .line 142
    .local v8, "desiredHeight":I
    const/16 v21, 0x0

    move/from16 v0, v21

    iput-boolean v0, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 145
    invoke-static {v4, v3, v9, v8}, Lcom/liquable/volley/toolbox/CropImageRequest;->findBestSampleSize(IIII)I

    move-result v21

    move/from16 v0, v21

    iput v0, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 150
    const/16 v21, 0x0

    array-length v0, v6

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v6, v0, v1, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 152
    .local v18, "tempBitmap":Landroid/graphics/Bitmap;
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/volley/toolbox/CropImageRequest;->mMaxWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    div-double v21, v21, v23

    .line 153
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/volley/toolbox/CropImageRequest;->mMaxHeight:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    div-double v23, v23, v25

    .line 152
    invoke-static/range {v21 .. v24}, Ljava/lang/Math;->min(DD)D

    move-result-wide v16

    .line 155
    .local v16, "realRatio":D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/volley/toolbox/CropImageRequest;->mMaxWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    mul-double v21, v21, v16

    move-wide/from16 v0, v21

    double-to-int v11, v0

    .line 156
    .local v11, "finalWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/volley/toolbox/CropImageRequest;->mMaxHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    mul-double v21, v21, v16

    move-wide/from16 v0, v21

    double-to-int v10, v0

    .line 159
    .local v10, "finalHeight":I
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    sub-int v21, v21, v11

    div-int/lit8 v21, v21, 0x2

    .line 160
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    sub-int v22, v22, v10

    div-int/lit8 v22, v22, 0x2

    .line 158
    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2, v11, v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 163
    move-object/from16 v0, v18

    if-eq v0, v5, :cond_0

    .line 164
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    .line 171
    .end local v3    # "actualHeight":I
    .end local v4    # "actualWidth":I
    .end local v8    # "desiredHeight":I
    .end local v9    # "desiredWidth":I
    .end local v10    # "finalHeight":I
    .end local v11    # "finalWidth":I
    .end local v12    # "heightRatio":D
    .end local v14    # "ratio":D
    .end local v16    # "realRatio":D
    .end local v18    # "tempBitmap":Landroid/graphics/Bitmap;
    .end local v19    # "widthRatio":D
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v5, v0}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v21

    goto/16 :goto_1
.end method

.method static findBestSampleSize(IIII)I
    .locals 8
    .param p0, "actualWidth"    # I
    .param p1, "actualHeight"    # I
    .param p2, "desiredWidth"    # I
    .param p3, "desiredHeight"    # I

    .prologue
    .line 54
    int-to-double v4, p0

    int-to-double v6, p2

    div-double v2, v4, v6

    .line 55
    .local v2, "wr":D
    int-to-double v4, p1

    int-to-double v6, p3

    div-double v0, v4, v6

    .line 56
    .local v0, "hr":D
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    double-to-int v4, v4

    return v4
.end method


# virtual methods
.method protected deliverResponse(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "response"    # Landroid/graphics/Bitmap;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/liquable/volley/toolbox/CropImageRequest;->mListener:Lcom/android/volley/Response$Listener;

    invoke-interface {v0, p1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/liquable/volley/toolbox/CropImageRequest;->deliverResponse(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public getPriority()Lcom/android/volley/Request$Priority;
    .locals 1

    .prologue
    .line 177
    sget-object v0, Lcom/android/volley/Request$Priority;->LOW:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 6
    .param p1, "response"    # Lcom/android/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    sget-object v2, Lcom/liquable/volley/toolbox/CropImageRequest;->sDecodeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 185
    :try_start_0
    invoke-direct {p0, p1}, Lcom/liquable/volley/toolbox/CropImageRequest;->doParse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    monitor-exit v2

    .line 188
    :goto_0
    return-object v1

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v1, "Caught OOM for %d byte image, url=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/android/volley/NetworkResponse;->data:[B

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/liquable/volley/toolbox/CropImageRequest;->getUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    new-instance v1, Lcom/android/volley/ParseError;

    invoke-direct {v1, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v1

    monitor-exit v2

    goto :goto_0

    .line 190
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
