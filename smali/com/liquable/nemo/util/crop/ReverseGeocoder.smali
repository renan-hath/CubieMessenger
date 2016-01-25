.class public final Lcom/liquable/nemo/util/crop/ReverseGeocoder;
.super Ljava/lang/Thread;
.source "ReverseGeocoder.java"


# static fields
.field private static LOCATION_CRITERIA:Landroid/location/Criteria; = null

.field private static final MAX_COUNTRY_NAME_LENGTH:I = 0x8

.field private static final MAX_LOCALITY_MILE_RANGE:I = 0x14

.field private static final TAG:Ljava/lang/String; = "ReverseGeocoder"

.field private static sCurrentAddress:Landroid/location/Address;

.field private static final sGeoCache:Lcom/liquable/nemo/util/crop/DiskCache;

.field private static final sQueue:Lcom/liquable/nemo/util/crop/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/util/crop/Deque",
            "<",
            "Lcom/liquable/nemo/util/crop/MediaSet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mGeocoder:Landroid/location/Geocoder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/liquable/nemo/util/crop/Deque;

    invoke-direct {v0}, Lcom/liquable/nemo/util/crop/Deque;-><init>()V

    sput-object v0, Lcom/liquable/nemo/util/crop/ReverseGeocoder;->sQueue:Lcom/liquable/nemo/util/crop/Deque;

    .line 42
    new-instance v0, Lcom/liquable/nemo/util/crop/DiskCache;

    const-string/jumbo v1, "geocoder-cache"

    invoke-direct {v0, v1}, Lcom/liquable/nemo/util/crop/DiskCache;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/util/crop/ReverseGeocoder;->sGeoCache:Lcom/liquable/nemo/util/crop/DiskCache;

    .line 44
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    sput-object v0, Lcom/liquable/nemo/util/crop/ReverseGeocoder;->LOCATION_CRITERIA:Landroid/location/Criteria;

    .line 48
    sget-object v0, Lcom/liquable/nemo/util/crop/ReverseGeocoder;->LOCATION_CRITERIA:Landroid/location/Criteria;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 49
    sget-object v0, Lcom/liquable/nemo/util/crop/ReverseGeocoder;->LOCATION_CRITERIA:Landroid/location/Criteria;

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 50
    sget-object v0, Lcom/liquable/nemo/util/crop/ReverseGeocoder;->LOCATION_CRITERIA:Landroid/location/Criteria;

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 51
    sget-object v0, Lcom/liquable/nemo/util/crop/ReverseGeocoder;->LOCATION_CRITERIA:Landroid/location/Criteria;

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    .line 52
    sget-object v0, Lcom/liquable/nemo/util/crop/ReverseGeocoder;->LOCATION_CRITERIA:Landroid/location/Criteria;

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const-string/jumbo v0, "ReverseGeocoder"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lcom/liquable/nemo/util/crop/ReverseGeocoder;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/ReverseGeocoder;->start()V

    .line 62
    return-void
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "locality"    # Ljava/lang/String;

    .prologue
    .line 65
    if-nez p1, :cond_1

    .line 66
    const-string/jumbo p1, ""

    .line 71
    .end local p1    # "locality":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 68
    .restart local p1    # "locality":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const-string/jumbo p1, ""

    goto :goto_0
.end method

