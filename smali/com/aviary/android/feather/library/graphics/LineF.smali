.class public Lcom/aviary/android/feather/library/graphics/LineF;
.super Ljava/lang/Object;
.source "LineF.java"

# interfaces
.implements Lcom/aviary/android/feather/library/graphics/IGeom;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/aviary/android/feather/library/graphics/LineF;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final end:Landroid/graphics/PointF;

.field private final start:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 204
    new-instance v0, Lcom/aviary/android/feather/library/graphics/LineF$1;

    invoke-direct {v0}, Lcom/aviary/android/feather/library/graphics/LineF$1;-><init>()V

    sput-object v0, Lcom/aviary/android/feather/library/graphics/LineF;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 215
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/aviary/android/feather/library/graphics/LineF;-><init>(FFFF)V

    .line 17
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 1
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/aviary/android/feather/library/graphics/LineF;->start:Landroid/graphics/PointF;

    .line 26
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p3, p4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/aviary/android/feather/library/graphics/LineF;->end:Landroid/graphics/PointF;

    .line 27
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 197
    if-ne p0, p1, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v1

    .line 198
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 200
    check-cast v0, Lcom/aviary/android/feather/library/graphics/LineF;

    .line 201
    .local v0, "r":Lcom/aviary/android/feather/library/graphics/LineF;
    iget-object v3, p0, Lcom/aviary/android/feather/library/graphics/LineF;->start:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, v0, Lcom/aviary/android/feather/library/graphics/LineF;->start:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/aviary/android/feather/library/graphics/LineF;->start:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, v0, Lcom/aviary/android/feather/library/graphics/LineF;->start:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/aviary/android/feather/library/graphics/LineF;->end:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, v0, Lcom/aviary/android/feather/library/graphics/LineF;->end:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/aviary/android/feather/library/graphics/LineF;->end:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, v0, Lcom/aviary/android/feather/library/graphics/LineF;->end:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getEndX()F
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/LineF;->end:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    return v0
.end method

.method public getEndY()F
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/LineF;->end:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    return v0
.end method

.method public getStartX()F
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/LineF;->start:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    return v0
.end method

.method public getStartY()F
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/LineF;->start:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 187
    const/16 v0, 0x11

    .line 188
    .local v0, "hash":I
    iget-object v1, p0, Lcom/aviary/android/feather/library/graphics/LineF;->start:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x275

    .line 189
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/aviary/android/feather/library/graphics/LineF;->start:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 190
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/aviary/android/feather/library/graphics/LineF;->end:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 191
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/aviary/android/feather/library/graphics/LineF;->end:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 192
    return v0
.end method

