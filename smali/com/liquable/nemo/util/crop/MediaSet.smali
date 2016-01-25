.class public Lcom/liquable/nemo/util/crop/MediaSet;
.super Ljava/lang/Object;
.source "MediaSet.java"


# static fields
.field public static final TYPE_FOLDER:I = 0x1

.field public static final TYPE_SMART:I = 0x0

.field public static final TYPE_USERDEFINED:I = 0x2


# instance fields
.field private mCurrentLocation:I

.field public mDataSource:Lcom/liquable/nemo/util/crop/DataSource;

.field public mEditUri:Ljava/lang/String;

.field public mFlagForDelete:Z

.field public mHasImages:Z

.field public mHasVideos:Z

.field public mId:J

.field public mIsLocal:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/liquable/nemo/util/crop/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mItemsLookup:Lcom/liquable/nemo/util/crop/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/util/crop/LongSparseArray",
            "<",
            "Lcom/liquable/nemo/util/crop/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mItemsLookupVideo:Lcom/liquable/nemo/util/crop/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/util/crop/LongSparseArray",
            "<",
            "Lcom/liquable/nemo/util/crop/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field public mLatLongDetermined:Z

.field public mMaxAddedTimestamp:J

.field public mMaxLatLatitude:D

.field public mMaxLatLongitude:D

.field public mMaxLonLatitude:D

.field public mMaxLonLongitude:D

.field public mMaxTimestamp:J

.field public mMinAddedTimestamp:J

.field public mMinLatLatitude:D

.field public mMinLatLongitude:D

.field public mMinLonLatitude:D

.field public mMinLonLongitude:D

.field public mMinTimestamp:J

.field public mName:Ljava/lang/String;

.field public mNoCountTitleString:Ljava/lang/String;

.field private mNumExpectedItems:I

.field private mNumExpectedItemsCountAccurate:Z

.field public mNumItemsLoaded:I

.field public mPicasaAlbumId:J

.field public mReverseGeocodedLocation:Ljava/lang/String;

.field public mReverseGeocodedLocationComputed:Z

.field public mReverseGeocodedLocationRequestMade:Z

.field public mSyncPending:Z

.field public mTitleString:Ljava/lang/String;

.field public mTruncTitleString:Ljava/lang/String;

.field public mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/util/crop/MediaSet;-><init>(Lcom/liquable/nemo/util/crop/DataSource;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Lcom/liquable/nemo/util/crop/DataSource;)V
    .locals 9
    .param p1, "dataSource"    # Lcom/liquable/nemo/util/crop/DataSource;

    .prologue
    const-wide v7, 0x7fffffffffffffffL

    const-wide/16 v1, 0x0

    const-wide/16 v5, -0x1

    const/16 v4, 0x10

    const/4 v3, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-wide v7, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mMinTimestamp:J

    .line 42
    iput-wide v1, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mMaxTimestamp:J

    .line 43
    iput-wide v7, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mMinAddedTimestamp:J

    .line 44
    iput-wide v1, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mMaxAddedTimestamp:J

    .line 47
    const-wide v1, 0x4056800000000000L    # 90.0

    iput-wide v1, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mMinLatLatitude:D

    .line 50
    const-wide v1, -0x3fa9800000000000L    # -90.0

    iput-wide v1, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mMaxLatLatitude:D

    .line 54
    const-wide v1, 0x4066800000000000L    # 180.0

    iput-wide v1, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mMinLonLongitude:D

    .line 57
    const-wide v1, -0x3f99800000000000L    # -180.0

    iput-wide v1, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mMaxLonLongitude:D

    .line 64
    iput-boolean v3, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mLatLongDetermined:Z

    .line 65
    iput-boolean v3, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mReverseGeocodedLocationComputed:Z

    .line 66
    iput-boolean v3, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mReverseGeocodedLocationRequestMade:Z

    .line 72
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mEditUri:Ljava/lang/String;

    .line 73
    iput-wide v5, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mPicasaAlbumId:J

    .line 74
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mIsLocal:Z

    .line 77
    iput-boolean v3, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mSyncPending:Z

    .line 82
    iput v3, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mNumItemsLoaded:I

    .line 87
    iput v3, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mNumExpectedItems:I

    .line 88
    iput-boolean v3, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mNumExpectedItemsCountAccurate:Z

    .line 89
    iput v3, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mCurrentLocation:I

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mItems:Ljava/util/ArrayList;

    .line 97
    new-instance v1, Lcom/liquable/nemo/util/crop/LongSparseArray;

    invoke-direct {v1}, Lcom/liquable/nemo/util/crop/LongSparseArray;-><init>()V

    iput-object v1, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mItemsLookup:Lcom/liquable/nemo/util/crop/LongSparseArray;

    .line 98
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mItemsLookup:Lcom/liquable/nemo/util/crop/LongSparseArray;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/crop/LongSparseArray;->clear()V

    .line 99
    new-instance v1, Lcom/liquable/nemo/util/crop/LongSparseArray;

    invoke-direct {v1}, Lcom/liquable/nemo/util/crop/LongSparseArray;-><init>()V

    iput-object v1, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mItemsLookupVideo:Lcom/liquable/nemo/util/crop/LongSparseArray;

    .line 100
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mItemsLookupVideo:Lcom/liquable/nemo/util/crop/LongSparseArray;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/crop/LongSparseArray;->clear()V

    .line 101
    iput-object p1, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mDataSource:Lcom/liquable/nemo/util/crop/DataSource;

    .line 103
    new-instance v0, Lcom/liquable/nemo/util/crop/MediaItem;

    invoke-direct {v0}, Lcom/liquable/nemo/util/crop/MediaItem;-><init>()V

    .line 104
    .local v0, "item":Lcom/liquable/nemo/util/crop/MediaItem;
    iput-wide v5, v0, Lcom/liquable/nemo/util/crop/MediaItem;->mId:J

    .line 105
    iput-object p0, v0, Lcom/liquable/nemo/util/crop/MediaItem;->mParentMediaSet:Lcom/liquable/nemo/util/crop/MediaSet;

    .line 106
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    iput v4, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mNumExpectedItems:I

    .line 108
    return-void
