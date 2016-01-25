.class public final Lcom/liquable/nemo/util/crop/MediaClustering;
.super Ljava/lang/Object;
.source "MediaClustering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;
    }
.end annotation


# static fields
.field private static CLUSTER_SPLIT_MULTIPLIER:I = 0x0

.field private static final GEOGRAPHIC_DISTANCE_CUTOFF_IN_MILES:I = 0x14

.field private static final MAX_CLUSTER_SPLIT_TIME_IN_MS:J = 0x6ddd00L

.field private static final MAX_MAX_CLUSTER_SIZE:I = 0x32

.field private static final MAX_MIN_CLUSTER_SIZE:I = 0xf

.field private static final MIN_CLUSTER_SPLIT_TIME_IN_MS:J = 0xea60L

.field private static final MIN_MAX_CLUSTER_SIZE:I = 0x14

.field private static final MIN_MIN_CLUSTER_SIZE:I = 0x8

.field private static final MIN_PARTITION_CHANGE_FACTOR:I = 0x2

.field private static final NUM_CLUSTERS_TARGETED:I = 0x9

.field private static final PARTITION_CLUSTER_SPLIT_TIME_FACTOR:I = 0x2


# instance fields
.field private mClusterSplitTime:J

.field private final mClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrCluster:Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;

.field private mIsPicassaAlbum:Z

.field private mLargeClusterSplitTime:J

.field private mMaxClusterSize:I

.field private mMinClusterSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x3

    sput v0, Lcom/liquable/nemo/util/crop/MediaClustering;->CLUSTER_SPLIT_MULTIPLIER:I

    return-void
.end method

.method constructor <init>(Z)V
    .locals 4
    .param p1, "isPicassaAlbum"    # Z

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mIsPicassaAlbum:Z

    .line 204
    const-wide/32 v0, 0x3763b0

    iput-wide v0, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mClusterSplitTime:J

    .line 206
    iget-wide v0, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mClusterSplitTime:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mLargeClusterSplitTime:J

    .line 208
    const/16 v0, 0xb

    iput v0, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mMinClusterSize:I

    .line 210
    const/16 v0, 0x23

    iput v0, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mMaxClusterSize:I

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mClusters:Ljava/util/ArrayList;

    .line 214
    iput-boolean p1, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mIsPicassaAlbum:Z

    .line 215
    new-instance v0, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;

    iget-boolean v1, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mIsPicassaAlbum:Z

    invoke-direct {v0, v1}, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;-><init>(Z)V

    iput-object v0, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mCurrCluster:Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;

    .line 216
    return-void
.end method