.method public intersect(FFFF)Landroid/graphics/PointF;
    .locals 15
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .prologue
    .line 109
    sub-float v11, p4, p2

    iget-object v12, p0, Lcom/aviary/android/feather/library/graphics/LineF;->end:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->x:F

    iget-object v13, p0, Lcom/aviary/android/feather/library/graphics/LineF;->start:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->x:F

    sub-float/2addr v12, v13

    mul-float/2addr v11, v12

    sub-float v12, p3, p1

    iget-object v13, p0, Lcom/aviary/android/feather/library/graphics/LineF;->end:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->y:F

    iget-object v14, p0, Lcom/aviary/android/feather/library/graphics/LineF;->start:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->y:F

    sub-float/2addr v13, v14

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    float-to-double v0, v11

    .line 110
    .local v0, "d":D
    sub-float v11, p3, p1

    iget-object v12, p0, Lcom/aviary/android/feather/library/graphics/LineF;->start:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    sub-float v12, v12, p2

    mul-float/2addr v11, v12

    sub-float v12, p4, p2

    iget-object v13, p0, Lcom/aviary/android/feather/library/graphics/LineF;->start:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->x:F

    sub-float v13, v13, p1

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    float-to-double v2, v11

    .line 111
    .local v2, "n_a":D
    iget-object v11, p0, Lcom/aviary/android/feather/library/graphics/LineF;->end:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    iget-object v12, p0, Lcom/aviary/android/feather/library/graphics/LineF;->start:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->x:F

    sub-float/2addr v11, v12

    iget-object v12, p0, Lcom/aviary/android/feather/library/graphics/LineF;->start:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    sub-float v12, v12, p2

    mul-float/2addr v11, v12

    iget-object v12, p0, Lcom/aviary/android/feather/library/graphics/LineF;->end:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    iget-object v13, p0, Lcom/aviary/android/feather/library/graphics/LineF;->start:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->y:F

    sub-float/2addr v12, v13

    iget-object v13, p0, Lcom/aviary/android/feather/library/graphics/LineF;->start:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->x:F

    sub-float v13, v13, p1

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    float-to-double v4, v11

    .line 113
    .local v4, "n_b":D
    const-wide/16 v11, 0x0

    cmpl-double v11, v0, v11

    if-nez v11, :cond_0

    const/4 v6, 0x0

    .line 124
    :goto_0
    return-object v6

    .line 115
    :cond_0
    div-double v7, v2, v0

    .line 116
    .local v7, "ua":D
    div-double v9, v4, v0

    .line 118
    .local v9, "ub":D
    const-wide/16 v11, 0x0

    cmpl-double v11, v7, v11

    if-ltz v11, :cond_1

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    cmpg-double v11, v7, v11

    if-gtz v11, :cond_1

    const-wide/16 v11, 0x0

    cmpl-double v11, v9, v11

    if-ltz v11, :cond_1

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    cmpg-double v11, v9, v11

    if-gtz v11, :cond_1

    .line 119
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6}, Landroid/graphics/PointF;-><init>()V

    .line 120
    .local v6, "point":Landroid/graphics/PointF;
    iget-object v11, p0, Lcom/aviary/android/feather/library/graphics/LineF;->start:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    float-to-double v11, v11

    iget-object v13, p0, Lcom/aviary/android/feather/library/graphics/LineF;->end:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->x:F

    iget-object v14, p0, Lcom/aviary/android/feather/library/graphics/LineF;->start:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->x:F

    sub-float/2addr v13, v14

    float-to-double v13, v13

    mul-double/2addr v13, v7

    add-double/2addr v11, v13

    double-to-float v11, v11

    iput v11, v6, Landroid/graphics/PointF;->x:F

    .line 121
    iget-object v11, p0, Lcom/aviary/android/feather/library/graphics/LineF;->start:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->y:F

    float-to-double v11, v11

    iget-object v13, p0, Lcom/aviary/android/feather/library/graphics/LineF;->end:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->y:F

    iget-object v14, p0, Lcom/aviary/android/feather/library/graphics/LineF;->start:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->y:F

    sub-float/2addr v13, v14

    float-to-double v13, v13

    mul-double/2addr v13, v7

    add-double/2addr v11, v13

    double-to-float v11, v11

    iput v11, v6, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 124
    .end local v6    # "point":Landroid/graphics/PointF;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public intersect(Landroid/graphics/RectF;)[Landroid/graphics/PointF;
    .locals 11
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, "index":I
    const/4 v2, 0x0

    .line 131
    .local v2, "pt":Landroid/graphics/PointF;
    new-array v3, v8, [Landroid/graphics/PointF;

    .line 133
    .local v3, "result":[Landroid/graphics/PointF;
    iget v4, p1, Landroid/graphics/RectF;->left:F

    iget v5, p1, Landroid/graphics/RectF;->top:F

    iget v6, p1, Landroid/graphics/RectF;->right:F

    iget v7, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/aviary/android/feather/library/graphics/LineF;->intersect(FFFF)Landroid/graphics/PointF;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 134
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    aput-object v2, v3, v0

    move v0, v1

    .line 137
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_0
    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->top:F

    iget v6, p1, Landroid/graphics/RectF;->right:F

    iget v7, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/aviary/android/feather/library/graphics/LineF;->intersect(FFFF)Landroid/graphics/PointF;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 138
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    aput-object v2, v3, v0

    .line 141
    :goto_0
    if-ge v1, v8, :cond_1

    iget v4, p1, Landroid/graphics/RectF;->left:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    iget v6, p1, Landroid/graphics/RectF;->right:F

    iget v7, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/aviary/android/feather/library/graphics/LineF;->intersect(FFFF)Landroid/graphics/PointF;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 142
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    aput-object v2, v3, v1

    move v1, v0

    .line 145
    .end local v0    # "index":I
    .restart local v1    # "index":I
    :cond_1
    if-ge v1, v8, :cond_4

    iget v4, p1, Landroid/graphics/RectF;->left:F

    iget v5, p1, Landroid/graphics/RectF;->top:F

    iget v6, p1, Landroid/graphics/RectF;->left:F

    iget v7, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/aviary/android/feather/library/graphics/LineF;->intersect(FFFF)Landroid/graphics/PointF;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 146
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    aput-object v2, v3, v1

    .line 149
    :goto_1
    if-ne v0, v8, :cond_2

    .line 151
    .end local v3    # "result":[Landroid/graphics/PointF;
    :goto_2
    return-object v3

    .line 150
    .restart local v3    # "result":[Landroid/graphics/PointF;
    :cond_2
    if-ne v0, v10, :cond_3

    new-array v4, v10, [Landroid/graphics/PointF;

    aget-object v5, v3, v9

    aput-object v5, v4, v9

    move-object v3, v4

    goto :goto_2

    .line 151
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .end local v0    # "index":I
    .restart local v1    # "index":I
    :cond_4
    move v0, v1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    goto :goto_1

    :cond_5
    move v1, v0

    .end local v0    # "index":I
    .restart local v1    # "index":I
    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/LineF;->start:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 180
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/LineF;->start:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 181
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/LineF;->end:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 182
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/LineF;->end:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 183
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/LineF;->start:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 57
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/LineF;->end:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 58
    return-void
.end method

.method public set(FFFF)V
    .locals 1
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .prologue
    .line 35
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/LineF;->start:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 36
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/LineF;->end:Landroid/graphics/PointF;

    invoke-virtual {v0, p3, p4}, Landroid/graphics/PointF;->set(FF)V

    .line 37
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "LineF("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aviary/android/feather/library/graphics/LineF;->start:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aviary/android/feather/library/graphics/LineF;->start:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aviary/android/feather/library/graphics/LineF;->end:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aviary/android/feather/library/graphics/LineF;->end:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/graphics/LineF;->getStartX()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 172
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/graphics/LineF;->getStartY()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 173
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/graphics/LineF;->getEndX()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 174
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/graphics/LineF;->getEndY()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 175
    return-void
.end method
