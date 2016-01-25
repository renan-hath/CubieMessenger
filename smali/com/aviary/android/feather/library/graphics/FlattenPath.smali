.class public Lcom/aviary/android/feather/library/graphics/FlattenPath;
.super Ljava/lang/Object;
.source "FlattenPath.java"


# static fields
.field public static DEFAULT_FLATNESS:D

.field public static MAX_CHORD_LENGTH_SQ:D

.field public static MIN_CHORD_LENGTH_SQ:D


# instance fields
.field private cubic:Lcom/aviary/android/feather/library/graphics/CubicCurve;

.field private flatness:D

.field private lastPoint:Landroid/graphics/PointF;

.field private points:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 15
    const-wide v0, 0x3f50624de0000000L    # 0.0010000000474974513

    sput-wide v0, Lcom/aviary/android/feather/library/graphics/FlattenPath;->DEFAULT_FLATNESS:D

    .line 18
    sput-wide v2, Lcom/aviary/android/feather/library/graphics/FlattenPath;->MIN_CHORD_LENGTH_SQ:D

    .line 21
    sput-wide v2, Lcom/aviary/android/feather/library/graphics/FlattenPath;->MAX_CHORD_LENGTH_SQ:D

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    sget-wide v0, Lcom/aviary/android/feather/library/graphics/FlattenPath;->DEFAULT_FLATNESS:D

    invoke-direct {p0, v0, v1}, Lcom/aviary/android/feather/library/graphics/FlattenPath;-><init>(D)V

    .line 40
    return-void
.end method

.method public constructor <init>(D)V
    .locals 20
    .param p1, "_flatness"    # D

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/aviary/android/feather/library/graphics/FlattenPath;->points:Ljava/util/LinkedList;

    .line 49
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/aviary/android/feather/library/graphics/FlattenPath;->flatness:D

    .line 50
    new-instance v3, Lcom/aviary/android/feather/library/graphics/CubicCurve;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    invoke-direct/range {v3 .. v19}, Lcom/aviary/android/feather/library/graphics/CubicCurve;-><init>(DDDDDDDD)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/aviary/android/feather/library/graphics/FlattenPath;->cubic:Lcom/aviary/android/feather/library/graphics/CubicCurve;

    .line 51
    new-instance v3, Landroid/graphics/PointF;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/aviary/android/feather/library/graphics/FlattenPath;->lastPoint:Landroid/graphics/PointF;

    .line 52
    return-void
.end method

