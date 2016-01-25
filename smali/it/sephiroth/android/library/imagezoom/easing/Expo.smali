.class public Lit/sephiroth/android/library/imagezoom/easing/Expo;
.super Ljava/lang/Object;
.source "Expo.java"

# interfaces
.implements Lit/sephiroth/android/library/imagezoom/easing/Easing;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public easeIn(DDDD)D
    .locals 8
    .param p1, "time"    # D
    .param p3, "start"    # D
    .param p5, "end"    # D
    .param p7, "duration"    # D

    .prologue
    .line 12
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    .end local p3    # "start":D
    :goto_0
    return-wide p3

    .restart local p3    # "start":D
    :cond_0
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    div-double v4, p1, p7

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, p5

    add-double/2addr p3, v0

    goto :goto_0
.end method

.method public easeInOut(DDDD)D
    .locals 8
    .param p1, "time"    # D
    .param p3, "start"    # D
    .param p5, "end"    # D
    .param p7, "duration"    # D

    .prologue
    .line 17
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    .line 20
    .end local p3    # "start":D
    :goto_0
    return-wide p3

    .line 18
    .restart local p3    # "start":D
    :cond_0
    cmpl-double v0, p1, p7

    if-nez v0, :cond_1

    add-double/2addr p3, p5

    goto :goto_0

    .line 19
    :cond_1
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double v0, p7, v0

    div-double/2addr p1, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double v0, p5, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v6, p1, v6

    mul-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    add-double/2addr p3, v0

    goto :goto_0

    .line 20
    :cond_2
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double v0, p5, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/high16 v4, -0x3fdc000000000000L    # -10.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p1, v6

    mul-double/2addr v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    neg-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    add-double/2addr v2, v4

    mul-double/2addr v0, v2

    add-double/2addr p3, v0

    goto :goto_0
.end method

.method public easeOut(DDDD)D
    .locals 4
    .param p1, "time"    # D
    .param p3, "start"    # D
    .param p5, "end"    # D
    .param p7, "duration"    # D

    .prologue
    .line 7
    cmpl-double v0, p1, p7

    if-nez v0, :cond_0

    add-double v0, p3, p5

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide/high16 v2, -0x3fdc000000000000L    # -10.0

    mul-double/2addr v2, p1

    div-double/2addr v2, p7

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    neg-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    mul-double/2addr v0, p5

    add-double/2addr v0, p3

    goto :goto_0
.end method