.method private getPartitionIndexForCurrentCluster()I
    .locals 20

    .prologue
    .line 307
    const/4 v14, -0x1

    .line 308
    .local v14, "partitionIndex":I
    const/high16 v10, 0x40000000    # 2.0f

    .line 309
    .local v10, "largestChange":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/util/crop/MediaClustering;->mCurrCluster:Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->getItems()Ljava/util/ArrayList;

    move-result-object v3

    .line 310
    .local v3, "currClusterItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/util/crop/MediaClustering;->mCurrCluster:Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v13, v0, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->mNumItemsLoaded:I

    .line 311
    .local v13, "numCurrClusterItems":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/liquable/nemo/util/crop/MediaClustering;->mMinClusterSize:I

    .line 314
    .local v11, "minClusterSize":I
    add-int/lit8 v16, v11, 0x1

    move/from16 v0, v16

    if-le v13, v0, :cond_2

    .line 315
    move v9, v11

    .local v9, "i":I
    :goto_0
    sub-int v16, v13, v11

    move/from16 v0, v16

    if-ge v9, v0, :cond_2

    .line 316
    add-int/lit8 v16, v9, -0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/liquable/nemo/util/crop/MediaItem;

    .line 317
    .local v15, "prevItem":Lcom/liquable/nemo/util/crop/MediaItem;
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/liquable/nemo/util/crop/MediaItem;

    .line 318
    .local v4, "currItem":Lcom/liquable/nemo/util/crop/MediaItem;
    add-int/lit8 v16, v9, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/liquable/nemo/util/crop/MediaItem;

    .line 320
    .local v12, "nextItem":Lcom/liquable/nemo/util/crop/MediaItem;
    invoke-virtual {v15}, Lcom/liquable/nemo/util/crop/MediaItem;->isDateTakenValid()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-virtual {v4}, Lcom/liquable/nemo/util/crop/MediaItem;->isDateModifiedValid()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 321
    invoke-virtual {v12}, Lcom/liquable/nemo/util/crop/MediaItem;->isDateModifiedValid()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 322
    iget-wide v0, v12, Lcom/liquable/nemo/util/crop/MediaItem;->mDateTakenInMs:J

    move-wide/from16 v16, v0

    iget-wide v0, v4, Lcom/liquable/nemo/util/crop/MediaItem;->mDateTakenInMs:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    .line 323
    .local v5, "diff1":J
    iget-wide v0, v4, Lcom/liquable/nemo/util/crop/MediaItem;->mDateTakenInMs:J

    move-wide/from16 v16, v0

    iget-wide v0, v15, Lcom/liquable/nemo/util/crop/MediaItem;->mDateTakenInMs:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    .line 324
    .local v7, "diff2":J
    long-to-float v0, v5

    move/from16 v16, v0

    long-to-float v0, v7

    move/from16 v17, v0

    const v18, 0x3c23d70a    # 0.01f

    add-float v17, v17, v18

    div-float v16, v16, v17

    long-to-float v0, v7

    move/from16 v17, v0

    long-to-float v0, v5

    move/from16 v18, v0

    const v19, 0x3c23d70a    # 0.01f

    add-float v18, v18, v19

    div-float v17, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 325
    .local v2, "change":F
    cmpl-float v16, v2, v10

    if-lez v16, :cond_0

    .line 326
    invoke-static {v4, v15}, Lcom/liquable/nemo/util/crop/MediaClustering;->timeDistance(Lcom/liquable/nemo/util/crop/MediaItem;Lcom/liquable/nemo/util/crop/MediaItem;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/liquable/nemo/util/crop/MediaClustering;->mLargeClusterSplitTime:J

    move-wide/from16 v18, v0

    cmp-long v16, v16, v18

    if-lez v16, :cond_1

    .line 327
    move v14, v9

    .line 328
    move v10, v2

    .line 315
    .end local v2    # "change":F
    .end local v5    # "diff1":J
    .end local v7    # "diff2":J
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 329
    .restart local v2    # "change":F
    .restart local v5    # "diff1":J
    .restart local v7    # "diff2":J
    :cond_1
    invoke-static {v12, v4}, Lcom/liquable/nemo/util/crop/MediaClustering;->timeDistance(Lcom/liquable/nemo/util/crop/MediaItem;Lcom/liquable/nemo/util/crop/MediaItem;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/liquable/nemo/util/crop/MediaClustering;->mLargeClusterSplitTime:J

    move-wide/from16 v18, v0

    cmp-long v16, v16, v18

    if-lez v16, :cond_0

    .line 330
    add-int/lit8 v14, v9, 0x1

    .line 331
    move v10, v2

    goto :goto_1

    .line 337
    .end local v2    # "change":F
    .end local v4    # "currItem":Lcom/liquable/nemo/util/crop/MediaItem;
    .end local v5    # "diff1":J
    .end local v7    # "diff2":J
    .end local v9    # "i":I
    .end local v12    # "nextItem":Lcom/liquable/nemo/util/crop/MediaItem;
    .end local v15    # "prevItem":Lcom/liquable/nemo/util/crop/MediaItem;
    :cond_2
    return v14
.end method

.method private static isGeographicallySeparated(Lcom/liquable/nemo/util/crop/MediaItem;Lcom/liquable/nemo/util/crop/MediaItem;)Z
    .locals 9
    .param p0, "a"    # Lcom/liquable/nemo/util/crop/MediaItem;
    .param p1, "b"    # Lcom/liquable/nemo/util/crop/MediaItem;

    .prologue
    .line 145
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/MediaItem;->isLatLongValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/liquable/nemo/util/crop/MediaItem;->isLatLongValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-wide v0, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mLatitude:D

    iget-wide v2, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mLongitude:D

    iget-wide v4, p1, Lcom/liquable/nemo/util/crop/MediaItem;->mLatitude:D

    iget-wide v6, p1, Lcom/liquable/nemo/util/crop/MediaItem;->mLongitude:D

    invoke-static/range {v0 .. v7}, Lcom/liquable/nemo/util/crop/LocationMediaFilter;->distanceBetween(DDDD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/crop/LocationMediaFilter;->toMile(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v8, v0

    .line 150
    .local v8, "distance":I
    const/16 v0, 0x14

    if-le v8, v0, :cond_0

    .line 151
    const/4 v0, 0x1

    .line 154
    .end local v8    # "distance":I
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mergeAndAddCurrentCluster()V
    .locals 7

    .prologue
    .line 341
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 342
    .local v2, "numClusters":I
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mClusters:Ljava/util/ArrayList;

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;

    .line 343
    .local v4, "prevCluster":Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mCurrCluster:Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;

    invoke-virtual {v5}, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 344
    .local v0, "currClusterItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaItem;>;"
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mCurrCluster:Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;

    iget v3, v5, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->mNumItemsLoaded:I

    .line 345
    .local v3, "numCurrClusterItems":I
    iget v5, v4, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->mNumItemsLoaded:I

    iget v6, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mMinClusterSize:I

    if-ge v5, v6, :cond_1

    .line 346
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 347
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/liquable/nemo/util/crop/MediaItem;

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->addItem(Lcom/liquable/nemo/util/crop/MediaItem;)V

    .line 346
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 349
    :cond_0
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mClusters:Ljava/util/ArrayList;

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v5, v6, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 353
    .end local v1    # "i":I
    :goto_1
    return-void

    .line 351
    :cond_1
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mClusters:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mCurrCluster:Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private splitAndAddCurrentCluster()V
    .locals 7

    .prologue
    .line 390
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mCurrCluster:Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;

    invoke-virtual {v5}, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 391
    .local v0, "currClusterItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaItem;>;"
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mCurrCluster:Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;

    iget v2, v5, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->mNumItemsLoaded:I

    .line 392
    .local v2, "numCurrClusterItems":I
    invoke-direct {p0}, Lcom/liquable/nemo/util/crop/MediaClustering;->getPartitionIndexForCurrentCluster()I

    move-result v4

    .line 393
    .local v4, "secondPartitionStartIndex":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 394
    new-instance v3, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;

    iget-boolean v5, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mIsPicassaAlbum:Z

    invoke-direct {v3, v5}, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;-><init>(Z)V

    .line 395
    .local v3, "partitionedCluster":Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 396
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/liquable/nemo/util/crop/MediaItem;

    invoke-virtual {v3, v5}, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->addItem(Lcom/liquable/nemo/util/crop/MediaItem;)V

    .line 395
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 398
    :cond_0
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    new-instance v3, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;

    .end local v3    # "partitionedCluster":Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;
    iget-boolean v5, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mIsPicassaAlbum:Z

    invoke-direct {v3, v5}, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;-><init>(Z)V

    .line 400
    .restart local v3    # "partitionedCluster":Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;
    move v1, v4

    :goto_1
    if-ge v1, v2, :cond_1

    .line 401
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/liquable/nemo/util/crop/MediaItem;

    invoke-virtual {v3, v5}, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->addItem(Lcom/liquable/nemo/util/crop/MediaItem;)V

    .line 400
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 403
    :cond_1
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    .end local v1    # "j":I
    .end local v3    # "partitionedCluster":Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;
    :goto_2
    return-void

    .line 405
    :cond_2
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mClusters:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mCurrCluster:Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public static timeDistance(Lcom/liquable/nemo/util/crop/MediaItem;Lcom/liquable/nemo/util/crop/MediaItem;)J
    .locals 4
    .param p0, "a"    # Lcom/liquable/nemo/util/crop/MediaItem;
    .param p1, "b"    # Lcom/liquable/nemo/util/crop/MediaItem;

    .prologue
    .line 159
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 160
    :cond_0
    const-wide/16 v0, 0x0

    .line 162
    :goto_0
    return-wide v0

    :cond_1
    iget-wide v0, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mDateTakenInMs:J

    iget-wide v2, p1, Lcom/liquable/nemo/util/crop/MediaItem;->mDateTakenInMs:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method public addItemForClustering(Lcom/liquable/nemo/util/crop/MediaItem;)V
    .locals 1
    .param p1, "mediaItem"    # Lcom/liquable/nemo/util/crop/MediaItem;

    .prologue
    .line 219
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/liquable/nemo/util/crop/MediaClustering;->compute(Lcom/liquable/nemo/util/crop/MediaItem;Z)V

    .line 220
    return-void
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 223
    iget-object v3, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 224
    .local v2, "numClusters":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 225
    iget-object v3, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;

    .line 226
    .local v0, "cluster":Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;
    invoke-virtual {v0}, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->clear()V

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    .end local v0    # "cluster":Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;
    :cond_0
    iget-object v3, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mCurrCluster:Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;

    if-eqz v3, :cond_1

    .line 229
    iget-object v3, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mCurrCluster:Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;

    invoke-virtual {v3}, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->clear()V

    .line 231
    :cond_1
    return-void
.end method

.method public compute(Lcom/liquable/nemo/util/crop/MediaItem;Z)V
    .locals 9
    .param p1, "currentItem"    # Lcom/liquable/nemo/util/crop/MediaItem;
    .param p2, "processAllItems"    # Z

    .prologue
    .line 234
    if-eqz p1, :cond_0

    .line 235
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 236
    .local v2, "numClusters":I
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mCurrCluster:Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;

    iget v3, v5, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->mNumItemsLoaded:I

    .line 237
    .local v3, "numCurrClusterItems":I
    const/4 v0, 0x0

    .line 238
    .local v0, "geographicallySeparateItem":Z
    const/4 v1, 0x0

    .line 242
    .local v1, "itemAddedToCurrentCluster":Z
    if-nez v3, :cond_2

    .line 243
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mCurrCluster:Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;

    invoke-virtual {v5, p1}, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->addItem(Lcom/liquable/nemo/util/crop/MediaItem;)V

    .line 272
    .end local v0    # "geographicallySeparateItem":Z
    .end local v1    # "itemAddedToCurrentCluster":Z
    .end local v2    # "numClusters":I
    .end local v3    # "numCurrClusterItems":I
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    iget-object v5, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mCurrCluster:Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;

    iget v5, v5, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->mNumItemsLoaded:I

    if-lez v5, :cond_1

    .line 273
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 274
    .restart local v2    # "numClusters":I
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mCurrCluster:Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;

    iget v3, v5, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->mNumItemsLoaded:I

    .line 277
    .restart local v3    # "numCurrClusterItems":I
    iget v5, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mMaxClusterSize:I

    if-le v3, v5, :cond_8

    .line 278
    invoke-direct {p0}, Lcom/liquable/nemo/util/crop/MediaClustering;->splitAndAddCurrentCluster()V

    .line 285
    :goto_1
    new-instance v5, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;

    iget-boolean v6, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mIsPicassaAlbum:Z

    invoke-direct {v5, v6}, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;-><init>(Z)V

    iput-object v5, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mCurrCluster:Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;

    .line 287
    .end local v2    # "numClusters":I
    .end local v3    # "numCurrClusterItems":I
    :cond_1
    return-void

    .line 245
    .restart local v0    # "geographicallySeparateItem":Z
    .restart local v1    # "itemAddedToCurrentCluster":Z
    .restart local v2    # "numClusters":I
    .restart local v3    # "numCurrClusterItems":I
    :cond_2
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mCurrCluster:Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;

    invoke-virtual {v5}, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->getLastItem()Lcom/liquable/nemo/util/crop/MediaItem;

    move-result-object v4

    .line 246
    .local v4, "prevItem":Lcom/liquable/nemo/util/crop/MediaItem;
    invoke-static {v4, p1}, Lcom/liquable/nemo/util/crop/MediaClustering;->isGeographicallySeparated(Lcom/liquable/nemo/util/crop/MediaItem;Lcom/liquable/nemo/util/crop/MediaItem;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 247
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mClusters:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mCurrCluster:Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    const/4 v0, 0x1

    .line 262
    :goto_2
    if-nez v1, :cond_0

    .line 263
    new-instance v5, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;

    iget-boolean v6, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mIsPicassaAlbum:Z

    invoke-direct {v5, v6}, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;-><init>(Z)V

    iput-object v5, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mCurrCluster:Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;

    .line 264
    if-eqz v0, :cond_3

    .line 265
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mCurrCluster:Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;

    const/4 v6, 0x1

    # setter for: Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->mGeographicallySeparatedFromPrevCluster:Z
    invoke-static {v5, v6}, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->access$002(Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;Z)Z

    .line 267
    :cond_3
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mCurrCluster:Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;

    invoke-virtual {v5, p1}, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->addItem(Lcom/liquable/nemo/util/crop/MediaItem;)V

    goto :goto_0

    .line 249
    :cond_4
    iget v5, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mMaxClusterSize:I

    if-le v3, v5, :cond_5

    .line 250
    invoke-direct {p0}, Lcom/liquable/nemo/util/crop/MediaClustering;->splitAndAddCurrentCluster()V

    goto :goto_2

    .line 251
    :cond_5
    invoke-static {v4, p1}, Lcom/liquable/nemo/util/crop/MediaClustering;->timeDistance(Lcom/liquable/nemo/util/crop/MediaItem;Lcom/liquable/nemo/util/crop/MediaItem;)J

    move-result-wide v5

    iget-wide v7, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mClusterSplitTime:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_6

    .line 252
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mCurrCluster:Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;

    invoke-virtual {v5, p1}, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->addItem(Lcom/liquable/nemo/util/crop/MediaItem;)V

    .line 253
    const/4 v1, 0x1

    goto :goto_2

    .line 254
    :cond_6
    if-lez v2, :cond_7

    iget v5, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mMinClusterSize:I

    if-ge v3, v5, :cond_7

    iget-object v5, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mCurrCluster:Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;

    .line 255
    # getter for: Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->mGeographicallySeparatedFromPrevCluster:Z
    invoke-static {v5}, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->access$000(Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 256
    invoke-direct {p0}, Lcom/liquable/nemo/util/crop/MediaClustering;->mergeAndAddCurrentCluster()V

    goto :goto_2

    .line 258
    :cond_7
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mClusters:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mCurrCluster:Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 279
    .end local v0    # "geographicallySeparateItem":Z
    .end local v1    # "itemAddedToCurrentCluster":Z
    .end local v4    # "prevItem":Lcom/liquable/nemo/util/crop/MediaItem;
    :cond_8
    if-lez v2, :cond_9

    iget v5, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mMinClusterSize:I

    if-ge v3, v5, :cond_9

    iget-object v5, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mCurrCluster:Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;

    .line 280
    # getter for: Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->mGeographicallySeparatedFromPrevCluster:Z
    invoke-static {v5}, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->access$000(Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 281
    invoke-direct {p0}, Lcom/liquable/nemo/util/crop/MediaClustering;->mergeAndAddCurrentCluster()V

    goto :goto_1

    .line 283
    :cond_9
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mClusters:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mCurrCluster:Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method public declared-synchronized getClusters()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;",
            ">;"
        }
    .end annotation

    .prologue
    .line 290
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mCurrCluster:Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;

    iget v1, v2, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->mNumItemsLoaded:I

    .line 291
    .local v1, "numCurrClusterItems":I
    if-nez v1, :cond_1

    .line 292
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mClusters:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 294
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .local v0, "mergedClusters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;>;"
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 296
    if-lez v1, :cond_0

    .line 297
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mCurrCluster:Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 290
    .end local v0    # "mergedClusters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;>;"
    .end local v1    # "numCurrClusterItems":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getClustersForDisplay()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;",
            ">;"
        }
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mClusters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public removeItemFromClustering(Lcom/liquable/nemo/util/crop/MediaItem;)V
    .locals 4
    .param p1, "mediaItem"    # Lcom/liquable/nemo/util/crop/MediaItem;

    .prologue
    .line 357
    iget-object v3, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mCurrCluster:Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;

    invoke-virtual {v3, p1}, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->removeItem(Lcom/liquable/nemo/util/crop/MediaItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 361
    .local v2, "numClusters":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 362
    iget-object v3, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;

    .line 363
    .local v0, "cluster":Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;
    invoke-virtual {v0, p1}, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->removeItem(Lcom/liquable/nemo/util/crop/MediaItem;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 364
    iget v3, v0, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->mNumItemsLoaded:I

    if-nez v3, :cond_0

    .line 365
    iget-object v3, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 361
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public setTimeRange(JI)V
    .locals 7
    .param p1, "timeRange"    # J
    .param p3, "numItems"    # I

    .prologue
    .line 373
    if-eqz p3, :cond_0

    .line 374
    div-int/lit8 v6, p3, 0x9

    .line 377
    .local v6, "meanItemsPerCluster":I
    div-int/lit8 v0, v6, 0x2

    iput v0, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mMinClusterSize:I

    .line 378
    mul-int/lit8 v0, v6, 0x2

    iput v0, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mMaxClusterSize:I

    .line 379
    int-to-long v0, p3

    div-long v0, p1, v0

    sget v2, Lcom/liquable/nemo/util/crop/MediaClustering;->CLUSTER_SPLIT_MULTIPLIER:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mClusterSplitTime:J

    .line 381
    .end local v6    # "meanItemsPerCluster":I
    :cond_0
    iget-wide v0, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mClusterSplitTime:J

    const-wide/32 v2, 0xea60

    const-wide/32 v4, 0x6ddd00

    invoke-static/range {v0 .. v5}, Lcom/liquable/nemo/util/crop/Shared;->clamp(JJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mClusterSplitTime:J

    .line 384
    iget-wide v0, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mClusterSplitTime:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mLargeClusterSplitTime:J

    .line 385
    iget v0, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mMinClusterSize:I

    const/16 v1, 0x8

    const/16 v2, 0xf

    invoke-static {v0, v1, v2}, Lcom/liquable/nemo/util/crop/Shared;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mMinClusterSize:I

    .line 386
    iget v0, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mMaxClusterSize:I

    const/16 v1, 0x14

    const/16 v2, 0x32

    invoke-static {v0, v1, v2}, Lcom/liquable/nemo/util/crop/Shared;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/liquable/nemo/util/crop/MediaClustering;->mMaxClusterSize:I

    .line 387
    return-void
.end method