.method private getLocalityAdminForAddress(Landroid/location/Address;Z)Ljava/lang/String;
    .locals 4
    .param p1, "addr"    # Landroid/location/Address;
    .param p2, "approxLocation"    # Z

    .prologue
    .line 279
    if-nez p1, :cond_1

    .line 280
    const-string/jumbo v1, ""

    .line 297
    :cond_0
    :goto_0
    return-object v1

    .line 282
    :cond_1
    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, "localityAdminStr":Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string/jumbo v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 284
    if-eqz p2, :cond_2

    .line 291
    :cond_2
    invoke-virtual {p1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "adminArea":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 297
    .end local v0    # "adminArea":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private lookupAddress(DD)Landroid/location/Address;
    .locals 23
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 377
    const-wide v3, 0x4056800000000000L    # 90.0

    add-double v3, v3, p1

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double/2addr v3, v5

    const-wide v5, 0x4056800000000000L    # 90.0

    mul-double/2addr v3, v5

    const-wide v5, 0x4066800000000000L    # 180.0

    add-double v5, v5, p3

    add-double/2addr v3, v5

    const-wide v5, 0x415854a640000000L    # 6378137.0

    mul-double/2addr v3, v5

    double-to-long v0, v3

    move-wide/from16 v19, v0

    .line 379
    .local v19, "locationKey":J
    :try_start_0
    sget-object v3, Lcom/liquable/nemo/util/crop/ReverseGeocoder;->sGeoCache:Lcom/liquable/nemo/util/crop/DiskCache;

    const-wide/16 v4, 0x0

    move-wide/from16 v0, v19

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/liquable/nemo/util/crop/DiskCache;->get(JJ)[B

    move-result-object v12

    .line 380
    .local v12, "cachedLocation":[B
    const/4 v9, 0x0

    .line 381
    .local v9, "address":Landroid/location/Address;
    if-eqz v12, :cond_0

    array-length v3, v12

    if-nez v3, :cond_3

    .line 383
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/liquable/nemo/util/crop/ReverseGeocoder;->mGeocoder:Landroid/location/Geocoder;

    const/4 v8, 0x1

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-virtual/range {v3 .. v8}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v10

    .line 384
    .local v10, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 385
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "address":Landroid/location/Address;
    check-cast v9, Landroid/location/Address;

    .line 386
    .restart local v9    # "address":Landroid/location/Address;
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 387
    .local v11, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v15, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    const/16 v4, 0x100

    invoke-direct {v3, v11, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v15, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 388
    .local v15, "dos":Ljava/io/DataOutputStream;
    invoke-virtual {v9}, Landroid/location/Address;->getLocale()Ljava/util/Locale;

    move-result-object v18

    .line 389
    .local v18, "locale":Ljava/util/Locale;
    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/liquable/nemo/util/crop/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 390
    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/liquable/nemo/util/crop/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 391
    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/liquable/nemo/util/crop/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 393
    invoke-virtual {v9}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/liquable/nemo/util/crop/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 394
    invoke-virtual {v9}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v21

    .line 395
    .local v21, "numAddressLines":I
    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 396
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    .line 397
    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/liquable/nemo/util/crop/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 396
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 399
    :cond_1
    invoke-virtual {v9}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/liquable/nemo/util/crop/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 400
    invoke-virtual {v9}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/liquable/nemo/util/crop/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 401
    invoke-virtual {v9}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/liquable/nemo/util/crop/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 402
    invoke-virtual {v9}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/liquable/nemo/util/crop/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 404
    invoke-virtual {v9}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/liquable/nemo/util/crop/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 405
    invoke-virtual {v9}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/liquable/nemo/util/crop/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 406
    invoke-virtual {v9}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/liquable/nemo/util/crop/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 407
    invoke-virtual {v9}, Landroid/location/Address;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/liquable/nemo/util/crop/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 408
    invoke-virtual {v9}, Landroid/location/Address;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/liquable/nemo/util/crop/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 410
    invoke-virtual {v15}, Ljava/io/DataOutputStream;->flush()V

    .line 411
    sget-object v3, Lcom/liquable/nemo/util/crop/ReverseGeocoder;->sGeoCache:Lcom/liquable/nemo/util/crop/DiskCache;

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    const-wide/16 v7, 0x0

    move-wide/from16 v4, v19

    invoke-virtual/range {v3 .. v8}, Lcom/liquable/nemo/util/crop/DiskCache;->put(J[BJ)V

    .line 412
    invoke-virtual {v15}, Ljava/io/DataOutputStream;->close()V

    .line 462
    .end local v9    # "address":Landroid/location/Address;
    .end local v10    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v11    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v12    # "cachedLocation":[B
    .end local v15    # "dos":Ljava/io/DataOutputStream;
    .end local v16    # "i":I
    .end local v18    # "locale":Ljava/util/Locale;
    .end local v21    # "numAddressLines":I
    :cond_2
    :goto_1
    return-object v9

    .line 419
    .restart local v9    # "address":Landroid/location/Address;
    .restart local v12    # "cachedLocation":[B
    :cond_3
    new-instance v14, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v12}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v5, 0x100

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v14, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 421
    .local v14, "dis":Ljava/io/DataInputStream;
    invoke-static {v14}, Lcom/liquable/nemo/util/crop/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v17

    .line 422
    .local v17, "language":Ljava/lang/String;
    invoke-static {v14}, Lcom/liquable/nemo/util/crop/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v13

    .line 423
    .local v13, "country":Ljava/lang/String;
    invoke-static {v14}, Lcom/liquable/nemo/util/crop/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v22

    .line 424
    .local v22, "variant":Ljava/lang/String;
    const/16 v18, 0x0

    .line 425
    .restart local v18    # "locale":Ljava/util/Locale;
    if-eqz v17, :cond_4

    .line 426
    if-nez v13, :cond_5

    .line 427
    new-instance v18, Ljava/util/Locale;

    .end local v18    # "locale":Ljava/util/Locale;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 434
    .restart local v18    # "locale":Ljava/util/Locale;
    :cond_4
    :goto_2
    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 435
    sget-object v3, Lcom/liquable/nemo/util/crop/ReverseGeocoder;->sGeoCache:Lcom/liquable/nemo/util/crop/DiskCache;

    move-wide/from16 v0, v19

    invoke-virtual {v3, v0, v1}, Lcom/liquable/nemo/util/crop/DiskCache;->delete(J)V

    .line 436
    invoke-virtual {v14}, Ljava/io/DataInputStream;->close()V

    .line 437
    invoke-direct/range {p0 .. p4}, Lcom/liquable/nemo/util/crop/ReverseGeocoder;->lookupAddress(DD)Landroid/location/Address;

    move-result-object v9

    goto :goto_1

    .line 428
    :cond_5
    if-nez v22, :cond_6

    .line 429
    new-instance v18, Ljava/util/Locale;

    .end local v18    # "locale":Ljava/util/Locale;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v13}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v18    # "locale":Ljava/util/Locale;
    goto :goto_2

    .line 431
    :cond_6
    new-instance v18, Ljava/util/Locale;

    .end local v18    # "locale":Ljava/util/Locale;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v13, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v18    # "locale":Ljava/util/Locale;
    goto :goto_2

    .line 439
    :cond_7
    new-instance v9, Landroid/location/Address;

    .end local v9    # "address":Landroid/location/Address;
    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    .line 441
    .restart local v9    # "address":Landroid/location/Address;
    invoke-static {v14}, Lcom/liquable/nemo/util/crop/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/location/Address;->setThoroughfare(Ljava/lang/String;)V

    .line 442
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readInt()I

    move-result v21

    .line 443
    .restart local v21    # "numAddressLines":I
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_3
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_8

    .line 444
    invoke-static {v14}, Lcom/liquable/nemo/util/crop/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v9, v0, v3}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 443
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 446
    :cond_8
    invoke-static {v14}, Lcom/liquable/nemo/util/crop/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/location/Address;->setFeatureName(Ljava/lang/String;)V

    .line 447
    invoke-static {v14}, Lcom/liquable/nemo/util/crop/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    .line 448
    invoke-static {v14}, Lcom/liquable/nemo/util/crop/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/location/Address;->setAdminArea(Ljava/lang/String;)V

    .line 449
    invoke-static {v14}, Lcom/liquable/nemo/util/crop/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/location/Address;->setSubAdminArea(Ljava/lang/String;)V

    .line 451
    invoke-static {v14}, Lcom/liquable/nemo/util/crop/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/location/Address;->setCountryName(Ljava/lang/String;)V

    .line 452
    invoke-static {v14}, Lcom/liquable/nemo/util/crop/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/location/Address;->setCountryCode(Ljava/lang/String;)V

    .line 453
    invoke-static {v14}, Lcom/liquable/nemo/util/crop/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/location/Address;->setPostalCode(Ljava/lang/String;)V

    .line 454
    invoke-static {v14}, Lcom/liquable/nemo/util/crop/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/location/Address;->setPhone(Ljava/lang/String;)V

    .line 455
    invoke-static {v14}, Lcom/liquable/nemo/util/crop/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/location/Address;->setUrl(Ljava/lang/String;)V

    .line 456
    invoke-virtual {v14}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 459
    .end local v9    # "address":Landroid/location/Address;
    .end local v12    # "cachedLocation":[B
    .end local v13    # "country":Ljava/lang/String;
    .end local v14    # "dis":Ljava/io/DataInputStream;
    .end local v16    # "i":I
    .end local v17    # "language":Ljava/lang/String;
    .end local v18    # "locale":Ljava/util/Locale;
    .end local v21    # "numAddressLines":I
    .end local v22    # "variant":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 462
    const/4 v9, 0x0

    goto/16 :goto_1
.end method

.method private process(Lcom/liquable/nemo/util/crop/MediaSet;)Z
    .locals 2
    .param p1, "set"    # Lcom/liquable/nemo/util/crop/MediaSet;

    .prologue
    const/4 v0, 0x1

    .line 466
    iget-boolean v1, p1, Lcom/liquable/nemo/util/crop/MediaSet;->mLatLongDetermined:Z

    if-nez v1, :cond_0

    .line 468
    iput-boolean v0, p1, Lcom/liquable/nemo/util/crop/MediaSet;->mReverseGeocodedLocationComputed:Z

    .line 469
    const/4 v0, 0x0

    .line 473
    :goto_0
    return v0

    .line 471
    :cond_0
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/util/crop/ReverseGeocoder;->computeMostGranularCommonLocation(Lcom/liquable/nemo/util/crop/MediaSet;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/liquable/nemo/util/crop/MediaSet;->mReverseGeocodedLocation:Ljava/lang/String;

    .line 472
    iput-boolean v0, p1, Lcom/liquable/nemo/util/crop/MediaSet;->mReverseGeocodedLocationComputed:Z

    goto :goto_0
.end method

.method private valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/String;

    .prologue
    .line 505
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p1    # "a":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "a":Ljava/lang/String;
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected computeMostGranularCommonLocation(Lcom/liquable/nemo/util/crop/MediaSet;)Ljava/lang/String;
    .locals 43
    .param p1, "set"    # Lcom/liquable/nemo/util/crop/MediaSet;

    .prologue
    .line 76
    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mMinLatLatitude:D

    .line 77
    .local v5, "setMinLatitude":D
    move-object/from16 v0, p1

    iget-wide v7, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mMinLatLongitude:D

    .line 78
    .local v7, "setMinLongitude":D
    move-object/from16 v0, p1

    iget-wide v9, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mMaxLatLatitude:D

    .line 79
    .local v9, "setMaxLatitude":D
    move-object/from16 v0, p1

    iget-wide v11, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mMaxLatLongitude:D

    .line 80
    .local v11, "setMaxLongitude":D
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mMaxLatLatitude:D

    move-wide/from16 v37, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mMinLatLatitude:D

    move-wide/from16 v39, v0

    sub-double v37, v37, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->abs(D)D

    move-result-wide v37

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mMaxLonLongitude:D

    move-wide/from16 v39, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mMinLonLongitude:D

    move-wide/from16 v41, v0

    sub-double v39, v39, v41

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->abs(D)D

    move-result-wide v39

    cmpg-double v37, v37, v39

    if-gez v37, :cond_0

    .line 81
    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mMinLonLatitude:D

    .line 82
    move-object/from16 v0, p1

    iget-wide v7, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mMinLonLongitude:D

    .line 83
    move-object/from16 v0, p1

    iget-wide v9, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mMaxLonLatitude:D

    .line 84
    move-object/from16 v0, p1

    iget-wide v11, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mMaxLonLongitude:D

    .line 86
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7, v8}, Lcom/liquable/nemo/util/crop/ReverseGeocoder;->lookupAddress(DD)Landroid/location/Address;

    move-result-object v13

    .line 87
    .local v13, "addr1":Landroid/location/Address;
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10, v11, v12}, Lcom/liquable/nemo/util/crop/ReverseGeocoder;->lookupAddress(DD)Landroid/location/Address;

    move-result-object v18

    .line 88
    .local v18, "addr2":Landroid/location/Address;
    if-nez v13, :cond_1

    .line 89
    move-object/from16 v13, v18

    .line 91
    :cond_1
    if-nez v18, :cond_2

    .line 92
    move-object/from16 v18, v13

    .line 94
    :cond_2
    if-eqz v13, :cond_3

    if-nez v18, :cond_5

    .line 95
    :cond_3
    const/16 v24, 0x0

    .line 263
    :cond_4
    :goto_0
    return-object v24

    .line 100
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/util/crop/ReverseGeocoder;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    const-string/jumbo v38, "location"

    invoke-virtual/range {v37 .. v38}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/location/LocationManager;

    .line 101
    .local v33, "locationManager":Landroid/location/LocationManager;
    const/16 v32, 0x0

    .line 102
    .local v32, "location":Landroid/location/Location;
    invoke-virtual/range {v33 .. v33}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v36

    .line 103
    .local v36, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v31, 0x0

    .local v31, "i":I
    :goto_1
    invoke-interface/range {v36 .. v36}, Ljava/util/List;->size()I

    move-result v37

    move/from16 v0, v31

    move/from16 v1, v37

    if-ge v0, v1, :cond_6

    .line 104
    move-object/from16 v0, v36

    move/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    .line 105
    .local v35, "provider":Ljava/lang/String;
    if-eqz v35, :cond_9

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v32

    .line 106
    :goto_2
    if-eqz v32, :cond_a

    .line 110
    .end local v35    # "provider":Ljava/lang/String;
    :cond_6
    const-string/jumbo v28, ""

    .line 111
    .local v28, "currentCity":Ljava/lang/String;
    const-string/jumbo v27, ""

    .line 112
    .local v27, "currentAdminArea":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v29

    .line 113
    .local v29, "currentCountry":Ljava/lang/String;
    if-eqz v32, :cond_7

    .line 114
    invoke-virtual/range {v32 .. v32}, Landroid/location/Location;->getLatitude()D

    move-result-wide v37

    invoke-virtual/range {v32 .. v32}, Landroid/location/Location;->getLongitude()D

    move-result-wide v39

    move-object/from16 v0, p0

    move-wide/from16 v1, v37

    move-wide/from16 v3, v39

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/util/crop/ReverseGeocoder;->lookupAddress(DD)Landroid/location/Address;

    move-result-object v26

    .line 115
    .local v26, "currentAddress":Landroid/location/Address;
    if-nez v26, :cond_b

    .line 116
    sget-object v26, Lcom/liquable/nemo/util/crop/ReverseGeocoder;->sCurrentAddress:Landroid/location/Address;

    .line 120
    :goto_3
    if-eqz v26, :cond_7

    invoke-virtual/range {v26 .. v26}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v37

    if-eqz v37, :cond_7

    .line 121
    invoke-virtual/range {v26 .. v26}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/liquable/nemo/util/crop/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 122
    invoke-virtual/range {v26 .. v26}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/liquable/nemo/util/crop/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 123
    invoke-virtual/range {v26 .. v26}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/liquable/nemo/util/crop/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 127
    .end local v26    # "currentAddress":Landroid/location/Address;
    :cond_7
    const/16 v24, 0x0

    .line 128
    .local v24, "closestCommonLocation":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/liquable/nemo/util/crop/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 129
    .local v17, "addr1Locality":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/liquable/nemo/util/crop/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 130
    .local v22, "addr2Locality":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/liquable/nemo/util/crop/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 131
    .local v14, "addr1AdminArea":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/liquable/nemo/util/crop/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 132
    .local v19, "addr2AdminArea":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/liquable/nemo/util/crop/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 133
    .local v16, "addr1CountryCode":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/liquable/nemo/util/crop/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 135
    .local v21, "addr2CountryCode":Ljava/lang/String;
    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_f

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_f

    .line 136
    move-object/from16 v34, v28

    .line 137
    .local v34, "otherCity":Ljava/lang/String;
    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_c

    .line 138
    move-object/from16 v34, v22

    .line 139
    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v37

    if-nez v37, :cond_8

    .line 140
    move-object/from16 v34, v19

    .line 141
    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_8

    .line 142
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, " "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 145
    :cond_8
    move-object/from16 v22, v17

    .line 146
    move-object/from16 v19, v14

    .line 147
    move-object/from16 v21, v16

    .line 161
    :goto_4
    const/16 v37, 0x0

    move/from16 v0, v37

    invoke-virtual {v13, v0}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/util/crop/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 162
    if-eqz v24, :cond_e

    const-string/jumbo v37, "null"

    move-object/from16 v0, v37

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_e

    .line 163
    move-object/from16 v0, v28

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_4

    .line 164
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, " - "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_0

    .line 105
    .end local v14    # "addr1AdminArea":Ljava/lang/String;
    .end local v16    # "addr1CountryCode":Ljava/lang/String;
    .end local v17    # "addr1Locality":Ljava/lang/String;
    .end local v19    # "addr2AdminArea":Ljava/lang/String;
    .end local v21    # "addr2CountryCode":Ljava/lang/String;
    .end local v22    # "addr2Locality":Ljava/lang/String;
    .end local v24    # "closestCommonLocation":Ljava/lang/String;
    .end local v27    # "currentAdminArea":Ljava/lang/String;
    .end local v28    # "currentCity":Ljava/lang/String;
    .end local v29    # "currentCountry":Ljava/lang/String;
    .end local v34    # "otherCity":Ljava/lang/String;
    .restart local v35    # "provider":Ljava/lang/String;
    :cond_9
    const/16 v32, 0x0

    goto/16 :goto_2

    .line 103
    :cond_a
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_1

    .line 118
    .end local v35    # "provider":Ljava/lang/String;
    .restart local v26    # "currentAddress":Landroid/location/Address;
    .restart local v27    # "currentAdminArea":Ljava/lang/String;
    .restart local v28    # "currentCity":Ljava/lang/String;
    .restart local v29    # "currentCountry":Ljava/lang/String;
    :cond_b
    sput-object v26, Lcom/liquable/nemo/util/crop/ReverseGeocoder;->sCurrentAddress:Landroid/location/Address;

    goto/16 :goto_3

    .line 149
    .end local v26    # "currentAddress":Landroid/location/Address;
    .restart local v14    # "addr1AdminArea":Ljava/lang/String;
    .restart local v16    # "addr1CountryCode":Ljava/lang/String;
    .restart local v17    # "addr1Locality":Ljava/lang/String;
    .restart local v19    # "addr2AdminArea":Ljava/lang/String;
    .restart local v21    # "addr2CountryCode":Ljava/lang/String;
    .restart local v22    # "addr2Locality":Ljava/lang/String;
    .restart local v24    # "closestCommonLocation":Ljava/lang/String;
    .restart local v34    # "otherCity":Ljava/lang/String;
    :cond_c
    move-object/from16 v34, v17

    .line 150
    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v37

    if-nez v37, :cond_d

    .line 151
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, " "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 153
    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_d

    .line 154
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, " "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 157
    :cond_d
    move-object/from16 v17, v22

    .line 158
    move-object/from16 v14, v19

    .line 159
    move-object/from16 v16, v21

    goto/16 :goto_4

    .line 170
    :cond_e
    invoke-virtual {v13}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v18 .. v18}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/util/crop/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 171
    if-eqz v24, :cond_f

    const-string/jumbo v37, "null"

    move-object/from16 v0, v37

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_4

    .line 177
    .end local v34    # "otherCity":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/util/crop/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 178
    if-eqz v24, :cond_11

    const-string/jumbo v37, ""

    move-object/from16 v0, v37

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_11

    .line 179
    move-object/from16 v23, v14

    .line 180
    .local v23, "adminArea":Ljava/lang/String;
    move-object/from16 v25, v16

    .line 181
    .local v25, "countryCode":Ljava/lang/String;
    if-eqz v23, :cond_4

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v37

    if-lez v37, :cond_4

    .line 182
    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_10

    .line 183
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, ", "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, " "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_0

    .line 185
    :cond_10
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, ", "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_0

    .line 193
    .end local v23    # "adminArea":Ljava/lang/String;
    .end local v25    # "countryCode":Ljava/lang/String;
    :cond_11
    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_15

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_15

    .line 194
    const-string/jumbo v37, ""

    move-object/from16 v0, v37

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_12

    .line 195
    move-object/from16 v17, v22

    .line 197
    :cond_12
    const-string/jumbo v37, ""

    move-object/from16 v0, v37

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_13

    .line 198
    move-object/from16 v22, v17

    .line 200
    :cond_13
    const-string/jumbo v37, ""

    move-object/from16 v0, v37

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_15

    .line 201
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_14

    .line 202
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, ", "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_0

    .line 204
    :cond_14
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, " - "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_0

    .line 212
    :cond_15
    invoke-static/range {v5 .. v12}, Lcom/liquable/nemo/util/crop/LocationMediaFilter;->distanceBetween(DDDD)D

    move-result-wide v37

    invoke-static/range {v37 .. v38}, Lcom/liquable/nemo/util/crop/LocationMediaFilter;->toMile(D)D

    move-result-wide v37

    move-wide/from16 v0, v37

    double-to-int v0, v0

    move/from16 v30, v0

    .line 216
    .local v30, "distance":I
    const/16 v37, 0x14

    move/from16 v0, v30

    move/from16 v1, v37

    if-ge v0, v1, :cond_16

    .line 219
    const/16 v37, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-direct {v0, v13, v1}, Lcom/liquable/nemo/util/crop/ReverseGeocoder;->getLocalityAdminForAddress(Landroid/location/Address;Z)Ljava/lang/String;

    move-result-object v24

    .line 220
    if-nez v24, :cond_4

    .line 223
    const/16 v37, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/util/crop/ReverseGeocoder;->getLocalityAdminForAddress(Landroid/location/Address;Z)Ljava/lang/String;

    move-result-object v24

    .line 224
    if-nez v24, :cond_4

    .line 230
    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v14, v1}, Lcom/liquable/nemo/util/crop/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 231
    if-eqz v24, :cond_17

    const-string/jumbo v37, ""

    move-object/from16 v0, v37

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_17

    .line 232
    move-object/from16 v25, v16

    .line 233
    .restart local v25    # "countryCode":Ljava/lang/String;
    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_4

    .line 234
    if-eqz v25, :cond_4

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v37

    if-lez v37, :cond_4

    .line 235
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, " "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_0

    .line 242
    .end local v25    # "countryCode":Ljava/lang/String;
    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/util/crop/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 243
    if-eqz v24, :cond_18

    const-string/jumbo v37, ""

    move-object/from16 v0, v37

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_4

    .line 247
    :cond_18
    invoke-virtual {v13}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v15

    .line 248
    .local v15, "addr1Country":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v20

    .line 249
    .local v20, "addr2Country":Ljava/lang/String;
    if-nez v15, :cond_19

    .line 250
    move-object/from16 v15, v16

    .line 252
    :cond_19
    if-nez v20, :cond_1a

    .line 253
    move-object/from16 v20, v21

    .line 255
    :cond_1a
    if-eqz v15, :cond_1b

    if-nez v20, :cond_1c

    .line 256
    :cond_1b
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 258
    :cond_1c
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v37

    const/16 v38, 0x8

    move/from16 v0, v37

    move/from16 v1, v38

    if-gt v0, v1, :cond_1d

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v37

    const/16 v38, 0x8

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_1e

    .line 259
    :cond_1d
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, " - "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_0

    .line 261
    :cond_1e
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, " - "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_0
.end method

