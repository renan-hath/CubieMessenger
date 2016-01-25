.class public Lcom/aviary/android/feather/library/graphics/CubicCurve;
.super Ljava/lang/Object;
.source "CubicCurve.java"


# instance fields
.field private _x0:D

.field private _x1:D

.field private _x2:D

.field private _x3:D

.field private _y0:D

.field private _y1:D

.field private _y2:D

.field private _y3:D


# direct methods
.method public constructor <init>(DDDDDDDD)V
    .locals 0
    .param p1, "x0"    # D
    .param p3, "y0"    # D
    .param p5, "x1"    # D
    .param p7, "y1"    # D
    .param p9, "x2"    # D
    .param p11, "y2"    # D
    .param p13, "x3"    # D
    .param p15, "y3"    # D

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual/range {p0 .. p16}, Lcom/aviary/android/feather/library/graphics/CubicCurve;->update(DDDDDDDD)V

    .line 29
    return-void
.end method


# virtual methods
.method public getB()Landroid/graphics/PointF;
    .locals 4

    .prologue
    .line 69
    new-instance v0, Landroid/graphics/PointF;

    iget-wide v1, p0, Lcom/aviary/android/feather/library/graphics/CubicCurve;->_x3:D

    double-to-float v1, v1

    iget-wide v2, p0, Lcom/aviary/android/feather/library/graphics/CubicCurve;->_y3:D

    double-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getSquareFlatness()D
    .locals 32

    .prologue
    .line 80
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/aviary/android/feather/library/graphics/CubicCurve;->_x0:D

    move-wide/from16 v16, v0

    .line 81
    .local v16, "x1":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/aviary/android/feather/library/graphics/CubicCurve;->_y0:D

    move-wide/from16 v22, v0

    .line 82
    .local v22, "y1":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/aviary/android/feather/library/graphics/CubicCurve;->_x3:D

    move-wide/from16 v18, v0

    .line 83
    .local v18, "x2":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/aviary/android/feather/library/graphics/CubicCurve;->_y3:D

    move-wide/from16 v24, v0

    .line 85
    .local v24, "y2":D
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/aviary/android/feather/library/graphics/CubicCurve;->_x1:D

    .line 86
    .local v8, "px":D
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/aviary/android/feather/library/graphics/CubicCurve;->_y1:D

    .line 88
    .local v10, "py":D
    sub-double v26, v16, v18

    sub-double v28, v16, v18

    mul-double v26, v26, v28

    sub-double v28, v22, v24

    sub-double v30, v22, v24

    mul-double v28, v28, v30

    add-double v6, v26, v28

    .line 90
    .local v6, "pd2":D
    const-wide/16 v26, 0x0

    cmpl-double v26, v6, v26

    if-nez v26, :cond_0

    .line 91
    move-wide/from16 v14, v16

    .line 92
    .local v14, "x":D
    move-wide/from16 v20, v24

    .line 108
    .local v20, "y":D
    :goto_0
    sub-double v26, v14, v8

    sub-double v28, v14, v8

    mul-double v26, v26, v28

    sub-double v28, v20, v10

    sub-double v30, v20, v10

    mul-double v28, v28, v30

    add-double v2, v26, v28

    .line 112
    .local v2, "d1":D
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/aviary/android/feather/library/graphics/CubicCurve;->_x2:D

    .line 113
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/aviary/android/feather/library/graphics/CubicCurve;->_y2:D

    .line 115
    sub-double v26, v16, v18

    sub-double v28, v16, v18

    mul-double v26, v26, v28

    sub-double v28, v22, v24

    sub-double v30, v22, v24

    mul-double v28, v28, v30

    add-double v6, v26, v28

    .line 117
    const-wide/16 v26, 0x0

    cmpl-double v26, v6, v26

    if-nez v26, :cond_3

    .line 118
    move-wide/from16 v14, v16

    .line 119
    move-wide/from16 v20, v24

    .line 135
    :goto_1
    sub-double v26, v14, v8

    sub-double v28, v14, v8

    mul-double v26, v26, v28

    sub-double v28, v20, v10

    sub-double v30, v20, v10

    mul-double v28, v28, v30

    add-double v4, v26, v28

    .line 137
    .local v4, "d2":D
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v26

    return-wide v26

    .line 94
    .end local v2    # "d1":D
    .end local v4    # "d2":D
    .end local v14    # "x":D
    .end local v20    # "y":D
    :cond_0
    sub-double v26, v8, v16

    sub-double v28, v18, v16

    mul-double v26, v26, v28

    sub-double v28, v10, v22

    sub-double v30, v24, v22

    mul-double v28, v28, v30

    add-double v26, v26, v28

    div-double v12, v26, v6

    .line 96
    .local v12, "u":D
    const-wide/16 v26, 0x0

    cmpg-double v26, v12, v26

    if-gez v26, :cond_1

    .line 97
    move-wide/from16 v14, v16

    .line 98
    .restart local v14    # "x":D
    move-wide/from16 v20, v22

    .line 99
    .restart local v20    # "y":D
    goto :goto_0

    .end local v14    # "x":D
    .end local v20    # "y":D
    :cond_1
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    cmpl-double v26, v12, v26

    if-lez v26, :cond_2

    .line 100
    move-wide/from16 v14, v18

    .line 101
    .restart local v14    # "x":D
    move-wide/from16 v20, v24

    .line 102
    .restart local v20    # "y":D
    goto :goto_0

    .line 103
    .end local v14    # "x":D
    .end local v20    # "y":D
    :cond_2
    sub-double v26, v18, v16

    mul-double v26, v26, v12

    add-double v14, v16, v26

    .line 104
    .restart local v14    # "x":D
    sub-double v26, v24, v22

    mul-double v26, v26, v12

    add-double v20, v22, v26

    .restart local v20    # "y":D
    goto :goto_0

    .line 121
    .end local v12    # "u":D
    .restart local v2    # "d1":D
    :cond_3
    sub-double v26, v8, v16

    sub-double v28, v18, v16

    mul-double v26, v26, v28

    sub-double v28, v10, v22

    sub-double v30, v24, v22

    mul-double v28, v28, v30

    add-double v26, v26, v28

    div-double v12, v26, v6

    .line 123
    .restart local v12    # "u":D
    const-wide/16 v26, 0x0

    cmpg-double v26, v12, v26

    if-gez v26, :cond_4

    .line 124
    move-wide/from16 v14, v16

    .line 125
    move-wide/from16 v20, v22

    .line 126
    goto :goto_1

    :cond_4
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    cmpl-double v26, v12, v26

    if-lez v26, :cond_5

    .line 127
    move-wide/from16 v14, v18

    .line 128
    move-wide/from16 v20, v24

    .line 129
    goto :goto_1

    .line 130
    :cond_5
    sub-double v26, v18, v16

    mul-double v26, v26, v12

    add-double v14, v16, v26

    .line 131
    sub-double v26, v24, v22

    mul-double v26, v26, v12

    add-double v20, v22, v26

    goto :goto_1
