.class public final Lcom/aviary/android/feather/headless/moa/MoaMetadata;
.super Ljava/lang/Object;
.source "MoaMetadata.java"


# instance fields
.field private cellsize:[I

.field private grid:[I

.field private imagesize:[I

.field private inplace:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaMetadata;->imagesize:[I

    .line 17
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaMetadata;->cellsize:[I

    .line 18
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaMetadata;->grid:[I

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/aviary/android/feather/headless/moa/MoaMetadata;->inplace:I

    .line 14
    return-void

    .line 16
    :array_0
    .array-data 4
        0x1
        0x1
    .end array-data

    .line 17
    :array_1
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method


# virtual methods
.method public cellHeight()I
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaMetadata;->cellsize:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public cellWidth()I
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaMetadata;->cellsize:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public cols()I
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaMetadata;->grid:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public encode()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 76
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 77
    .local v1, "root":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 78
    .local v0, "imgsize":Lorg/json/JSONArray;
    iget-object v2, p0, Lcom/aviary/android/feather/headless/moa/MoaMetadata;->imagesize:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 79
    iget-object v2, p0, Lcom/aviary/android/feather/headless/moa/MoaMetadata;->imagesize:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 81
    const-string/jumbo v2, "imageorigsize"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string/jumbo v2, "cellWidth"

    invoke-virtual {p0}, Lcom/aviary/android/feather/headless/moa/MoaMetadata;->cellWidth()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 83
    const-string/jumbo v2, "cellHeight"

    invoke-virtual {p0}, Lcom/aviary/android/feather/headless/moa/MoaMetadata;->cellHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 84
    const-string/jumbo v2, "cols"

    invoke-virtual {p0}, Lcom/aviary/android/feather/headless/moa/MoaMetadata;->cols()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 85
    const-string/jumbo v2, "rows"

    invoke-virtual {p0}, Lcom/aviary/android/feather/headless/moa/MoaMetadata;->rows()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 86
    const-string/jumbo v2, "inplace"

    iget v3, p0, Lcom/aviary/android/feather/headless/moa/MoaMetadata;->inplace:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 87
    return-object v1
.end method

.method public rows()I
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaMetadata;->grid:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public setImageSize(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 28
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaMetadata;->imagesize:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 29
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaMetadata;->imagesize:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 30
    return-void
.end method

.method public setTransformInputBitmap(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 37
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/aviary/android/feather/headless/moa/MoaMetadata;->inplace:I

    .line 38
    return-void

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
