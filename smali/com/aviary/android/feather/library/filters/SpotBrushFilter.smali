.class public Lcom/aviary/android/feather/library/filters/SpotBrushFilter;
.super Lcom/aviary/android/feather/headless/filters/NativeFilter;
.source "SpotBrushFilter.java"


# instance fields
.field private final OPTION_CENTER:Ljava/lang/String;

.field private final OPTION_POINTS:Ljava/lang/String;

.field private final OPTION_RADIUS:Ljava/lang/String;

.field private center:Lcom/aviary/android/feather/headless/moa/MoaPointParameter;

.field private mFlattenPath:Lcom/aviary/android/feather/library/graphics/FlattenPath;

.field private mRadius:F

.field private mX:F

.field private mY:F

.field private pointlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/aviary/android/feather/headless/moa/MoaPointParameter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v4

    invoke-direct {p0, v0}, Lcom/aviary/android/feather/headless/filters/NativeFilter;-><init>([Ljava/lang/String;)V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/library/filters/SpotBrushFilter;->pointlist:Ljava/util/ArrayList;

    .line 23
    iput v3, p0, Lcom/aviary/android/feather/library/filters/SpotBrushFilter;->mX:F

    .line 24
    iput v3, p0, Lcom/aviary/android/feather/library/filters/SpotBrushFilter;->mY:F

    .line 27
    const-string/jumbo v0, "center"

    iput-object v0, p0, Lcom/aviary/android/feather/library/filters/SpotBrushFilter;->OPTION_CENTER:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, "radius"

    iput-object v0, p0, Lcom/aviary/android/feather/library/filters/SpotBrushFilter;->OPTION_RADIUS:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "pointlist"

    iput-object v0, p0, Lcom/aviary/android/feather/library/filters/SpotBrushFilter;->OPTION_POINTS:Ljava/lang/String;

    .line 33
    new-instance v0, Lcom/aviary/android/feather/library/graphics/FlattenPath;

    const-wide v1, 0x3fb999999999999aL    # 0.1

    invoke-direct {v0, v1, v2}, Lcom/aviary/android/feather/library/graphics/FlattenPath;-><init>(D)V

    iput-object v0, p0, Lcom/aviary/android/feather/library/filters/SpotBrushFilter;->mFlattenPath:Lcom/aviary/android/feather/library/graphics/FlattenPath;

    .line 34
    new-instance v0, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;

    invoke-direct {v0, v3, v3}, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;-><init>(FF)V

    iput-object v0, p0, Lcom/aviary/android/feather/library/filters/SpotBrushFilter;->center:Lcom/aviary/android/feather/headless/moa/MoaPointParameter;

    .line 35
    iget-object v0, p0, Lcom/aviary/android/feather/library/filters/SpotBrushFilter;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    invoke-virtual {v0, v4}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->get(I)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v0

    const-string/jumbo v1, "center"

    iget-object v2, p0, Lcom/aviary/android/feather/library/filters/SpotBrushFilter;->center:Lcom/aviary/android/feather/headless/moa/MoaPointParameter;

    invoke-virtual {v0, v1, v2}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;Lcom/aviary/android/feather/headless/moa/MoaParameter;)V

    .line 36
    iget-object v0, p0, Lcom/aviary/android/feather/library/filters/SpotBrushFilter;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    invoke-virtual {v0, v4}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->get(I)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v0

    const-string/jumbo v1, "pointlist"

    iget-object v2, p0, Lcom/aviary/android/feather/library/filters/SpotBrushFilter;->pointlist:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;Ljava/util/Collection;)V

    .line 37
    return-void
.end method


