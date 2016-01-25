.class public Lit/sephiroth/android/library/imagezoom/easing/Quad;
.super Ljava/lang/Object;
.source "Quad.java"

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
    .locals 2
    .param p1, "t"    # D
    .param p3, "b"    # D
    .param p5, "c"    # D
    .param p7, "d"    # D

    .prologue
    .line 12
    div-double/2addr p1, p7

    mul-double v0, p5, p1

    mul-double/2addr v0, p1

    add-double/2addr v0, p3

    return-wide v0
.end method

.method public easeInOut(DDDD)D
    .locals 6
    .param p1, "t"    # D
    .param p3, "b"    # D
    .param p5, "c"    # D
    .param p7, "d"    # D

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 17
    div-double v0, p7, v2

    div-double/2addr p1, v0

    cmpg-double v0, p1, v4

    if-gez v0, :cond_0

    div-double v0, p5, v2

    mul-double/2addr v0, p1

    mul-double/2addr v0, p1

    add-double/2addr v0, p3

    .line 18
    :goto_0
    return-wide v0

    :cond_0
    neg-double v0, p5

    div-double/2addr v0, v2

    sub-double/2addr p1, v4

    sub-double v2, p1, v2

    mul-double/2addr v2, p1

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    add-double/2addr v0, p3

    goto :goto_0
.end method

.method public easeOut(DDDD)D
    .locals 4
    .param p1, "t"    # D
    .param p3, "b"    # D
    .param p5, "c"    # D
    .param p7, "d"    # D

    .prologue
    .line 7
    neg-double v0, p5

    div-double/2addr p1, p7

    mul-double/2addr v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    sub-double v2, p1, v2

    mul-double/2addr v0, v2

    add-double/2addr v0, p3

    return-wide v0
.end method