.method public enqueue(Lcom/liquable/nemo/util/crop/MediaSet;)V
    .locals 2
    .param p1, "set"    # Lcom/liquable/nemo/util/crop/MediaSet;

    .prologue
    .line 267
    sget-object v0, Lcom/liquable/nemo/util/crop/ReverseGeocoder;->sQueue:Lcom/liquable/nemo/util/crop/Deque;

    .line 268
    .local v0, "inQueue":Lcom/liquable/nemo/util/crop/Deque;, "Lcom/liquable/nemo/util/crop/Deque<Lcom/liquable/nemo/util/crop/MediaSet;>;"
    monitor-enter v0

    .line 269
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/liquable/nemo/util/crop/Deque;->addFirst(Ljava/lang/Object;)V

    .line 270
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 271
    monitor-exit v0

    .line 272
    return-void

    .line 271
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public flushCache()V
    .locals 1

    .prologue
    .line 275
    sget-object v0, Lcom/liquable/nemo/util/crop/ReverseGeocoder;->sGeoCache:Lcom/liquable/nemo/util/crop/DiskCache;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/crop/DiskCache;->flush()V

    .line 276
    return-void
.end method

.method protected getReverseGeocodedLocation(DDI)Ljava/lang/String;
    .locals 9
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "desiredNumDetails"    # I

    .prologue
    .line 303
    const/4 v5, 0x0

    .line 304
    .local v5, "location":Ljava/lang/String;
    const/4 v6, 0x0

    .line 306
    .local v6, "numDetails":I
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/liquable/nemo/util/crop/ReverseGeocoder;->lookupAddress(DD)Landroid/location/Address;

    move-result-object v0

    .line 308
    .local v0, "addr":Landroid/location/Address;
    if-eqz v0, :cond_a

    .line 312
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v5

    .line 313
    if-eqz v5, :cond_1

    const-string/jumbo v7, "null"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 314
    add-int/lit8 v6, v6, 0x1

    .line 327
    :cond_0
    :goto_0
    if-ne v6, p5, :cond_3

    move-object v7, v5

    .line 371
    .end local v0    # "addr":Landroid/location/Address;
    :goto_1
    return-object v7

    .line 316
    .restart local v0    # "addr":Landroid/location/Address;
    :cond_1
    invoke-virtual {v0}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v5

    .line 317
    if-eqz v5, :cond_2

    const-string/jumbo v7, "null"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 318
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 320
    :cond_2
    invoke-virtual {v0}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v5

    .line 321
    if-eqz v5, :cond_0

    const-string/jumbo v7, "null"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 322
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 331
    :cond_3
    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v4

    .line 332
    .local v4, "locality":Ljava/lang/String;
    if-eqz v4, :cond_4

    const-string/jumbo v7, "null"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 333
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 334
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 338
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 341
    :cond_4
    if-ne v6, p5, :cond_6

    move-object v7, v5

    .line 342
    goto :goto_1

    .line 336
    :cond_5
    move-object v5, v4

    goto :goto_2

    .line 345
    :cond_6
    invoke-virtual {v0}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v1

    .line 346
    .local v1, "adminArea":Ljava/lang/String;
    if-eqz v1, :cond_7

    const-string/jumbo v7, "null"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 347
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_8

    .line 348
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 352
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 355
    :cond_7
    if-ne v6, p5, :cond_9

    move-object v7, v5

    .line 356
    goto/16 :goto_1

    .line 350
    :cond_8
    move-object v5, v1

    goto :goto_3

    .line 359
    :cond_9
    invoke-virtual {v0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    .line 360
    .local v2, "countryCode":Ljava/lang/String;
    if-eqz v2, :cond_a

    const-string/jumbo v7, "null"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 361
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_b

    .line 362
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v1    # "adminArea":Ljava/lang/String;
    .end local v2    # "countryCode":Ljava/lang/String;
    .end local v4    # "locality":Ljava/lang/String;
    :cond_a
    :goto_4
    move-object v7, v5

    .line 369
    goto/16 :goto_1

    .line 364
    .restart local v1    # "adminArea":Ljava/lang/String;
    .restart local v2    # "countryCode":Ljava/lang/String;
    .restart local v4    # "locality":Ljava/lang/String;
    :cond_b
    invoke-virtual {v0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_4

    .line 370
    .end local v0    # "addr":Landroid/location/Address;
    .end local v1    # "adminArea":Ljava/lang/String;
    .end local v2    # "countryCode":Ljava/lang/String;
    .end local v4    # "locality":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 371
    .local v3, "e":Ljava/lang/Exception;
    const/4 v7, 0x0

    goto/16 :goto_1
.end method

.method public run()V
    .locals 4

    .prologue
    .line 478
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 479
    sget-object v0, Lcom/liquable/nemo/util/crop/ReverseGeocoder;->sQueue:Lcom/liquable/nemo/util/crop/Deque;

    .line 480
    .local v0, "queue":Lcom/liquable/nemo/util/crop/Deque;, "Lcom/liquable/nemo/util/crop/Deque<Lcom/liquable/nemo/util/crop/MediaSet;>;"
    new-instance v2, Landroid/location/Geocoder;

    iget-object v3, p0, Lcom/liquable/nemo/util/crop/ReverseGeocoder;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/liquable/nemo/util/crop/ReverseGeocoder;->mGeocoder:Landroid/location/Geocoder;

    .line 481
    invoke-virtual {v0}, Lcom/liquable/nemo/util/crop/Deque;->clear()V

    .line 486
    :goto_0
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Lcom/liquable/nemo/util/crop/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/util/crop/MediaSet;

    .local v1, "set":Lcom/liquable/nemo/util/crop/MediaSet;
    if-nez v1, :cond_0

    .line 488
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 490
    .end local v1    # "set":Lcom/liquable/nemo/util/crop/MediaSet;
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 494
    :catch_0
    move-exception v2

    .line 497
    return-void

    .line 490
    .restart local v1    # "set":Lcom/liquable/nemo/util/crop/MediaSet;
    :cond_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 492
    :try_start_4
    invoke-direct {p0, v1}, Lcom/liquable/nemo/util/crop/ReverseGeocoder;->process(Lcom/liquable/nemo/util/crop/MediaSet;)Z
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0
.end method

.method public shutdown()V
    .locals 0

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/ReverseGeocoder;->flushCache()V

    .line 501
    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/ReverseGeocoder;->interrupt()V

    .line 502
    return-void
.end method
