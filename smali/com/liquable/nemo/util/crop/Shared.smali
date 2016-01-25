.class public final Lcom/liquable/nemo/util/crop/Shared;
.super Ljava/lang/Object;
.source "Shared.java"


# static fields
.field public static final INFINITY:I = 0x7fffffff

.field public static final INVALID:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static argb(FFFF)I
    .locals 4
    .param p0, "a"    # F
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F

    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    .line 22
    mul-float v0, p0, v3

    float-to-int v0, v0

    mul-float v1, p1, v3

    float-to-int v1, v1

    mul-float v2, p2, v3

    float-to-int v2, v2

    mul-float/2addr v3, p3

    float-to-int v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public static clamp(III)I
    .locals 0
    .param p0, "value"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 26
    if-ge p0, p1, :cond_1

    .line 27
    move p0, p1

    .line 31
    :cond_0
    :goto_0
    return p0

    .line 28
    :cond_1
    if-le p0, p2, :cond_0

    .line 29
    move p0, p2

    goto :goto_0
.end method

.method public static clamp(JJJ)J
    .locals 1
    .param p0, "value"    # J
    .param p2, "min"    # J
    .param p4, "max"    # J

    .prologue
    .line 35
    cmp-long v0, p0, p2

    if-gez v0, :cond_1

    .line 36
    move-wide p0, p2

    .line 40
    :cond_0
    :goto_0
    return-wide p0

    .line 37
    :cond_1
    cmp-long v0, p0, p4

    if-lez v0, :cond_0

    .line 38
    move-wide p0, p4

    goto :goto_0
.end method

.method public static degreesToExifOrientation(F)I
    .locals 2
    .param p0, "normalizedAngle"    # F

    .prologue
    const/4 v0, 0x1

    .line 44
    const/4 v1, 0x0

    cmpl-float v1, p0, v1

    if-nez v1, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v0

    .line 46
    :cond_1
    const/high16 v1, 0x42b40000    # 90.0f

    cmpl-float v1, p0, v1

    if-nez v1, :cond_2

    .line 47
    const/4 v0, 0x6

    goto :goto_0

    .line 48
    :cond_2
    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, p0, v1

    if-nez v1, :cond_3

    .line 49
    const/4 v0, 0x3

    goto :goto_0

    .line 50
    :cond_3
    const/high16 v1, 0x43870000    # 270.0f

    cmpl-float v1, p0, v1

    if-nez v1, :cond_0

    .line 51
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public static exifOrientationToDegrees(I)F
    .locals 1
    .param p0, "exifOrientation"    # I

    .prologue
    .line 57
    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    .line 58
    const/high16 v0, 0x42b40000    # 90.0f

    .line 64
    :goto_0
    return v0

    .line 59
    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    .line 60
    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_0

    .line 61
    :cond_1
    const/16 v0, 0x8

    if-ne p0, v0, :cond_2

    .line 62
    const/high16 v0, 0x43870000    # 270.0f

    goto :goto_0

    .line 64
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPowerOf2(I)Z
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 68
    neg-int v0, p0

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static midPointIterator(I)I
    .locals 3
    .param p0, "i"    # I

    .prologue
    .line 77
    if-eqz p0, :cond_1

    .line 78
    add-int/lit8 v2, p0, -0x1

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v1, v2, 0x1

    .line 79
    .local v1, "tick":I
    add-int/lit8 v2, p0, -0x1

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 80
    .local v0, "pass":I
    :goto_0
    mul-int v2, v1, v0

    .line 82
    .end local v0    # "pass":I
    .end local v1    # "tick":I
    :goto_1
    return v2

    .line 79
    .restart local v1    # "tick":I
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 82
    .end local v1    # "tick":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static nextPowerOf2(I)I
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 86
    add-int/lit8 p0, p0, -0x1

    .line 87
    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 88
    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 89
    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 90
    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 91
    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 92
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method public static normalizePositive(F)F
    .locals 5
    .param p0, "angleToRotate"    # F

    .prologue
    const/4 v2, 0x0

    const/high16 v4, 0x43b40000    # 360.0f

    .line 98
    cmpl-float v3, p0, v2

    if-nez v3, :cond_1

    move p0, v2

    .line 112
    .local v0, "n":I
    .local v1, "nf":F
    :cond_0
    :goto_0
    return p0

    .line 101
    .end local v0    # "n":I
    .end local v1    # "nf":F
    :cond_1
    div-float v1, p0, v4

    .line 102
    .restart local v1    # "nf":F
    const/4 v0, 0x0

    .line 103
    .restart local v0    # "n":I
    cmpg-float v2, p0, v2

    if-gez v2, :cond_3

    .line 104
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, v1, v2

    float-to-int v0, v2

    .line 108
    :cond_2
    :goto_1
    int-to-float v2, v0

    mul-float/2addr v2, v4

    sub-float/2addr p0, v2

    .line 109
    cmpl-float v2, p0, v4

    if-nez v2, :cond_0

    .line 110
    const/4 p0, 0x0

    goto :goto_0

    .line 105
    :cond_3
    cmpl-float v2, p0, v4

    if-lez v2, :cond_2

    .line 106
    float-to-int v0, v1

    goto :goto_1
.end method

.method public static prevPowerOf2(I)I
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 116
    invoke-static {p0}, Lcom/liquable/nemo/util/crop/Shared;->isPowerOf2(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-static {p0}, Lcom/liquable/nemo/util/crop/Shared;->nextPowerOf2(I)I

    move-result v0

    .line 119
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/liquable/nemo/util/crop/Shared;->nextPowerOf2(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static scaleToFit(FFFFZ)F
    .locals 3
    .param p0, "srcWidth"    # F
    .param p1, "srcHeight"    # F
    .param p2, "outerWidth"    # F
    .param p3, "outerHeight"    # F
    .param p4, "clipToFit"    # Z

    .prologue
    .line 128
    div-float v0, p2, p0

    .line 129
    .local v0, "scaleX":F
    div-float v1, p3, p1

    .line 130
    .local v1, "scaleY":F
    if-eqz p4, :cond_1

    cmpl-float v2, v0, v1

    if-lez v2, :cond_2

    .end local v0    # "scaleX":F
    :cond_0
    :goto_0
    return v0

    .restart local v0    # "scaleX":F
    :cond_1
    cmpg-float v2, v0, v1

    if-ltz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