.end method

.method public subdivide()[D
    .locals 26

    .prologue
    .line 149
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/aviary/android/feather/library/graphics/CubicCurve;->_x0:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/aviary/android/feather/library/graphics/CubicCurve;->_x1:D

    move-wide/from16 v24, v0

    add-double v22, v22, v24

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    div-double v2, v22, v24

    .line 150
    .local v2, "left_c1x":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/aviary/android/feather/library/graphics/CubicCurve;->_y0:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/aviary/android/feather/library/graphics/CubicCurve;->_y1:D

    move-wide/from16 v24, v0

    add-double v22, v22, v24

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    div-double v4, v22, v24

    .line 151
    .local v4, "left_c1y":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/aviary/android/feather/library/graphics/CubicCurve;->_x3:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/aviary/android/feather/library/graphics/CubicCurve;->_x2:D

    move-wide/from16 v24, v0

    add-double v22, v22, v24

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    div-double v18, v22, v24

    .line 152
    .local v18, "right_c2x":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/aviary/android/feather/library/graphics/CubicCurve;->_y3:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/aviary/android/feather/library/graphics/CubicCurve;->_y2:D

    move-wide/from16 v24, v0

    add-double v22, v22, v24

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    div-double v20, v22, v24

    .line 154
    .local v20, "right_c2y":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/aviary/android/feather/library/graphics/CubicCurve;->_x1:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/aviary/android/feather/library/graphics/CubicCurve;->_x2:D

    move-wide/from16 v24, v0

    add-double v22, v22, v24

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    div-double v10, v22, v24

    .line 155
    .local v10, "mid_x":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/aviary/android/feather/library/graphics/CubicCurve;->_y1:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/aviary/android/feather/library/graphics/CubicCurve;->_y2:D

    move-wide/from16 v24, v0

    add-double v22, v22, v24

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    div-double v12, v22, v24

    .line 157
    .local v12, "mid_y":D
    add-double v22, v2, v10

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    div-double v6, v22, v24

    .line 158
    .local v6, "left_c2x":D
    add-double v22, v4, v12

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    div-double v8, v22, v24

    .line 159
    .local v8, "left_c2y":D
    add-double v22, v10, v18

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    div-double v14, v22, v24

    .line 160
    .local v14, "right_c1x":D
    add-double v22, v12, v20

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    div-double v16, v22, v24

    .line 162
    .local v16, "right_c1y":D
    add-double v22, v6, v14

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    div-double v10, v22, v24

    .line 163
    add-double v22, v8, v16

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    div-double v12, v22, v24

    .line 165
    const/16 v22, 0x10

    move/from16 v0, v22

    new-array v0, v0, [D

    move-object/from16 v22, v0

    const/16 v23, 0x0

    .line 166
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/aviary/android/feather/library/graphics/CubicCurve;->_x0:D

    move-wide/from16 v24, v0

    aput-wide v24, v22, v23

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/aviary/android/feather/library/graphics/CubicCurve;->_y0:D

    move-wide/from16 v24, v0

    aput-wide v24, v22, v23

    const/16 v23, 0x2

    aput-wide v2, v22, v23

    const/16 v23, 0x3

    aput-wide v4, v22, v23

    const/16 v23, 0x4

    aput-wide v6, v22, v23

    const/16 v23, 0x5

    aput-wide v8, v22, v23

    const/16 v23, 0x6

    aput-wide v10, v22, v23

    const/16 v23, 0x7

    aput-wide v12, v22, v23

    const/16 v23, 0x8

    aput-wide v10, v22, v23

    const/16 v23, 0x9

    aput-wide v12, v22, v23

    const/16 v23, 0xa

    aput-wide v14, v22, v23

    const/16 v23, 0xb

    aput-wide v16, v22, v23

    const/16 v23, 0xc

    aput-wide v18, v22, v23

    const/16 v23, 0xd

    aput-wide v20, v22, v23

    const/16 v23, 0xe

    .line 167
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/aviary/android/feather/library/graphics/CubicCurve;->_x3:D

    move-wide/from16 v24, v0

    aput-wide v24, v22, v23

    const/16 v23, 0xf

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/aviary/android/feather/library/graphics/CubicCurve;->_y3:D

    move-wide/from16 v24, v0

    aput-wide v24, v22, v23

    .line 165
    return-object v22
.end method

.method public update(DDDDDDDD)V
    .locals 0
    .param p1, "x0"    # D
    .param p3, "y0"    # D
    .param p5, "x1"    # D
    .param p7, "y1"    # D
    .param p9, "x2"    # D
    .param p11, "y2"    # D
    .param p13, "x3"    # D
    .param p15, "y3"    # D

    .prologue
    .line 44
    iput-wide p1, p0, Lcom/aviary/android/feather/library/graphics/CubicCurve;->_x0:D

    .line 45
    iput-wide p3, p0, Lcom/aviary/android/feather/library/graphics/CubicCurve;->_y0:D

    .line 46
    iput-wide p5, p0, Lcom/aviary/android/feather/library/graphics/CubicCurve;->_x1:D

    .line 47
    iput-wide p7, p0, Lcom/aviary/android/feather/library/graphics/CubicCurve;->_y1:D

    .line 48
    iput-wide p9, p0, Lcom/aviary/android/feather/library/graphics/CubicCurve;->_x2:D

    .line 49
    iput-wide p11, p0, Lcom/aviary/android/feather/library/graphics/CubicCurve;->_y2:D

    .line 50
    iput-wide p13, p0, Lcom/aviary/android/feather/library/graphics/CubicCurve;->_x3:D

    .line 51
    iput-wide p15, p0, Lcom/aviary/android/feather/library/graphics/CubicCurve;->_y3:D

    .line 52
    return-void
.end method