# virtual methods
.method public addPoint(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 87
    iget-object v0, p0, Lcom/aviary/android/feather/library/filters/SpotBrushFilter;->pointlist:Ljava/util/ArrayList;

    new-instance v1, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;

    invoke-direct {v1, p1, p2}, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;-><init>(FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method

.method public draw(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 98
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/library/filters/SpotBrushFilter;->executeInPlace(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e1":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 99
    .end local v0    # "e1":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public getFlattenPath()Lcom/aviary/android/feather/library/graphics/FlattenPath;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/aviary/android/feather/library/filters/SpotBrushFilter;->mFlattenPath:Lcom/aviary/android/feather/library/graphics/FlattenPath;

    return-object v0
.end method

.method public getRealRadius()F
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/aviary/android/feather/library/filters/SpotBrushFilter;->mRadius:F

    return v0
.end method

.method public lineTo([F)V
    .locals 5
    .param p1, "values"    # [F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 51
    iget-object v0, p0, Lcom/aviary/android/feather/library/filters/SpotBrushFilter;->mFlattenPath:Lcom/aviary/android/feather/library/graphics/FlattenPath;

    aget v1, p1, v3

    aget v2, p1, v4

    invoke-virtual {v0, v1, v2}, Lcom/aviary/android/feather/library/graphics/FlattenPath;->lineTo(FF)V

    .line 52
    aget v0, p1, v3

    iput v0, p0, Lcom/aviary/android/feather/library/filters/SpotBrushFilter;->mX:F

    .line 53
    aget v0, p1, v4

    iput v0, p0, Lcom/aviary/android/feather/library/filters/SpotBrushFilter;->mY:F

    .line 54
    return-void
.end method

.method public moveTo([F)V
    .locals 5
    .param p1, "values"    # [F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    iget-object v0, p0, Lcom/aviary/android/feather/library/filters/SpotBrushFilter;->mFlattenPath:Lcom/aviary/android/feather/library/graphics/FlattenPath;

    aget v1, p1, v3

    aget v2, p1, v4

    invoke-virtual {v0, v1, v2}, Lcom/aviary/android/feather/library/graphics/FlattenPath;->moveTo(FF)V

    .line 46
    aget v0, p1, v3

    iput v0, p0, Lcom/aviary/android/feather/library/filters/SpotBrushFilter;->mX:F

    .line 47
    aget v0, p1, v4

    iput v0, p0, Lcom/aviary/android/feather/library/filters/SpotBrushFilter;->mY:F

    .line 48
    return-void
.end method

.method public quadTo([F)V
    .locals 9
    .param p1, "values"    # [F

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    .line 57
    iget-object v0, p0, Lcom/aviary/android/feather/library/filters/SpotBrushFilter;->mFlattenPath:Lcom/aviary/android/feather/library/graphics/FlattenPath;

    iget v1, p0, Lcom/aviary/android/feather/library/filters/SpotBrushFilter;->mX:F

    iget v2, p0, Lcom/aviary/android/feather/library/filters/SpotBrushFilter;->mY:F

    aget v3, p1, v7

    iget v4, p0, Lcom/aviary/android/feather/library/filters/SpotBrushFilter;->mX:F

    add-float/2addr v3, v4

    div-float/2addr v3, v6

    aget v4, p1, v8

    iget v5, p0, Lcom/aviary/android/feather/library/filters/SpotBrushFilter;->mY:F

    add-float/2addr v4, v5

    div-float/2addr v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/aviary/android/feather/library/graphics/FlattenPath;->quadTo(FFFF)V

    .line 58
    aget v0, p1, v7

    iput v0, p0, Lcom/aviary/android/feather/library/filters/SpotBrushFilter;->mX:F

    .line 59
    aget v0, p1, v8

    iput v0, p0, Lcom/aviary/android/feather/library/filters/SpotBrushFilter;->mY:F

    .line 60
    return-void
.end method

.method public setRadius(FI)V
    .locals 3
    .param p1, "value"    # F
    .param p2, "bitmapWidth"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aviary/android/feather/library/filters/SpotBrushFilter;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->get(I)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v0

    const-string/jumbo v1, "radius"

    int-to-float v2, p2

    div-float v2, p1, v2

    invoke-virtual {v0, v1, v2}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;F)V

    .line 68
    iput p1, p0, Lcom/aviary/android/feather/library/filters/SpotBrushFilter;->mRadius:F

    .line 69
    return-void
.end method