.method private flattenCubicPoints(DDDDDDDD)V
    .locals 19
    .param p1, "x0"    # D
    .param p3, "y0"    # D
    .param p5, "x1"    # D
    .param p7, "y1"    # D
    .param p9, "x2"    # D
    .param p11, "y2"    # D
    .param p13, "x3"    # D
    .param p15, "y3"    # D

    .prologue
    .line 185
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/library/graphics/FlattenPath;->cubic:Lcom/aviary/android/feather/library/graphics/CubicCurve;

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move-wide/from16 v14, p13

    move-wide/from16 v16, p15

    invoke-virtual/range {v1 .. v17}, Lcom/aviary/android/feather/library/graphics/CubicCurve;->update(DDDDDDDD)V

    .line 187
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/library/graphics/FlattenPath;->cubic:Lcom/aviary/android/feather/library/graphics/CubicCurve;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/graphics/CubicCurve;->getSquareFlatness()D

    move-result-wide v1

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/aviary/android/feather/library/graphics/FlattenPath;->flatness:D

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    .line 188
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/library/graphics/FlattenPath;->cubic:Lcom/aviary/android/feather/library/graphics/CubicCurve;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/graphics/CubicCurve;->subdivide()[D

    move-result-object v18

    .line 190
    .local v18, "halves":[D
    const/4 v1, 0x0

    aget-wide v2, v18, v1

    const/4 v1, 0x1

    aget-wide v4, v18, v1

    const/4 v1, 0x2

    aget-wide v6, v18, v1

    const/4 v1, 0x3

    aget-wide v8, v18, v1

    const/4 v1, 0x4

    aget-wide v10, v18, v1

    const/4 v1, 0x5

    aget-wide v12, v18, v1

    const/4 v1, 0x6

    aget-wide v14, v18, v1

    const/4 v1, 0x7

    aget-wide v16, v18, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v17}, Lcom/aviary/android/feather/library/graphics/FlattenPath;->flattenCubicPoints(DDDDDDDD)V

    .line 191
    const/16 v1, 0x8

    aget-wide v2, v18, v1

    const/16 v1, 0x9

    aget-wide v4, v18, v1

    const/16 v1, 0xa

    aget-wide v6, v18, v1

    const/16 v1, 0xb

    aget-wide v8, v18, v1

    const/16 v1, 0xc

    aget-wide v10, v18, v1

    const/16 v1, 0xd

    aget-wide v12, v18, v1

    const/16 v1, 0xe

    aget-wide v14, v18, v1

    const/16 v1, 0xf

    aget-wide v16, v18, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v17}, Lcom/aviary/android/feather/library/graphics/FlattenPath;->flattenCubicPoints(DDDDDDDD)V

    .line 197
    .end local v18    # "halves":[D
    :goto_0
    return-void

    .line 193
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/library/graphics/FlattenPath;->points:Ljava/util/LinkedList;

    monitor-enter v2

    .line 194
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/library/graphics/FlattenPath;->points:Ljava/util/LinkedList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/library/graphics/FlattenPath;->cubic:Lcom/aviary/android/feather/library/graphics/CubicCurve;

    invoke-virtual {v3}, Lcom/aviary/android/feather/library/graphics/CubicCurve;->getB()Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 193
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public lineTo(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 138
    iget-object v1, p0, Lcom/aviary/android/feather/library/graphics/FlattenPath;->points:Ljava/util/LinkedList;

    monitor-enter v1

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/FlattenPath;->points:Ljava/util/LinkedList;

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/FlattenPath;->lastPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 138
    monitor-exit v1

    .line 142
    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public moveTo(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 124
    iget-object v1, p0, Lcom/aviary/android/feather/library/graphics/FlattenPath;->points:Ljava/util/LinkedList;

    monitor-enter v1

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/FlattenPath;->lastPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 126
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/FlattenPath;->points:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/FlattenPath;->points:Ljava/util/LinkedList;

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 124
    monitor-exit v1

    .line 129
    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public quadTo(FFFF)V
    .locals 29
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "endx"    # F
    .param p4, "endy"    # F

    .prologue
    .line 153
    new-instance v20, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/library/graphics/FlattenPath;->lastPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/library/graphics/FlattenPath;->lastPoint:Landroid/graphics/PointF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v23, v0

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-direct {v0, v3, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 154
    .local v20, "q0":Landroid/graphics/PointF;
    new-instance v21, Landroid/graphics/PointF;

    move-object/from16 v0, v21

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 155
    .local v21, "q1":Landroid/graphics/PointF;
    new-instance v22, Landroid/graphics/PointF;

    move-object/from16 v0, v22

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 158
    .local v22, "q2":Landroid/graphics/PointF;
    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/PointF;->x:F

    float-to-double v4, v3

    .line 159
    .local v4, "_x0":D
    const-wide v23, 0x3fd5555555555555L    # 0.3333333333333333

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/PointF;->x:F

    float-to-double v0, v3

    move-wide/from16 v25, v0

    mul-double v23, v23, v25

    const-wide v25, 0x3fe5555555555555L    # 0.6666666666666666

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/PointF;->x:F

    float-to-double v0, v3

    move-wide/from16 v27, v0

    mul-double v25, v25, v27

    add-double v8, v23, v25

    .line 160
    .local v8, "_x1":D
    const-wide v23, 0x3fe5555555555555L    # 0.6666666666666666

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/PointF;->x:F

    float-to-double v0, v3

    move-wide/from16 v25, v0

    mul-double v23, v23, v25

    const-wide v25, 0x3fd5555555555555L    # 0.3333333333333333

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/PointF;->x:F

    float-to-double v0, v3

    move-wide/from16 v27, v0

    mul-double v25, v25, v27

    add-double v12, v23, v25

    .line 161
    .local v12, "_x2":D
    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/PointF;->x:F

    float-to-double v0, v3

    move-wide/from16 v16, v0

    .line 163
    .local v16, "_x3":D
    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/PointF;->y:F

    float-to-double v6, v3

    .line 164
    .local v6, "_y0":D
    const-wide v23, 0x3fd5555555555555L    # 0.3333333333333333

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/PointF;->y:F

    float-to-double v0, v3

    move-wide/from16 v25, v0

    mul-double v23, v23, v25

    const-wide v25, 0x3fe5555555555555L    # 0.6666666666666666

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/PointF;->y:F

    float-to-double v0, v3

    move-wide/from16 v27, v0

    mul-double v25, v25, v27

    add-double v10, v23, v25

    .line 165
    .local v10, "_y1":D
    const-wide v23, 0x3fe5555555555555L    # 0.6666666666666666

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/PointF;->y:F

    float-to-double v0, v3

    move-wide/from16 v25, v0

    mul-double v23, v23, v25

    const-wide v25, 0x3fd5555555555555L    # 0.3333333333333333

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/PointF;->y:F

    float-to-double v0, v3

    move-wide/from16 v27, v0

    mul-double v25, v25, v27

    add-double v14, v23, v25

    .line 166
    .local v14, "_y2":D
    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/PointF;->y:F

    float-to-double v0, v3

    move-wide/from16 v18, v0

    .line 168
    .local v18, "_y3":D
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/library/graphics/FlattenPath;->lastPoint:Landroid/graphics/PointF;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v3, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    move-object/from16 v3, p0

    .line 169
    invoke-direct/range {v3 .. v19}, Lcom/aviary/android/feather/library/graphics/FlattenPath;->flattenCubicPoints(DDDDDDDD)V

    .line 170
    return-void
.end method

.method public remove()Landroid/graphics/PointF;
    .locals 2

    .prologue
    .line 82
    iget-object v1, p0, Lcom/aviary/android/feather/library/graphics/FlattenPath;->points:Ljava/util/LinkedList;

    monitor-enter v1

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/FlattenPath;->points:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    monitor-exit v1

    return-object v0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 93
    iget-object v1, p0, Lcom/aviary/android/feather/library/graphics/FlattenPath;->points:Ljava/util/LinkedList;

    monitor-enter v1

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/FlattenPath;->points:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