.end method


# virtual methods
.method public addItem(Lcom/liquable/nemo/util/crop/MediaItem;)V
    .locals 16
    .param p1, "itemToAdd"    # Lcom/liquable/nemo/util/crop/MediaItem;

    .prologue
    .line 118
    if-nez p1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/liquable/nemo/util/crop/MediaItem;->getMediaType()I

    move-result v12

    if-nez v12, :cond_a

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mItemsLookup:Lcom/liquable/nemo/util/crop/LongSparseArray;

    .line 123
    .local v10, "lookup":Lcom/liquable/nemo/util/crop/LongSparseArray;, "Lcom/liquable/nemo/util/crop/LongSparseArray<Lcom/liquable/nemo/util/crop/MediaItem;>;"
    :goto_1
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/liquable/nemo/util/crop/MediaItem;->mId:J

    invoke-virtual {v10, v12, v13}, Lcom/liquable/nemo/util/crop/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/liquable/nemo/util/crop/MediaItem;

    .line 124
    .local v11, "lookupItem":Lcom/liquable/nemo/util/crop/MediaItem;
    if-eqz v11, :cond_2

    iget-object v12, v11, Lcom/liquable/nemo/util/crop/MediaItem;->mFilePath:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/liquable/nemo/util/crop/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 125
    const/4 v11, 0x0

    .line 127
    :cond_2
    if-nez v11, :cond_b

    move-object/from16 v5, p1

    .line 128
    .local v5, "item":Lcom/liquable/nemo/util/crop/MediaItem;
    :goto_2
    const/4 v12, 0x0

    iput-boolean v12, v5, Lcom/liquable/nemo/util/crop/MediaItem;->mFlagForDelete:Z

    .line 129
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-nez v12, :cond_c

    .line 130
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    :goto_3
    iget-wide v12, v5, Lcom/liquable/nemo/util/crop/MediaItem;->mId:J

    const-wide/16 v14, -0x1

    cmp-long v12, v12, v14

    if-eqz v12, :cond_4

    .line 141
    if-nez v11, :cond_3

    .line 142
    iget-wide v12, v5, Lcom/liquable/nemo/util/crop/MediaItem;->mId:J

    invoke-virtual {v10, v12, v13, v5}, Lcom/liquable/nemo/util/crop/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 144
    :cond_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mNumItemsLoaded:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mNumItemsLoaded:I

    .line 145
    move-object/from16 v0, p0

    iget v12, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mCurrentLocation:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mCurrentLocation:I

    .line 147
    :cond_4
    invoke-virtual {v5}, Lcom/liquable/nemo/util/crop/MediaItem;->isDateTakenValid()Z

    move-result v12

    if-eqz v12, :cond_f

    .line 148
    iget-wide v3, v5, Lcom/liquable/nemo/util/crop/MediaItem;->mDateTakenInMs:J

    .line 149
    .local v3, "dateTaken":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mMinTimestamp:J

    cmp-long v12, v3, v12

    if-gez v12, :cond_5

    .line 150
    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mMinTimestamp:J

    .line 152
    :cond_5
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mMaxTimestamp:J

    cmp-long v12, v3, v12

    if-lez v12, :cond_6

    .line 153
    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mMaxTimestamp:J

    .line 167
    .end local v3    # "dateTaken":J
    :cond_6
    :goto_4
    invoke-virtual {v5}, Lcom/liquable/nemo/util/crop/MediaItem;->isLatLongValid()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 170
    iget-wide v6, v5, Lcom/liquable/nemo/util/crop/MediaItem;->mLatitude:D

    .line 171
    .local v6, "itemLatitude":D
    iget-wide v8, v5, Lcom/liquable/nemo/util/crop/MediaItem;->mLongitude:D

    .line 172
    .local v8, "itemLongitude":D
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mMinLatLatitude:D

    cmpl-double v12, v12, v6

    if-lez v12, :cond_7

    .line 173
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mMinLatLatitude:D

    .line 174
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mMinLatLongitude:D

    .line 175
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mLatLongDetermined:Z

    .line 177
    :cond_7
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mMaxLatLatitude:D

    cmpg-double v12, v12, v6

    if-gez v12, :cond_8

    .line 178
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mMaxLatLatitude:D

    .line 179
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mMaxLatLongitude:D

    .line 180
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mLatLongDetermined:Z

    .line 182
    :cond_8
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mMinLonLongitude:D

    cmpl-double v12, v12, v8

    if-lez v12, :cond_9

    .line 183
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mMinLonLatitude:D

    .line 184
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mMinLonLongitude:D

    .line 185
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mLatLongDetermined:Z

    .line 187
    :cond_9
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mMaxLonLongitude:D

    cmpg-double v12, v12, v8

    if-gez v12, :cond_0

    .line 188
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mMaxLonLatitude:D

    .line 189
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mMaxLonLongitude:D

    .line 190
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mLatLongDetermined:Z

    goto/16 :goto_0

    .line 121
    .end local v5    # "item":Lcom/liquable/nemo/util/crop/MediaItem;
    .end local v6    # "itemLatitude":D
    .end local v8    # "itemLongitude":D
    .end local v10    # "lookup":Lcom/liquable/nemo/util/crop/LongSparseArray;, "Lcom/liquable/nemo/util/crop/LongSparseArray<Lcom/liquable/nemo/util/crop/MediaItem;>;"
    .end local v11    # "lookupItem":Lcom/liquable/nemo/util/crop/MediaItem;
    :cond_a
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mItemsLookupVideo:Lcom/liquable/nemo/util/crop/LongSparseArray;

    goto/16 :goto_1

    .restart local v10    # "lookup":Lcom/liquable/nemo/util/crop/LongSparseArray;, "Lcom/liquable/nemo/util/crop/LongSparseArray<Lcom/liquable/nemo/util/crop/MediaItem;>;"
    .restart local v11    # "lookupItem":Lcom/liquable/nemo/util/crop/MediaItem;
    :cond_b
    move-object v5, v11

    .line 127
    goto/16 :goto_2

    .line 131
    .restart local v5    # "item":Lcom/liquable/nemo/util/crop/MediaItem;
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mItems:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/liquable/nemo/util/crop/MediaItem;

    iget-wide v12, v12, Lcom/liquable/nemo/util/crop/MediaItem;->mId:J

    const-wide/16 v14, -0x1

    cmp-long v12, v12, v14

    if-nez v12, :cond_d

    .line 132
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mItems:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 134
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mCurrentLocation:I

    if-le v12, v13, :cond_e

    .line 135
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mCurrentLocation:I

    invoke-virtual {v12, v13, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 137
    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mCurrentLocation:I

    invoke-virtual {v12, v13, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 155
    :cond_f
    invoke-virtual {v5}, Lcom/liquable/nemo/util/crop/MediaItem;->isDateAddedValid()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 156
    iget-wide v12, v5, Lcom/liquable/nemo/util/crop/MediaItem;->mDateAddedInSec:J

    const-wide/16 v14, 0x3e8

    mul-long v1, v12, v14

    .line 157
    .local v1, "dateAdded":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mMinAddedTimestamp:J

    cmp-long v12, v1, v12

    if-gez v12, :cond_10

    .line 158
    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mMinAddedTimestamp:J

    .line 160
    :cond_10
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mMaxAddedTimestamp:J

    cmp-long v12, v1, v12

    if-lez v12, :cond_6

    .line 161
    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mMaxAddedTimestamp:J

    goto/16 :goto_4
.end method

.method public areAddedTimestampsAvailable()Z
    .locals 4

    .prologue
    .line 198
    iget-wide v0, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mMinAddedTimestamp:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mMaxAddedTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public areTimestampsAvailable()Z
    .locals 4

    .prologue
    .line 205
    iget-wide v0, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mMinTimestamp:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mMaxTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkForDeletedItems()V
    .locals 7

    .prologue
    .line 209
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mItems:Ljava/util/ArrayList;

    .line 210
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaItem;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v3, "itemsToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaItem;>;"
    monitor-enter v2

    .line 212
    :try_start_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 213
    .local v4, "numItems":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 214
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/util/crop/MediaItem;

    .line 215
    .local v1, "item":Lcom/liquable/nemo/util/crop/MediaItem;
    iget-boolean v6, v1, Lcom/liquable/nemo/util/crop/MediaItem;->mFlagForDelete:Z

    if-eqz v6, :cond_0

    .line 216
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    .end local v1    # "item":Lcom/liquable/nemo/util/crop/MediaItem;
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 221
    .local v5, "numItemsToDelete":I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_2

    .line 222
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/liquable/nemo/util/crop/MediaItem;

    invoke-virtual {p0, v6}, Lcom/liquable/nemo/util/crop/MediaSet;->removeItem(Lcom/liquable/nemo/util/crop/MediaItem;)Z

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 219
    .end local v0    # "i":I
    .end local v4    # "numItems":I
    .end local v5    # "numItemsToDelete":I
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 224
    .restart local v0    # "i":I
    .restart local v4    # "numItems":I
    .restart local v5    # "numItemsToDelete":I
    :cond_2
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 227
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 228
    new-instance v0, Lcom/liquable/nemo/util/crop/MediaItem;

    invoke-direct {v0}, Lcom/liquable/nemo/util/crop/MediaItem;-><init>()V

    .line 229
    .local v0, "item":Lcom/liquable/nemo/util/crop/MediaItem;
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/liquable/nemo/util/crop/MediaItem;->mId:J

    .line 230
    iput-object p0, v0, Lcom/liquable/nemo/util/crop/MediaItem;->mParentMediaSet:Lcom/liquable/nemo/util/crop/MediaSet;

    .line 231
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    const/16 v1, 0x10

    iput v1, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mNumExpectedItems:I

    .line 233
    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/MediaSet;->refresh()V

    .line 234
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mItemsLookup:Lcom/liquable/nemo/util/crop/LongSparseArray;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/crop/LongSparseArray;->clear()V

    .line 235
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mItemsLookupVideo:Lcom/liquable/nemo/util/crop/LongSparseArray;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/crop/LongSparseArray;->clear()V

    .line 236
    return-void
.end method

.method public generateTitle(Z)V
    .locals 6
    .param p1, "truncateTitle"    # Z

    .prologue
    .line 242
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mName:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 243
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mName:Ljava/lang/String;

    .line 245
    :cond_0
    iget-boolean v2, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mNumExpectedItemsCountAccurate:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mNumExpectedItems:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, "size":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mTitleString:Ljava/lang/String;

    .line 247
    if-eqz p1, :cond_3

    .line 248
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 249
    .local v0, "length":I
    const/16 v2, 0x10

    if-le v0, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mName:Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v5, 0xc

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mName:Ljava/lang/String;

    add-int/lit8 v4, v0, -0x4

    .line 250
    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mTruncTitleString:Ljava/lang/String;

    .line 252
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mName:Ljava/lang/String;

    iput-object v2, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mNoCountTitleString:Ljava/lang/String;

    .line 256
    .end local v0    # "length":I
    :goto_2
    return-void

    .line 245
    .end local v1    # "size":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, ""

    goto :goto_0

    .line 250
    .restart local v0    # "length":I
    .restart local v1    # "size":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 254
    .end local v0    # "length":I
    :cond_3
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mTitleString:Ljava/lang/String;

    iput-object v2, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mTruncTitleString:Ljava/lang/String;

    goto :goto_2
.end method

.method public getItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/liquable/nemo/util/crop/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNumExpectedItems()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mNumExpectedItems:I

    return v0
.end method

.method public getNumItems()I
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isPicassaAlbum()Z
    .locals 4

    .prologue
    .line 278
    iget-wide v0, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mPicasaAlbumId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPicassaSet()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 290
    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/MediaSet;->isPicassaAlbum()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 299
    :goto_0
    return v2

    .line 293
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 294
    .local v1, "numItems":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 295
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/util/crop/MediaItem;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/crop/MediaItem;->isPicassaItem()Z

    move-result v2

    if-nez v2, :cond_1

    .line 296
    const/4 v2, 0x0

    goto :goto_0

    .line 294
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v2, v3

    .line 299
    goto :goto_0
.end method

.method public isTruncated()Z
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mTitleString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mTitleString:Ljava/lang/String;

    iget-object v1, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mTruncTitleString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lookupContainsItem(Lcom/liquable/nemo/util/crop/MediaItem;)Z
    .locals 4
    .param p1, "item"    # Lcom/liquable/nemo/util/crop/MediaItem;

    .prologue
    .line 313
    invoke-virtual {p1}, Lcom/liquable/nemo/util/crop/MediaItem;->getMediaType()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mItemsLookup:Lcom/liquable/nemo/util/crop/LongSparseArray;

    .line 315
    .local v1, "lookupTable":Lcom/liquable/nemo/util/crop/LongSparseArray;, "Lcom/liquable/nemo/util/crop/LongSparseArray<Lcom/liquable/nemo/util/crop/MediaItem;>;"
    :goto_0
    iget-wide v2, p1, Lcom/liquable/nemo/util/crop/MediaItem;->mId:J

    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/util/crop/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/util/crop/MediaItem;

    .line 316
    .local v0, "lookUp":Lcom/liquable/nemo/util/crop/MediaItem;
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/liquable/nemo/util/crop/MediaItem;->mFilePath:Ljava/lang/String;

    iget-object v3, p1, Lcom/liquable/nemo/util/crop/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 317
    const/4 v2, 0x1

    .line 319
    :goto_1
    return v2

    .line 313
    .end local v0    # "lookUp":Lcom/liquable/nemo/util/crop/MediaItem;
    .end local v1    # "lookupTable":Lcom/liquable/nemo/util/crop/LongSparseArray;, "Lcom/liquable/nemo/util/crop/LongSparseArray<Lcom/liquable/nemo/util/crop/MediaItem;>;"
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mItemsLookupVideo:Lcom/liquable/nemo/util/crop/LongSparseArray;

    goto :goto_0

    .line 319
    .restart local v0    # "lookUp":Lcom/liquable/nemo/util/crop/MediaItem;
    .restart local v1    # "lookupTable":Lcom/liquable/nemo/util/crop/LongSparseArray;, "Lcom/liquable/nemo/util/crop/LongSparseArray<Lcom/liquable/nemo/util/crop/MediaItem;>;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public refresh()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 324
    iput v4, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mNumItemsLoaded:I

    .line 325
    iput v4, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mCurrentLocation:I

    .line 326
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mItems:Ljava/util/ArrayList;

    .line 327
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaItem;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 328
    .local v3, "numItems":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 329
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/util/crop/MediaItem;

    .line 330
    .local v1, "item":Lcom/liquable/nemo/util/crop/MediaItem;
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/liquable/nemo/util/crop/MediaItem;->mFlagForDelete:Z

    .line 328
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 332
    .end local v1    # "item":Lcom/liquable/nemo/util/crop/MediaItem;
    :cond_0
    return-void
.end method

.method public removeDuplicate(Lcom/liquable/nemo/util/crop/MediaItem;)V
    .locals 6
    .param p1, "itemToRemove"    # Lcom/liquable/nemo/util/crop/MediaItem;

    .prologue
    .line 335
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mItems:Ljava/util/ArrayList;

    monitor-enter v5

    .line 336
    :try_start_0
    iget-object v4, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 337
    .local v3, "numItems":I
    const/4 v0, 0x0

    .line 338
    .local v0, "foundItem":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 339
    iget-object v4, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/util/crop/MediaItem;

    .line 340
    .local v2, "item":Lcom/liquable/nemo/util/crop/MediaItem;
    if-ne v2, p1, :cond_0

    .line 341
    if-nez v0, :cond_1

    .line 342
    const/4 v0, 0x1

    .line 338
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 344
    :cond_1
    iget-object v4, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 345
    iget v4, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mNumExpectedItems:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mNumExpectedItems:I

    .line 346
    iget v4, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mNumItemsLoaded:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mNumItemsLoaded:I

    .line 347
    iget v4, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mCurrentLocation:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mCurrentLocation:I

    .line 352
    .end local v2    # "item":Lcom/liquable/nemo/util/crop/MediaItem;
    :cond_2
    monitor-exit v5

    .line 353
    return-void

    .line 352
    .end local v0    # "foundItem":Z
    .end local v1    # "i":I
    .end local v3    # "numItems":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public removeItem(Lcom/liquable/nemo/util/crop/MediaItem;)Z
    .locals 5
    .param p1, "itemToRemove"    # Lcom/liquable/nemo/util/crop/MediaItem;

    .prologue
    .line 362
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mItems:Ljava/util/ArrayList;

    monitor-enter v2

    .line 363
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 364
    iget v1, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mNumExpectedItems:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mNumExpectedItems:I

    .line 365
    iget v1, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mNumItemsLoaded:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mNumItemsLoaded:I

    .line 366
    iget v1, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mCurrentLocation:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mCurrentLocation:I

    .line 367
    invoke-virtual {p1}, Lcom/liquable/nemo/util/crop/MediaItem;->getMediaType()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mItemsLookup:Lcom/liquable/nemo/util/crop/LongSparseArray;

    .line 369
    .local v0, "lookup":Lcom/liquable/nemo/util/crop/LongSparseArray;, "Lcom/liquable/nemo/util/crop/LongSparseArray<Lcom/liquable/nemo/util/crop/MediaItem;>;"
    :goto_0
    iget-wide v3, p1, Lcom/liquable/nemo/util/crop/MediaItem;->mId:J

    invoke-virtual {v0, v3, v4}, Lcom/liquable/nemo/util/crop/LongSparseArray;->remove(J)V

    .line 370
    const/4 v1, 0x1

    monitor-exit v2

    .line 372
    .end local v0    # "lookup":Lcom/liquable/nemo/util/crop/LongSparseArray;, "Lcom/liquable/nemo/util/crop/LongSparseArray<Lcom/liquable/nemo/util/crop/MediaItem;>;"
    :goto_1
    return v1

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mItemsLookupVideo:Lcom/liquable/nemo/util/crop/LongSparseArray;

    goto :goto_0

    .line 372
    :cond_1
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_1

    .line 373
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setContainsValidItems()Z
    .locals 1

    .prologue
    .line 377
    iget v0, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mNumExpectedItems:I

    if-nez v0, :cond_0

    .line 378
    const/4 v0, 0x0

    .line 380
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setNumExpectedItems(I)V
    .locals 1
    .param p1, "numExpectedItems"    # I

    .prologue
    .line 384
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 385
    iput p1, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mNumExpectedItems:I

    .line 386
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mNumExpectedItemsCountAccurate:Z

    .line 387
    return-void
.end method

.method public updateNumExpectedItems()V
    .locals 1

    .prologue
    .line 390
    iget v0, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mNumItemsLoaded:I

    iput v0, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mNumExpectedItems:I

    .line 391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mNumExpectedItemsCountAccurate:Z

    .line 392
    return-void
.end method
