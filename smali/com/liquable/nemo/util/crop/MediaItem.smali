.class public final Lcom/liquable/nemo/util/crop/MediaItem;
.super Ljava/lang/Object;
.source "MediaItem.java"


# static fields
.field public static final CLUSTERED:I = 0x1

.field public static final ID:Ljava/lang/String;

.field public static final MAX_VALID_DATE_IN_MS:J = 0x1dd43fc2c00L

.field public static final MAX_VALID_DATE_IN_SEC:J = 0x7a2e1380L

.field public static final MEDIA_TYPE_IMAGE:I = 0x0

.field public static final MEDIA_TYPE_VIDEO:I = 0x1

.field public static final MIN_VALID_DATE_IN_MS:J = 0x24b675dc00L

.field public static final MIN_VALID_DATE_IN_SEC:J = 0x9660180L

.field public static final NOT_CLUSTERED:I = 0x0

.field public static final NOT_PRIMED:I = 0x0

.field public static final PRIMED:I = 0x2

.field public static final STARTED_PRIMING:I = 0x1

.field private static final VIDEO:Ljava/lang/String; = "video/"


# instance fields
.field public mCaption:Ljava/lang/String;

.field public mClusteringState:I

.field public mContentUri:Ljava/lang/String;

.field public mDateAddedInSec:J

.field public mDateModifiedInSec:J

.field public mDateTakenInMs:J

.field public mDescription:Ljava/lang/String;

.field private mDisplayMimeType:Ljava/lang/String;

.field public mDurationInSec:I

.field public mEditUri:Ljava/lang/String;

.field public mFilePath:Ljava/lang/String;

.field public mFlagForDelete:Z

.field public mGuid:Ljava/lang/String;

.field public mId:J

.field public mLatitude:D

.field public mLocaltime:Ljava/util/Date;

.field public mLongitude:D

.field private mMediaType:I

.field public mMicroThumbnailUri:Ljava/lang/String;

.field public mMimeType:Ljava/lang/String;

.field public mParentMediaSet:Lcom/liquable/nemo/util/crop/MediaSet;

.field public mPrimingState:I

.field public mReverseGeocodedLocation:Ljava/lang/String;

.field public mRole:Ljava/lang/String;

.field public mRotation:F

.field public mScreennailUri:Ljava/lang/String;

.field public mThumbnailFocusX:I

.field public mThumbnailFocusY:I

.field public mThumbnailId:J

.field public mThumbnailUri:Ljava/lang/String;

.field public mTriedRetrievingExifDateTaken:Z

.field public mWeblink:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "id"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/util/crop/MediaItem;->ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mMediaType:I

    .line 55
    iput-wide v2, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mDateTakenInMs:J

    .line 57
    iput-boolean v1, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mTriedRetrievingExifDateTaken:Z

    .line 58
    iput-wide v2, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mDateModifiedInSec:J

    .line 59
    iput-wide v2, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mDateAddedInSec:J

    .line 62
    iput v1, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mPrimingState:I

    .line 67
    iput v1, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mClusteringState:I

    .line 85
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mCaption:Ljava/lang/String;

    .line 86
    return-void
.end method


# virtual methods
.method public getDisplayMimeType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 89
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mDisplayMimeType:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mMimeType:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mMimeType:Ljava/lang/String;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 91
    .local v0, "slashPos":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 92
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mMimeType:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mDisplayMimeType:Ljava/lang/String;

    .line 97
    .end local v0    # "slashPos":I
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mDisplayMimeType:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string/jumbo v1, ""

    :goto_1
    return-object v1

    .line 94
    .restart local v0    # "slashPos":I
    :cond_1
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mDisplayMimeType:Ljava/lang/String;

    goto :goto_0

    .line 97
    .end local v0    # "slashPos":I
    :cond_2
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mDisplayMimeType:Ljava/lang/String;

    goto :goto_1
.end method

.method public getMediaType()I
    .locals 2

    .prologue
    .line 101
    iget v0, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mMediaType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mMimeType:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mMimeType:Ljava/lang/String;

    const-string/jumbo v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mMediaType:I

    .line 106
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mMediaType:I

    return v0

    .line 103
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getReverseGeocodedLocation(Lcom/liquable/nemo/util/crop/ReverseGeocoder;)Ljava/lang/String;
    .locals 6
    .param p1, "reverseGeocoder"    # Lcom/liquable/nemo/util/crop/ReverseGeocoder;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mReverseGeocodedLocation:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mReverseGeocodedLocation:Ljava/lang/String;

    .line 118
    :goto_0
    return-object v0

    .line 113
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/MediaItem;->isLatLongValid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 114
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 117
    :cond_2
    iget-wide v1, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mLatitude:D

    iget-wide v3, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mLongitude:D

    const/4 v5, 0x2

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/liquable/nemo/util/crop/ReverseGeocoder;->getReverseGeocodedLocation(DDI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mReverseGeocodedLocation:Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mReverseGeocodedLocation:Ljava/lang/String;

    goto :goto_0
.end method

.method public isDateAddedValid()Z
    .locals 4

    .prologue
    .line 122
    iget-wide v0, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mDateAddedInSec:J

    const-wide/32 v2, 0x9660180

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mDateAddedInSec:J

    const-wide/32 v2, 0x7a2e1380

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDateModifiedValid()Z
    .locals 4

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mDateModifiedInSec:J

    const-wide/32 v2, 0x9660180

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mDateModifiedInSec:J

    const-wide/32 v2, 0x7a2e1380

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDateTakenValid()Z
    .locals 4

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mDateTakenInMs:J

    const-wide v2, 0x24b675dc00L

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mDateTakenInMs:J

    const-wide v2, 0x1dd43fc2c00L

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLatLongValid()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 135
    iget-wide v0, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mLatitude:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mLongitude:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPicassaItem()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mParentMediaSet:Lcom/liquable/nemo/util/crop/MediaSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mParentMediaSet:Lcom/liquable/nemo/util/crop/MediaSet;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/crop/MediaSet;->isPicassaAlbum()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWellFormed()Z
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public setDisplayMimeType(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayMimeType"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mDisplayMimeType:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setMediaType(I)V
    .locals 0
    .param p1, "mediaType"    # I

    .prologue
    .line 151
    iput p1, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mMediaType:I

    .line 152
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mCaption:Ljava/lang/String;

    return-object v0
.end method
