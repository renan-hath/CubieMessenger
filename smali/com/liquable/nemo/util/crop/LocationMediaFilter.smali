.class public Lcom/liquable/nemo/util/crop/LocationMediaFilter;
.super Lcom/liquable/nemo/util/crop/MediaFilter;
.source "LocationMediaFilter.java"


# static fields
.field public static final EARTH_RADIUS_METERS:I = 0x615299

.field public static final LAT_MAX:I = 0x5a

.field public static final LAT_MIN:I = -0x5a

.field public static final LON_MAX:I = 0xb4

.field public static final LON_MIN:I = -0xb4


# instance fields
.field private final mCenterLat:D

.field private final mCenterLon:D

.field private final mRadius:D


# direct methods
.method constructor <init>(DDD)V
    .locals 0
    .param p1, "centerLatitude"    # D
    .param p3, "centerLongitude"    # D
    .param p5, "thresholdRadius"    # D

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/liquable/nemo/util/crop/MediaFilter;-><init>()V

    .line 82
    iput-wide p1, p0, Lcom/liquable/nemo/util/crop/LocationMediaFilter;->mCenterLat:D

    .line 83
    iput-wide p3, p0, Lcom/liquable/nemo/util/crop/LocationMediaFilter;->mCenterLon:D

    .line 84
    iput-wide p5, p0, Lcom/liquable/nemo/util/crop/LocationMediaFilter;->mRadius:D

    .line 85
    return-void
.end method

.method constructor <init>(DDDD)V
    .locals 2
    .param p1, "latitude1"    # D
    .param p3, "longitude1"    # D
    .param p5, "latitude2"    # D
    .param p7, "longitude2"    # D

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/liquable/nemo/util/crop/MediaFilter;-><init>()V

    .line 91
    invoke-static {p1, p2, p5, p6}, Lcom/liquable/nemo/util/crop/LocationMediaFilter;->centerLat(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/liquable/nemo/util/crop/LocationMediaFilter;->mCenterLat:D

    .line 92
    invoke-static {p3, p4, p7, p8}, Lcom/liquable/nemo/util/crop/LocationMediaFilter;->centerLon(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/liquable/nemo/util/crop/LocationMediaFilter;->mCenterLon:D

    .line 93
    invoke-static/range {p1 .. p8}, Lcom/liquable/nemo/util/crop/LocationMediaFilter;->distanceBetween(DDDD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/liquable/nemo/util/crop/LocationMediaFilter;->mRadius:D

    .line 94
    return-void
.end method

.method public static final centerLat(DD)D
    .locals 2
    .param p0, "lat1"    # D
    .param p2, "lat2"    # D

    .prologue
    .line 19
    const/16 v0, 0x5a

    invoke-static {p0, p1, p2, p3, v0}, Lcom/liquable/nemo/util/crop/LocationMediaFilter;->centerOfAngles(DDI)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final centerLon(DD)D
    .locals 2
    .param p0, "lon1"    # D
    .param p2, "lon2"    # D

    .prologue
    .line 23
    const/16 v0, 0xb4

    invoke-static {p0, p1, p2, p3, v0}, Lcom/liquable/nemo/util/crop/LocationMediaFilter;->centerOfAngles(DDI)D

    move-result-wide v0

    return-wide v0
.end method

.method private static final centerOfAngles(DDI)D
    .locals 7
    .param p0, "ang1"    # D
    .param p2, "ang2"    # D
    .param p4, "wrapAroundThreshold"    # I

    .prologue
    .line 29
    const/4 v2, 0x0

    .line 30
    .local v2, "wrapAround":Z
    sub-double v3, p0, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    int-to-double v5, p4

    cmpl-double v3, v3, v5

    if-lez v3, :cond_0

    .line 31
    const/4 v2, 0x1

    .line 33
    :cond_0
    add-double v3, p0, p2

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double v0, v3, v5

    .line 34
    .local v0, "center":D
    if-eqz v2, :cond_1

    .line 35
    int-to-double v3, p4

    add-double/2addr v0, v3

    .line 36
    int-to-double v3, p4

    rem-double/2addr v0, v3

    .line 38
    :cond_1
    return-wide v0
.end method

.method public static distanceBetween(DDDD)D
    .locals 14
    .param p0, "lat1"    # D
    .param p2, "lon1"    # D
    .param p4, "lat2"    # D
    .param p6, "lon2"    # D

    .prologue
    .line 45
    sub-double v8, p4, p0

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 46
    .local v4, "dLat":D
    sub-double v8, p6, p2

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 47
    .local v6, "dLon":D
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double v8, v4, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double v10, v4, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    .line 48
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    .line 49
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double v12, v6, v12

    .line 50
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double v12, v6, v12

    .line 51
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double v0, v8, v10

    .line 52
    .local v0, "a":D
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v12, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    mul-double v2, v8, v10

    .line 53
    .local v2, "c":D
    const-wide v8, 0x415854a640000000L    # 6378137.0

    mul-double/2addr v8, v2

    return-wide v8
.end method

.method public static final toKm(D)D
    .locals 2
    .param p0, "meter"    # D

    .prologue
    .line 57
    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double v0, p0, v0

    return-wide v0
.end method

.method public static final toMile(D)D
    .locals 2
    .param p0, "meter"    # D

    .prologue
    .line 61
    const-wide v0, 0x4099240000000000L    # 1609.0

    div-double v0, p0, v0

    return-wide v0
.end method


# virtual methods
.method public pass(Lcom/liquable/nemo/util/crop/MediaItem;)Z
    .locals 10
    .param p1, "item"    # Lcom/liquable/nemo/util/crop/MediaItem;

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/liquable/nemo/util/crop/LocationMediaFilter;->mCenterLat:D

    iget-wide v2, p0, Lcom/liquable/nemo/util/crop/LocationMediaFilter;->mCenterLon:D

    iget-wide v4, p1, Lcom/liquable/nemo/util/crop/MediaItem;->mLatitude:D

    iget-wide v6, p1, Lcom/liquable/nemo/util/crop/MediaItem;->mLongitude:D

    invoke-static/range {v0 .. v7}, Lcom/liquable/nemo/util/crop/LocationMediaFilter;->distanceBetween(DDDD)D

    move-result-wide v8

    .line 99
    .local v8, "radius":D
    iget-wide v0, p0, Lcom/liquable/nemo/util/crop/LocationMediaFilter;->mRadius:D

    cmpg-double v0, v8, v0

    if-gtz v0, :cond_0

    .line 100
    const/4 v0, 0x1

    .line 102
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
