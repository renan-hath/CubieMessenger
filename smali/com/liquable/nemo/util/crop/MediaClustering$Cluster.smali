.class public final Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;
.super Lcom/liquable/nemo/util/crop/MediaSet;
.source "MediaClustering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/util/crop/MediaClustering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Cluster"
.end annotation


# static fields
.field private static final MMDDYY_FORMAT:Ljava/lang/String; = "MMddyy"


# instance fields
.field private mClusterChanged:Z

.field private mGeographicallySeparatedFromPrevCluster:Z

.field private mIsPicassaAlbum:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isPicassaAlbum"    # Z

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Lcom/liquable/nemo/util/crop/MediaSet;-><init>()V

    .line 35
    iput-boolean v0, p0, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->mGeographicallySeparatedFromPrevCluster:Z

    .line 36
    iput-boolean v0, p0, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->mClusterChanged:Z

    .line 37
    iput-boolean v0, p0, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->mIsPicassaAlbum:Z

    .line 41
    iput-boolean p1, p0, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->mIsPicassaAlbum:Z

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;)Z
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->mGeographicallySeparatedFromPrevCluster:Z

    return v0
.end method

.method static synthetic access$002(Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->mGeographicallySeparatedFromPrevCluster:Z

    return p1
.end method


# virtual methods
.method public addItem(Lcom/liquable/nemo/util/crop/MediaItem;)V
    .locals 1
    .param p1, "item"    # Lcom/liquable/nemo/util/crop/MediaItem;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/liquable/nemo/util/crop/MediaSet;->addItem(Lcom/liquable/nemo/util/crop/MediaItem;)V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->mClusterChanged:Z

    .line 48
    return-void
.end method

.method public generateCaption(Landroid/content/Context;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->mClusterChanged:Z

    if-eqz v1, :cond_3

    .line 52
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 54
    .local v17, "resources":Landroid/content/res/Resources;
    const-wide/16 v2, -0x1

    .line 55
    .local v2, "minTimestamp":J
    const-wide/16 v4, -0x1

    .line 56
    .local v4, "maxTimestamp":J
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->areTimestampsAvailable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 57
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->mMinTimestamp:J

    .line 58
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->mMaxTimestamp:J

    .line 64
    :cond_0
    :goto_0
    const-wide/16 v9, -0x1

    cmp-long v1, v2, v9

    if-eqz v1, :cond_6

    .line 65
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->mIsPicassaAlbum:Z

    if-eqz v1, :cond_1

    .line 66
    sget-object v1, Lcom/liquable/nemo/util/crop/App;->CURRENT_TIME_ZONE:Ljava/util/TimeZone;

    invoke-virtual {v1, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    int-to-long v9, v1

    sub-long/2addr v2, v9

    .line 67
    sget-object v1, Lcom/liquable/nemo/util/crop/App;->CURRENT_TIME_ZONE:Ljava/util/TimeZone;

    invoke-virtual {v1, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    int-to-long v9, v1

    sub-long/2addr v4, v9

    .line 69
    :cond_1
    const-string/jumbo v1, "MMddyy"

    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    .line 70
    .local v16, "minDay":Ljava/lang/String;
    const-string/jumbo v1, "MMddyy"

    invoke-static {v1, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    .line 72
    .local v15, "maxDay":Ljava/lang/String;
    const/4 v1, 0x4

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x4

    invoke-virtual {v15, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 75
    const/high16 v6, 0x80000

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->mName:Ljava/lang/String;

    .line 83
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    const v14, 0x10010

    .line 87
    .local v14, "flags":I
    const v1, 0x10010

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v12

    .line 90
    .local v12, "dateRangeWithOptionalYear":Ljava/lang/String;
    const v1, 0x10014

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v13

    .line 93
    .local v13, "dateRangeWithYear":Ljava/lang/String;
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 98
    add-long v9, v2, v4

    const-wide/16 v18, 0x2

    div-long v7, v9, v18

    .line 99
    .local v7, "midTimestamp":J
    const v11, 0x10011

    move-object/from16 v6, p1

    move-wide v9, v7

    invoke-static/range {v6 .. v11}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->mName:Ljava/lang/String;

    .line 116
    .end local v7    # "midTimestamp":J
    .end local v12    # "dateRangeWithOptionalYear":Ljava/lang/String;
    .end local v13    # "dateRangeWithYear":Ljava/lang/String;
    .end local v14    # "flags":I
    .end local v15    # "maxDay":Ljava/lang/String;
    .end local v16    # "minDay":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->updateNumExpectedItems()V

    .line 117
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->generateTitle(Z)V

    .line 118
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->mClusterChanged:Z

    .line 120
    .end local v2    # "minTimestamp":J
    .end local v4    # "maxTimestamp":J
    .end local v17    # "resources":Landroid/content/res/Resources;
    :cond_3
    return-void

    .line 59
    .restart local v2    # "minTimestamp":J
    .restart local v4    # "maxTimestamp":J
    .restart local v17    # "resources":Landroid/content/res/Resources;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->areAddedTimestampsAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->mMinAddedTimestamp:J

    .line 61
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->mMaxAddedTimestamp:J

    goto/16 :goto_0

    .line 108
    .restart local v15    # "maxDay":Ljava/lang/String;
    .restart local v16    # "minDay":Ljava/lang/String;
    :cond_5
    const v14, 0x10030

    .line 110
    .restart local v14    # "flags":I
    const v6, 0x10030

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->mName:Ljava/lang/String;

    goto :goto_1

    .line 114
    .end local v14    # "flags":I
    .end local v15    # "maxDay":Ljava/lang/String;
    .end local v16    # "minDay":Ljava/lang/String;
    :cond_6
    const-string/jumbo v1, "unknown"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->mName:Ljava/lang/String;

    goto :goto_1
.end method

.method public getLastItem()Lcom/liquable/nemo/util/crop/MediaItem;
    .locals 2

    .prologue
    .line 123
    invoke-super {p0}, Lcom/liquable/nemo/util/crop/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 124
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaItem;>;"
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->mNumItemsLoaded:I

    if-nez v1, :cond_1

    .line 125
    :cond_0
    const/4 v1, 0x0

    .line 127
    :goto_0
    return-object v1

    :cond_1
    iget v1, p0, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->mNumItemsLoaded:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/util/crop/MediaItem;

    goto :goto_0
.end method

.method public removeItem(Lcom/liquable/nemo/util/crop/MediaItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/liquable/nemo/util/crop/MediaItem;

    .prologue
    const/4 v0, 0x1

    .line 133
    invoke-super {p0, p1}, Lcom/liquable/nemo/util/crop/MediaSet;->removeItem(Lcom/liquable/nemo/util/crop/MediaItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    iput-boolean v0, p0, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->mClusterChanged:Z

    .line 137
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
