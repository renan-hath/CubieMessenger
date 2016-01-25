.class Lcom/aviary/android/feather/library/filters/SaturationFilter;
.super Lcom/aviary/android/feather/headless/filters/NativeRangeFilter;
.source "SaturationFilter.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 17
    const-string/jumbo v0, "saturation"

    const-string/jumbo v1, "value"

    invoke-direct {p0, v0, v1}, Lcom/aviary/android/feather/headless/filters/NativeRangeFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method public executeInPlace(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "src"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "NotImplemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setValue(Ljava/lang/Float;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Float;

    .prologue
    const/high16 v1, 0x42c80000    # 100.0f

    .line 22
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr v0, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 23
    invoke-super {p0, p1}, Lcom/aviary/android/feather/headless/filters/NativeRangeFilter;->setValue(Ljava/lang/Float;)V

    .line 24
    return-void
.end method
