.class public Lcom/aviary/android/feather/library/utils/ScreenUtils;
.super Ljava/lang/Object;
.source "ScreenUtils.java"


# direct methods
.method public static getScreenInches(Landroid/content/Context;)D
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 24
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v5, v5

    iget v7, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-double v7, v7

    div-double v3, v5, v7

    .line 25
    .local v3, "w1":D
    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v5, v5

    iget v7, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-double v7, v7

    div-double v0, v5, v7

    .line 26
    .local v0, "h1":D
    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    return-wide v5
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-static {p0}, Lcom/aviary/android/feather/library/utils/ScreenUtils;->getScreenInches(Landroid/content/Context;)D

    move-result-wide v0

    .line 37
    .local v0, "inches":D
    sget-boolean v2, Lcom/aviary/android/feather/library/log/LoggerFactory;->LOG_ENABLED:Z

    if-eqz v2, :cond_0

    .line 38
    const-string/jumbo v2, "screen-utils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "screen size: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_0
    const-wide/high16 v2, 0x401a000000000000L    # 6.5

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
