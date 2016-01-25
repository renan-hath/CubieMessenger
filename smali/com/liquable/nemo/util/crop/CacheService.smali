.class public final Lcom/liquable/nemo/util/crop/CacheService;
.super Landroid/app/IntentService;
.source "CacheService.java"


# static fields
.field public static final ACTION_CACHE:Ljava/lang/String; = "com.cooliris.cache.action.CACHE"

.field private static final ALBUM_CACHE_DIRTY_BUCKET_INDEX:I = -0x4

.field private static final ALBUM_CACHE_DIRTY_INDEX:I = -0x2

.field private static final ALBUM_CACHE_LOCALE_INDEX:I = -0x5

.field private static final ALBUM_CACHE_METADATA_INDEX:I = -0x1

.field public static final BASE_CONTENT_STRING_IMAGES:Ljava/lang/String;

.field public static final BASE_CONTENT_STRING_VIDEOS:Ljava/lang/String;

.field public static final BUCKET_ID_INDEX:I = 0x0

.field public static final BUCKET_NAME_INDEX:I = 0x1

.field public static final BUCKET_PROJECTION_IMAGES:[Ljava/lang/String;

.field public static final BUCKET_PROJECTION_VIDEOS:[Ljava/lang/String;

.field private static final DEBUG:Z = true

.field public static final DEFAULT_BUCKET_SORT_ORDER:Ljava/lang/String; = "upper(bucket_display_name) ASC"

.field public static final DEFAULT_IMAGE_SORT_ORDER:Ljava/lang/String; = "datetaken ASC"

.field private static final DEFAULT_THUMBNAIL_HEIGHT:I = 0x60

.field private static final DEFAULT_THUMBNAIL_WIDTH:I = 0x80

.field public static final DEFAULT_VIDEO_SORT_ORDER:Ljava/lang/String; = "datetaken ASC"

.field public static final MEDIA_BUCKET_ID_INDEX:I = 0xa

.field public static final MEDIA_CAPTION_INDEX:I = 0x1

.field public static final MEDIA_DATA_INDEX:I = 0x8

.field public static final MEDIA_DATE_ADDED_INDEX:I = 0x6

.field public static final MEDIA_DATE_MODIFIED_INDEX:I = 0x7

.field public static final MEDIA_DATE_TAKEN_INDEX:I = 0x5

.field public static final MEDIA_ID_INDEX:I = 0x0

.field public static final MEDIA_LATITUDE_INDEX:I = 0x3

.field public static final MEDIA_LONGITUDE_INDEX:I = 0x4

.field public static final MEDIA_MIME_TYPE_INDEX:I = 0x2

.field public static final MEDIA_ORIENTATION_OR_DURATION_INDEX:I = 0x9

.field public static final PROJECTION_IMAGES:[Ljava/lang/String;

.field public static final PROJECTION_VIDEOS:[Ljava/lang/String;

.field public static final SENSE_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "CacheService"

.field private static final THUMBNAILER_WAIT_IN_MS:I = 0x7d0

.field public static final THUMBNAIL_DATA_INDEX:I = 0x2

.field public static final THUMBNAIL_DATE_MODIFIED_INDEX:I = 0x1

.field public static final THUMBNAIL_ID_INDEX:I = 0x0

.field public static final THUMBNAIL_ORIENTATION_INDEX:I = 0x3

.field public static final THUMBNAIL_PROJECTION:[Ljava/lang/String;

.field private static final THUMBNAIL_THREAD:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private static final mAltDateFormat:Ljava/text/DateFormat;

.field private static final mDateFormat:Ljava/text/DateFormat;

.field public static final sAlbumCache:Lcom/liquable/nemo/util/crop/DiskCache;

.field private static final sCacheLock:Ljava/lang/Object;

.field private static final sDummyData:[B

.field private static sList:Lcom/liquable/nemo/util/crop/ImageList;

.field public static final sMetaAlbumCache:Lcom/liquable/nemo/util/crop/DiskCache;

.field public static final sSkipThumbnailIds:Lcom/liquable/nemo/util/crop/DiskCache;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1251
    new-instance v0, Lcom/liquable/nemo/util/crop/DiskCache;

    const-string/jumbo v1, "local-album-cache"

    invoke-direct {v0, v1}, Lcom/liquable/nemo/util/crop/DiskCache;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/util/crop/CacheService;->sAlbumCache:Lcom/liquable/nemo/util/crop/DiskCache;

    .line 1252
    new-instance v0, Lcom/liquable/nemo/util/crop/DiskCache;

    const-string/jumbo v1, "local-meta-cache"

    invoke-direct {v0, v1}, Lcom/liquable/nemo/util/crop/DiskCache;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/util/crop/CacheService;->sMetaAlbumCache:Lcom/liquable/nemo/util/crop/DiskCache;

    .line 1253
    new-instance v0, Lcom/liquable/nemo/util/crop/DiskCache;

    const-string/jumbo v1, "local-skip-cache"

    invoke-direct {v0, v1}, Lcom/liquable/nemo/util/crop/DiskCache;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/util/crop/CacheService;->sSkipThumbnailIds:Lcom/liquable/nemo/util/crop/DiskCache;

    .line 1256
    const/4 v0, 0x0

    sput-object v0, Lcom/liquable/nemo/util/crop/CacheService;->sList:Lcom/liquable/nemo/util/crop/ImageList;

    .line 1280
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "bucket_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "bucket_display_name"

    aput-object v1, v0, v3

    sput-object v0, Lcom/liquable/nemo/util/crop/CacheService;->BUCKET_PROJECTION_IMAGES:[Ljava/lang/String;

    .line 1283
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "bucket_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "bucket_display_name"

    aput-object v1, v0, v3

    sput-object v0, Lcom/liquable/nemo/util/crop/CacheService;->BUCKET_PROJECTION_VIDEOS:[Ljava/lang/String;

    .line 1296
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "date_added"

    aput-object v1, v0, v3

    const-string/jumbo v1, "_data"

    aput-object v1, v0, v5

    const-string/jumbo v1, "orientation"

    aput-object v1, v0, v6

    sput-object v0, Lcom/liquable/nemo/util/crop/CacheService;->THUMBNAIL_PROJECTION:[Ljava/lang/String;

    .line 1299
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "bucket_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "MAX(date_added), COUNT(*)"

    aput-object v1, v0, v3

    sput-object v0, Lcom/liquable/nemo/util/crop/CacheService;->SENSE_PROJECTION:[Ljava/lang/String;

    .line 1327
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "title"

    aput-object v1, v0, v3

    const-string/jumbo v1, "mime_type"

    aput-object v1, v0, v5

    const-string/jumbo v1, "latitude"

    aput-object v1, v0, v6

    const-string/jumbo v1, "longitude"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "date_added"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "date_modified"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "_data"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "orientation"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "bucket_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/util/crop/CacheService;->PROJECTION_IMAGES:[Ljava/lang/String;

    .line 1333
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "title"

    aput-object v1, v0, v3

    const-string/jumbo v1, "mime_type"

    aput-object v1, v0, v5

    const-string/jumbo v1, "latitude"

    aput-object v1, v0, v6

    const-string/jumbo v1, "longitude"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "date_added"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "date_modified"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "_data"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "bucket_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/util/crop/CacheService;->PROJECTION_VIDEOS:[Ljava/lang/String;

    .line 1339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/util/crop/CacheService;->BASE_CONTENT_STRING_IMAGES:Ljava/lang/String;

    .line 1341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/util/crop/CacheService;->BASE_CONTENT_STRING_VIDEOS:Ljava/lang/String;

    .line 1343
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/liquable/nemo/util/crop/CacheService;->THUMBNAIL_THREAD:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1354
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/util/crop/CacheService;->mDateFormat:Ljava/text/DateFormat;

    .line 1356
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/util/crop/CacheService;->mAltDateFormat:Ljava/text/DateFormat;

    .line 1358
    new-array v0, v3, [B

    aput-byte v3, v0, v4

    sput-object v0, Lcom/liquable/nemo/util/crop/CacheService;->sDummyData:[B

    .line 1360
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/liquable/nemo/util/crop/CacheService;->sCacheLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1363
    const-string/jumbo v0, "CacheService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 1364
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-static {p0}, Lcom/liquable/nemo/util/crop/CacheService;->buildThumbnails(Landroid/content/Context;)V

    return-void
.end method

.method private static final addNoDupe(Ljava/util/ArrayList;J)V
    .locals 4
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 59
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 60
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 65
    :goto_1
    return-void

    .line 59
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static addToThumbnailerSkipList(J)V
    .locals 6
    .param p0, "thumbnailId"    # J

    .prologue
    .line 68
    sget-object v0, Lcom/liquable/nemo/util/crop/CacheService;->sSkipThumbnailIds:Lcom/liquable/nemo/util/crop/DiskCache;

    sget-object v3, Lcom/liquable/nemo/util/crop/CacheService;->sDummyData:[B

    const-wide/16 v4, 0x0

    move-wide v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/liquable/nemo/util/crop/DiskCache;->put(J[BJ)V

    .line 69
    sget-object v0, Lcom/liquable/nemo/util/crop/CacheService;->sSkipThumbnailIds:Lcom/liquable/nemo/util/crop/DiskCache;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/crop/DiskCache;->flush()V

    .line 70
    return-void
.end method

.method private static final buildThumbnailForId(Landroid/content/Context;Lcom/liquable/nemo/util/crop/DiskCache;JJZIIJ)[B
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "thumbnailCache"    # Lcom/liquable/nemo/util/crop/DiskCache;
    .param p2, "thumbId"    # J
    .param p4, "origId"    # J
    .param p6, "isVideo"    # Z
    .param p7, "thumbnailWidth"    # I
    .param p8, "thumbnailHeight"    # I
    .param p9, "timestamp"    # J

    .prologue
    .line 80
    const-wide/16 v3, -0x1

    cmp-long v3, p4, v3

    if-nez v3, :cond_0

    .line 81
    const/4 v14, 0x0

    .line 130
    :goto_0
    return-object v14

    .line 84
    :cond_0
    const/4 v8, 0x0

    .line 85
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    const-wide/16 v3, 0x1

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 86
    new-instance v3, Lcom/liquable/nemo/util/crop/CacheService$1;

    move/from16 v0, p6

    move-wide/from16 v1, p4

    invoke-direct {v3, v0, p0, v1, v2}, Lcom/liquable/nemo/util/crop/CacheService$1;-><init>(ZLandroid/content/Context;J)V

    .line 106
    invoke-virtual {v3}, Lcom/liquable/nemo/util/crop/CacheService$1;->start()V

    .line 107
    if-eqz p6, :cond_1

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-wide/from16 v0, p4

    invoke-static {v3, v0, v1, v4, v5}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 118
    :goto_1
    if-nez v8, :cond_2

    .line 119
    const/4 v14, 0x0

    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-wide/from16 v0, p4

    invoke-static {v3, v0, v1, v4, v5}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_1

    :cond_2
    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move/from16 v9, p7

    move/from16 v10, p8

    move-wide/from16 v11, p9

    .line 121
    invoke-static/range {v3 .. v12}, Lcom/liquable/nemo/util/crop/CacheService;->writeBitmapToCache(Lcom/liquable/nemo/util/crop/DiskCache;JJLandroid/graphics/Bitmap;IIJ)[B
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 128
    .local v14, "retVal":[B
    goto :goto_0

    .line 129
    .end local v14    # "retVal":[B
    :catch_0
    move-exception v13

    .line 130
    .local v13, "e":Ljava/lang/InterruptedException;
    const/4 v14, 0x0

    goto :goto_0
.end method

.method private static final buildThumbnails(Landroid/content/Context;)V
    .locals 21
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 136
    const-string/jumbo v1, "CacheService"

    const-string/jumbo v7, "Preparing DiskCache for all thumbnails."

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-static/range {p0 .. p0}, Lcom/liquable/nemo/util/crop/CacheService;->getImageList(Landroid/content/Context;)Lcom/liquable/nemo/util/crop/ImageList;

    move-result-object v14

    .line 139
    .local v14, "list":Lcom/liquable/nemo/util/crop/ImageList;
    iget-object v1, v14, Lcom/liquable/nemo/util/crop/ImageList;->ids:[J

    if-nez v1, :cond_0

    const/16 v16, 0x0

    .line 140
    .local v16, "size":I
    :goto_0
    iget-object v13, v14, Lcom/liquable/nemo/util/crop/ImageList;->ids:[J

    .line 141
    .local v13, "ids":[J
    iget-object v0, v14, Lcom/liquable/nemo/util/crop/ImageList;->timestamp:[J

    move-object/from16 v20, v0

    .line 142
    .local v20, "timestamp":[J
    iget-object v0, v14, Lcom/liquable/nemo/util/crop/ImageList;->thumbids:[J

    move-object/from16 v17, v0

    .line 143
    .local v17, "thumbnailIds":[J
    sget-object v2, Lcom/liquable/nemo/util/crop/LocalDataSource;->sThumbnailCache:Lcom/liquable/nemo/util/crop/DiskCache;

    .line 144
    .local v2, "thumbnailCache":Lcom/liquable/nemo/util/crop/DiskCache;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    move/from16 v0, v16

    if-ge v12, v0, :cond_4

    .line 145
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    :goto_2
    return-void

    .line 139
    .end local v2    # "thumbnailCache":Lcom/liquable/nemo/util/crop/DiskCache;
    .end local v12    # "i":I
    .end local v13    # "ids":[J
    .end local v16    # "size":I
    .end local v17    # "thumbnailIds":[J
    .end local v20    # "timestamp":[J
    :cond_0
    iget-object v1, v14, Lcom/liquable/nemo/util/crop/ImageList;->ids:[J

    array-length v0, v1

    move/from16 v16, v0

    goto :goto_0

    .line 148
    .restart local v2    # "thumbnailCache":Lcom/liquable/nemo/util/crop/DiskCache;
    .restart local v12    # "i":I
    .restart local v13    # "ids":[J
    .restart local v16    # "size":I
    .restart local v17    # "thumbnailIds":[J
    .restart local v20    # "timestamp":[J
    :cond_1
    aget-wide v5, v13, v12

    .line 149
    .local v5, "id":J
    aget-wide v18, v20, v12

    .line 150
    .local v18, "timeModifiedInSec":J
    aget-wide v3, v17, v12

    .line 151
    .local v3, "thumbnailId":J
    invoke-static {v3, v4}, Lcom/liquable/nemo/util/crop/CacheService;->isInThumbnailerSkipList(J)Z

    move-result v1

    if-nez v1, :cond_3

    .line 152
    const-wide/16 v7, 0x3e8

    mul-long v7, v7, v18

    invoke-virtual {v2, v3, v4, v7, v8}, Lcom/liquable/nemo/util/crop/DiskCache;->isDataAvailable(JJ)Z

    move-result v1

    if-nez v1, :cond_3

    .line 153
    const/4 v7, 0x0

    const/16 v8, 0x80

    const/16 v9, 0x60

    const-wide/16 v10, 0x3e8

    mul-long v10, v10, v18

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v11}, Lcom/liquable/nemo/util/crop/CacheService;->buildThumbnailForId(Landroid/content/Context;Lcom/liquable/nemo/util/crop/DiskCache;JJZIIJ)[B

    move-result-object v15

    .line 161
    .local v15, "retVal":[B
    if-eqz v15, :cond_2

    array-length v1, v15

    if-nez v1, :cond_3

    .line 164
    :cond_2
    invoke-static {v3, v4}, Lcom/liquable/nemo/util/crop/CacheService;->addToThumbnailerSkipList(J)V

    .line 144
    .end local v15    # "retVal":[B
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 169
    .end local v3    # "thumbnailId":J
    .end local v5    # "id":J
    .end local v18    # "timeModifiedInSec":J
    :cond_4
    invoke-virtual {v2}, Lcom/liquable/nemo/util/crop/DiskCache;->flush()V

    .line 171
    const-string/jumbo v1, "CacheService"

    const-string/jumbo v7, "DiskCache ready for all thumbnails."

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static final computeDirtySets(Landroid/content/Context;)[J
    .locals 42
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 176
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 177
    .local v3, "uriImages":Landroid/net/Uri;
    sget-object v38, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 178
    .local v38, "uriVideos":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 179
    .local v2, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v39, "bucket_id!=0) GROUP BY (bucket_id "

    .line 182
    .local v39, "where":Ljava/lang/String;
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v35, "retVal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :try_start_0
    sget-object v4, Lcom/liquable/nemo/util/crop/CacheService;->SENSE_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v5, "bucket_id!=0) GROUP BY (bucket_id "

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 185
    .local v17, "cursorImages":Landroid/database/Cursor;
    sget-object v6, Lcom/liquable/nemo/util/crop/CacheService;->SENSE_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v7, "bucket_id!=0) GROUP BY (bucket_id "

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    move-object/from16 v5, v38

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 186
    .local v18, "cursorVideos":Landroid/database/Cursor;
    const/4 v4, 0x2

    new-array v0, v4, [Landroid/database/Cursor;

    move-object/from16 v19, v0

    .line 187
    .local v19, "cursors":[Landroid/database/Cursor;
    const/4 v4, 0x0

    aput-object v17, v19, v4

    .line 188
    const/4 v4, 0x1

    aput-object v18, v19, v4

    .line 189
    new-instance v16, Landroid/database/MergeCursor;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 190
    .local v16, "cursor":Landroid/database/MergeCursor;
    new-instance v37, Ljava/util/ArrayList;

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v37, "setIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v27, "maxAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .local v14, "counts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Landroid/database/MergeCursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 196
    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/database/MergeCursor;->getLong(I)J

    move-result-wide v5

    .line 197
    .local v5, "setId":J
    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/database/MergeCursor;->getLong(I)J

    move-result-wide v25

    .line 198
    .local v25, "maxAdd":J
    const/4 v4, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/database/MergeCursor;->getInt(I)I

    move-result v13

    .line 200
    .local v13, "count":I
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 201
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v24

    .line 202
    .local v24, "index":I
    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v4, v7, v25

    if-gez v4, :cond_1

    .line 203
    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_1
    move/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v14, v0, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 211
    .end local v24    # "index":I
    :goto_0
    invoke-virtual/range {v16 .. v16}, Landroid/database/MergeCursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 213
    .end local v5    # "setId":J
    .end local v13    # "count":I
    .end local v25    # "maxAdd":J
    :cond_2
    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v30

    .line 214
    .local v30, "numSets":I
    const/4 v15, 0x0

    .line 215
    .local v15, "ctr":I
    if-lez v30, :cond_5

    .line 216
    const/4 v11, 0x0

    .line 218
    .local v11, "allDirty":Z
    :cond_3
    move-object/from16 v0, v37

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 219
    .restart local v5    # "setId":J
    if-eqz v11, :cond_7

    .line 220
    move-object/from16 v0, v35

    invoke-static {v0, v5, v6}, Lcom/liquable/nemo/util/crop/CacheService;->addNoDupe(Ljava/util/ArrayList;J)V

    .line 248
    :cond_4
    :goto_1
    add-int/lit8 v15, v15, 0x1

    .line 249
    move/from16 v0, v30

    if-lt v15, v0, :cond_3

    .line 251
    sget-object v4, Lcom/liquable/nemo/util/crop/CacheService;->sAlbumCache:Lcom/liquable/nemo/util/crop/DiskCache;

    const-wide/16 v7, -0x1

    const-wide/16 v40, 0x0

    move-wide/from16 v0, v40

    invoke-virtual {v4, v7, v8, v0, v1}, Lcom/liquable/nemo/util/crop/DiskCache;->get(JJ)[B

    move-result-object v10

    .line 252
    .local v10, "albumData":[B
    if-eqz v10, :cond_5

    array-length v4, v10

    if-lez v4, :cond_5

    .line 253
    new-instance v22, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v8, 0x100

    invoke-direct {v4, v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    .local v22, "dis":Ljava/io/DataInputStream;
    :try_start_2
    invoke-virtual/range {v22 .. v22}, Ljava/io/DataInputStream;->readInt()I

    move-result v28

    .line 257
    .local v28, "numAlbums":I
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_2
    move/from16 v0, v23

    move/from16 v1, v28

    if-ge v0, v1, :cond_5

    .line 258
    invoke-virtual/range {v22 .. v22}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v5

    .line 259
    invoke-static/range {v22 .. v22}, Lcom/liquable/nemo/util/crop/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    .line 260
    invoke-virtual/range {v22 .. v22}, Ljava/io/DataInputStream;->readBoolean()Z

    .line 261
    invoke-virtual/range {v22 .. v22}, Ljava/io/DataInputStream;->readBoolean()Z

    .line 262
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 264
    invoke-static {}, Lcom/liquable/nemo/util/crop/CacheService;->markDirty()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 274
    .end local v5    # "setId":J
    .end local v10    # "albumData":[B
    .end local v11    # "allDirty":Z
    .end local v22    # "dis":Ljava/io/DataInputStream;
    .end local v23    # "i":I
    .end local v28    # "numAlbums":I
    :cond_5
    :goto_3
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Landroid/database/MergeCursor;->close()V

    .line 276
    sget-object v4, Lcom/liquable/nemo/util/crop/CacheService;->sMetaAlbumCache:Lcom/liquable/nemo/util/crop/DiskCache;

    invoke-virtual {v4}, Lcom/liquable/nemo/util/crop/DiskCache;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 281
    .end local v14    # "counts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v15    # "ctr":I
    .end local v16    # "cursor":Landroid/database/MergeCursor;
    .end local v17    # "cursorImages":Landroid/database/Cursor;
    .end local v18    # "cursorVideos":Landroid/database/Cursor;
    .end local v19    # "cursors":[Landroid/database/Cursor;
    .end local v27    # "maxAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v30    # "numSets":I
    .end local v37    # "setIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :goto_4
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v29

    .line 282
    .local v29, "numIds":I
    move/from16 v0, v29

    new-array v0, v0, [J

    move-object/from16 v36, v0

    .line 283
    .local v36, "retValIds":[J
    const/16 v23, 0x0

    .restart local v23    # "i":I
    :goto_5
    move/from16 v0, v23

    move/from16 v1, v29

    if-ge v0, v1, :cond_c

    .line 284
    move-object/from16 v0, v35

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    aput-wide v7, v36, v23

    .line 283
    add-int/lit8 v23, v23, 0x1

    goto :goto_5

    .line 207
    .end local v23    # "i":I
    .end local v29    # "numIds":I
    .end local v36    # "retValIds":[J
    .restart local v5    # "setId":J
    .restart local v13    # "count":I
    .restart local v14    # "counts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v16    # "cursor":Landroid/database/MergeCursor;
    .restart local v17    # "cursorImages":Landroid/database/Cursor;
    .restart local v18    # "cursorVideos":Landroid/database/Cursor;
    .restart local v19    # "cursors":[Landroid/database/Cursor;
    .restart local v25    # "maxAdd":J
    .restart local v27    # "maxAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v37    # "setIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_6
    :try_start_4
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 274
    .end local v5    # "setId":J
    .end local v13    # "count":I
    .end local v25    # "maxAdd":J
    :catchall_0
    move-exception v4

    :try_start_5
    invoke-virtual/range {v16 .. v16}, Landroid/database/MergeCursor;->close()V

    throw v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 277
    .end local v14    # "counts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v16    # "cursor":Landroid/database/MergeCursor;
    .end local v17    # "cursorImages":Landroid/database/Cursor;
    .end local v18    # "cursorVideos":Landroid/database/Cursor;
    .end local v19    # "cursors":[Landroid/database/Cursor;
    .end local v27    # "maxAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v37    # "setIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catch_0
    move-exception v4

    goto :goto_4

    .line 222
    .restart local v5    # "setId":J
    .restart local v11    # "allDirty":Z
    .restart local v14    # "counts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v15    # "ctr":I
    .restart local v16    # "cursor":Landroid/database/MergeCursor;
    .restart local v17    # "cursorImages":Landroid/database/Cursor;
    .restart local v18    # "cursorVideos":Landroid/database/Cursor;
    .restart local v19    # "cursors":[Landroid/database/Cursor;
    .restart local v27    # "maxAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v30    # "numSets":I
    .restart local v37    # "setIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_7
    :try_start_6
    sget-object v4, Lcom/liquable/nemo/util/crop/CacheService;->sAlbumCache:Lcom/liquable/nemo/util/crop/DiskCache;

    const-wide/16 v7, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/liquable/nemo/util/crop/DiskCache;->isDataAvailable(JJ)Z

    move-result v12

    .line 223
    .local v12, "contains":Z
    if-nez v12, :cond_8

    .line 225
    invoke-static {}, Lcom/liquable/nemo/util/crop/CacheService;->markDirty()V

    .line 226
    move-object/from16 v0, v35

    invoke-static {v0, v5, v6}, Lcom/liquable/nemo/util/crop/CacheService;->addNoDupe(Ljava/util/ArrayList;J)V

    .line 227
    const/4 v11, 0x1

    .line 229
    :cond_8
    if-nez v11, :cond_4

    .line 230
    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    .line 231
    .restart local v25    # "maxAdd":J
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 232
    .restart local v13    # "count":I
    sget-object v4, Lcom/liquable/nemo/util/crop/CacheService;->sMetaAlbumCache:Lcom/liquable/nemo/util/crop/DiskCache;

    const-wide/16 v7, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/liquable/nemo/util/crop/DiskCache;->get(JJ)[B

    move-result-object v20

    .line 233
    .local v20, "data":[B
    const/4 v4, 0x2

    new-array v0, v4, [J

    move-object/from16 v21, v0

    .line 234
    .local v21, "dataLong":[J
    if-eqz v20, :cond_9

    .line 235
    invoke-static/range {v20 .. v20}, Lcom/liquable/nemo/util/crop/CacheService;->toLongArray([B)[J

    move-result-object v21

    .line 237
    :cond_9
    const/4 v4, 0x0

    aget-wide v33, v21, v4

    .line 238
    .local v33, "oldMaxAdded":J
    const/4 v4, 0x1

    aget-wide v31, v21, v4

    .line 239
    .local v31, "oldCount":J
    cmp-long v4, v25, v33

    if-gtz v4, :cond_a

    int-to-long v7, v13

    cmp-long v4, v31, v7

    if-eqz v4, :cond_4

    .line 240
    :cond_a
    invoke-static {v5, v6}, Lcom/liquable/nemo/util/crop/CacheService;->markDirty(J)V

    .line 241
    move-object/from16 v0, v35

    invoke-static {v0, v5, v6}, Lcom/liquable/nemo/util/crop/CacheService;->addNoDupe(Ljava/util/ArrayList;J)V

    .line 242
    const/4 v4, 0x0

    aput-wide v25, v21, v4

    .line 243
    const/4 v4, 0x1

    int-to-long v7, v13

    aput-wide v7, v21, v4

    .line 244
    sget-object v4, Lcom/liquable/nemo/util/crop/CacheService;->sMetaAlbumCache:Lcom/liquable/nemo/util/crop/DiskCache;

    invoke-static/range {v21 .. v21}, Lcom/liquable/nemo/util/crop/CacheService;->longArrayToByteArray([J)[B

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/liquable/nemo/util/crop/DiskCache;->put(J[BJ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 257
    .end local v12    # "contains":Z
    .end local v13    # "count":I
    .end local v20    # "data":[B
    .end local v21    # "dataLong":[J
    .end local v25    # "maxAdd":J
    .end local v31    # "oldCount":J
    .end local v33    # "oldMaxAdded":J
    .restart local v10    # "albumData":[B
    .restart local v22    # "dis":Ljava/io/DataInputStream;
    .restart local v23    # "i":I
    .restart local v28    # "numAlbums":I
    :cond_b
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_2

    .line 286
    .end local v5    # "setId":J
    .end local v10    # "albumData":[B
    .end local v11    # "allDirty":Z
    .end local v14    # "counts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v15    # "ctr":I
    .end local v16    # "cursor":Landroid/database/MergeCursor;
    .end local v17    # "cursorImages":Landroid/database/Cursor;
    .end local v18    # "cursorVideos":Landroid/database/Cursor;
    .end local v19    # "cursors":[Landroid/database/Cursor;
    .end local v22    # "dis":Ljava/io/DataInputStream;
    .end local v27    # "maxAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v28    # "numAlbums":I
    .end local v30    # "numSets":I
    .end local v37    # "setIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v29    # "numIds":I
    .restart local v36    # "retValIds":[J
    :cond_c
    return-object v36

    .line 268
    .end local v23    # "i":I
    .end local v29    # "numIds":I
    .end local v36    # "retValIds":[J
    .restart local v5    # "setId":J
    .restart local v10    # "albumData":[B
    .restart local v11    # "allDirty":Z
    .restart local v14    # "counts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v15    # "ctr":I
    .restart local v16    # "cursor":Landroid/database/MergeCursor;
    .restart local v17    # "cursorImages":Landroid/database/Cursor;
    .restart local v18    # "cursorVideos":Landroid/database/Cursor;
    .restart local v19    # "cursors":[Landroid/database/Cursor;
    .restart local v22    # "dis":Ljava/io/DataInputStream;
    .restart local v27    # "maxAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v30    # "numSets":I
    .restart local v37    # "setIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catch_1
    move-exception v4

    goto/16 :goto_3
.end method

.method private static final concat([B[B)[B
    .locals 4
    .param p0, "A"    # [B
    .param p1, "B"    # [B

    .prologue
    const/4 v3, 0x0

    .line 290
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 291
    .local v0, "C":[B
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 292
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    return-object v0
.end method

.method public static final fetchDateTaken(Lcom/liquable/nemo/util/crop/MediaItem;)J
    .locals 9
    .param p0, "item"    # Lcom/liquable/nemo/util/crop/MediaItem;

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/MediaItem;->isDateTakenValid()Z

    move-result v6

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mTriedRetrievingExifDateTaken:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mFilePath:Ljava/lang/String;

    const-string/jumbo v7, ".jpg"

    .line 300
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mFilePath:Ljava/lang/String;

    const-string/jumbo v7, ".jpeg"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 303
    :cond_0
    :try_start_0
    const-string/jumbo v6, "CacheService"

    const-string/jumbo v7, "Parsing date taken from exif"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    new-instance v3, Landroid/media/ExifInterface;

    iget-object v6, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-direct {v3, v6}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 306
    .local v3, "exif":Landroid/media/ExifInterface;
    const-string/jumbo v6, "DateTime"

    invoke-virtual {v3, v6}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 307
    .local v1, "dateTakenStr":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 309
    :try_start_1
    sget-object v6, Lcom/liquable/nemo/util/crop/CacheService;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v6, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 310
    .local v0, "dateTaken":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-wide v6

    .line 331
    .end local v0    # "dateTaken":Ljava/util/Date;
    .end local v1    # "dateTakenStr":Ljava/lang/String;
    .end local v3    # "exif":Landroid/media/ExifInterface;
    :goto_0
    return-wide v6

    .line 311
    .restart local v1    # "dateTakenStr":Ljava/lang/String;
    .restart local v3    # "exif":Landroid/media/ExifInterface;
    :catch_0
    move-exception v4

    .line 313
    .local v4, "pe":Ljava/text/ParseException;
    :try_start_2
    sget-object v6, Lcom/liquable/nemo/util/crop/CacheService;->mAltDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v6, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 314
    .restart local v0    # "dateTaken":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v6

    goto :goto_0

    .line 315
    .end local v0    # "dateTaken":Ljava/util/Date;
    :catch_1
    move-exception v5

    .line 317
    .local v5, "pe2":Ljava/text/ParseException;
    :try_start_3
    const-string/jumbo v6, "CacheService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to parse date out of string - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 329
    .end local v1    # "dateTakenStr":Ljava/lang/String;
    .end local v3    # "exif":Landroid/media/ExifInterface;
    .end local v4    # "pe":Ljava/text/ParseException;
    .end local v5    # "pe2":Ljava/text/ParseException;
    :cond_1
    :goto_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mTriedRetrievingExifDateTaken:Z

    .line 331
    :cond_2
    const-wide/16 v6, -0x1

    goto :goto_0

    .line 322
    :catch_2
    move-exception v2

    .line 324
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "CacheService"

    const-string/jumbo v7, "Error reading Exif information, probably not a jpeg."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static final findSet(JLcom/liquable/nemo/util/crop/LongSparseArray;)Lcom/liquable/nemo/util/crop/MediaSet;
    .locals 1
    .param p0, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/liquable/nemo/util/crop/LongSparseArray",
            "<",
            "Lcom/liquable/nemo/util/crop/MediaSet;",
            ">;)",
            "Lcom/liquable/nemo/util/crop/MediaSet;"
        }
    .end annotation

    .prologue
    .line 338
    .local p2, "acceleratedTable":Lcom/liquable/nemo/util/crop/LongSparseArray;, "Lcom/liquable/nemo/util/crop/LongSparseArray<Lcom/liquable/nemo/util/crop/MediaSet;>;"
    invoke-virtual {p2, p0, p1}, Lcom/liquable/nemo/util/crop/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/util/crop/MediaSet;

    return-object v0
.end method

.method public static final getCachePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "subFolderName"    # Ljava/lang/String;

    .prologue
    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/Android/data/com.cooliris.media/cache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getImageList(Landroid/content/Context;)Lcom/liquable/nemo/util/crop/ImageList;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 347
    sget-object v2, Lcom/liquable/nemo/util/crop/CacheService;->sList:Lcom/liquable/nemo/util/crop/ImageList;

    if-eqz v2, :cond_1

    .line 348
    sget-object v9, Lcom/liquable/nemo/util/crop/CacheService;->sList:Lcom/liquable/nemo/util/crop/ImageList;

    .line 385
    :cond_0
    :goto_0
    return-object v9

    .line 350
    :cond_1
    new-instance v9, Lcom/liquable/nemo/util/crop/ImageList;

    invoke-direct {v9}, Lcom/liquable/nemo/util/crop/ImageList;-><init>()V

    .line 351
    .local v9, "list":Lcom/liquable/nemo/util/crop/ImageList;
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 352
    .local v1, "uriImages":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 354
    .local v0, "cr":Landroid/content/ContentResolver;
    :try_start_0
    sget-object v2, Lcom/liquable/nemo/util/crop/CacheService;->THUMBNAIL_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 355
    .local v7, "cursorImages":Landroid/database/Cursor;
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 356
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 357
    .local v11, "size":I
    new-array v8, v11, [J

    .line 358
    .local v8, "ids":[J
    new-array v12, v11, [J

    .line 359
    .local v12, "thumbnailIds":[J
    new-array v13, v11, [J

    .line 360
    .local v13, "timestamp":[J
    new-array v10, v11, [I

    .line 361
    .local v10, "orientation":[I
    const/4 v6, 0x0

    .line 363
    .local v6, "ctr":I
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 372
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 373
    iput-object v8, v9, Lcom/liquable/nemo/util/crop/ImageList;->ids:[J

    .line 374
    iput-object v12, v9, Lcom/liquable/nemo/util/crop/ImageList;->thumbids:[J

    .line 375
    iput-object v13, v9, Lcom/liquable/nemo/util/crop/ImageList;->timestamp:[J

    .line 376
    iput-object v10, v9, Lcom/liquable/nemo/util/crop/ImageList;->orientation:[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    .end local v6    # "ctr":I
    .end local v7    # "cursorImages":Landroid/database/Cursor;
    .end local v8    # "ids":[J
    .end local v10    # "orientation":[I
    .end local v11    # "size":I
    .end local v12    # "thumbnailIds":[J
    .end local v13    # "timestamp":[J
    :cond_3
    :goto_2
    sget-object v2, Lcom/liquable/nemo/util/crop/CacheService;->sList:Lcom/liquable/nemo/util/crop/ImageList;

    if-nez v2, :cond_0

    .line 383
    sput-object v9, Lcom/liquable/nemo/util/crop/CacheService;->sList:Lcom/liquable/nemo/util/crop/ImageList;

    goto :goto_0

    .line 366
    .restart local v6    # "ctr":I
    .restart local v7    # "cursorImages":Landroid/database/Cursor;
    .restart local v8    # "ids":[J
    .restart local v10    # "orientation":[I
    .restart local v11    # "size":I
    .restart local v12    # "thumbnailIds":[J
    .restart local v13    # "timestamp":[J
    :cond_4
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, v8, v6

    .line 367
    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, v13, v6

    .line 368
    const/4 v2, 0x2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/liquable/nemo/util/crop/Utils;->Crc64Long(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v12, v6

    .line 369
    const/4 v2, 0x3

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, v10, v6

    .line 370
    add-int/lit8 v6, v6, 0x1

    .line 371
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 378
    .end local v6    # "ctr":I
    .end local v7    # "cursorImages":Landroid/database/Cursor;
    .end local v8    # "ids":[J
    .end local v10    # "orientation":[I
    .end local v11    # "size":I
    .end local v12    # "thumbnailIds":[J
    .end local v13    # "timestamp":[J
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method private static final getLocaleForAlbumCache()Ljava/util/Locale;
    .locals 14

    .prologue
    const/4 v8, 0x0

    .line 389
    sget-object v9, Lcom/liquable/nemo/util/crop/CacheService;->sAlbumCache:Lcom/liquable/nemo/util/crop/DiskCache;

    const-wide/16 v10, -0x5

    const-wide/16 v12, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/liquable/nemo/util/crop/DiskCache;->get(JJ)[B

    move-result-object v2

    .line 390
    .local v2, "data":[B
    if-eqz v2, :cond_3

    array-length v9, v2

    if-lez v9, :cond_3

    .line 391
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 392
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 394
    .local v3, "dis":Ljava/io/DataInputStream;
    :try_start_0
    invoke-static {v3}, Lcom/liquable/nemo/util/crop/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    .line 395
    .local v1, "country":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 396
    const-string/jumbo v1, ""

    .line 398
    :cond_0
    invoke-static {v3}, Lcom/liquable/nemo/util/crop/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    .line 399
    .local v5, "language":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 400
    const-string/jumbo v5, ""

    .line 402
    :cond_1
    invoke-static {v3}, Lcom/liquable/nemo/util/crop/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v7

    .line 403
    .local v7, "variant":Ljava/lang/String;
    if-nez v7, :cond_2

    .line 404
    const-string/jumbo v7, ""

    .line 406
    :cond_2
    new-instance v6, Ljava/util/Locale;

    invoke-direct {v6, v5, v1, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    .local v6, "locale":Ljava/util/Locale;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 408
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v1    # "country":Ljava/lang/String;
    .end local v3    # "dis":Ljava/io/DataInputStream;
    .end local v5    # "language":Ljava/lang/String;
    .end local v6    # "locale":Ljava/util/Locale;
    .end local v7    # "variant":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 410
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "dis":Ljava/io/DataInputStream;
    :catch_0
    move-exception v4

    .line 413
    .local v4, "e":Ljava/io/IOException;
    const-string/jumbo v9, "CacheService"

    const-string/jumbo v10, "Error reading locale from cache."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v8

    .line 415
    goto :goto_0

    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v3    # "dis":Ljava/io/DataInputStream;
    .end local v4    # "e":Ljava/io/IOException;
    :cond_3
    move-object v6, v8

    .line 418
    goto :goto_0
.end method

.method public static final isCacheReady(Z)Z
    .locals 9
    .param p0, "onlyMediaSets"    # Z

    .prologue
    const-wide/16 v7, -0x1

    const-wide/16 v3, -0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v5, 0x0

    .line 422
    if-eqz p0, :cond_2

    .line 423
    sget-object v2, Lcom/liquable/nemo/util/crop/CacheService;->sAlbumCache:Lcom/liquable/nemo/util/crop/DiskCache;

    invoke-virtual {v2, v7, v8, v5, v6}, Lcom/liquable/nemo/util/crop/DiskCache;->get(JJ)[B

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/liquable/nemo/util/crop/CacheService;->sAlbumCache:Lcom/liquable/nemo/util/crop/DiskCache;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/liquable/nemo/util/crop/DiskCache;->get(JJ)[B

    move-result-object v2

    if-nez v2, :cond_1

    .line 427
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 423
    goto :goto_0

    .line 426
    :cond_2
    sget-object v2, Lcom/liquable/nemo/util/crop/CacheService;->sAlbumCache:Lcom/liquable/nemo/util/crop/DiskCache;

    invoke-virtual {v2, v7, v8, v5, v6}, Lcom/liquable/nemo/util/crop/DiskCache;->get(JJ)[B

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/liquable/nemo/util/crop/CacheService;->sAlbumCache:Lcom/liquable/nemo/util/crop/DiskCache;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/liquable/nemo/util/crop/DiskCache;->get(JJ)[B

    move-result-object v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/liquable/nemo/util/crop/CacheService;->sAlbumCache:Lcom/liquable/nemo/util/crop/DiskCache;

    const-wide/16 v3, -0x4

    .line 427
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/liquable/nemo/util/crop/DiskCache;->get(JJ)[B

    move-result-object v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private static isInThumbnailerSkipList(J)Z
    .locals 4
    .param p0, "thumbnailId"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 432
    sget-object v1, Lcom/liquable/nemo/util/crop/CacheService;->sSkipThumbnailIds:Lcom/liquable/nemo/util/crop/DiskCache;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/liquable/nemo/util/crop/CacheService;->sSkipThumbnailIds:Lcom/liquable/nemo/util/crop/DiskCache;

    invoke-virtual {v1, p0, p1, v2, v3}, Lcom/liquable/nemo/util/crop/DiskCache;->isDataAvailable(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 433
    sget-object v1, Lcom/liquable/nemo/util/crop/CacheService;->sSkipThumbnailIds:Lcom/liquable/nemo/util/crop/DiskCache;

    invoke-virtual {v1, p0, p1, v2, v3}, Lcom/liquable/nemo/util/crop/DiskCache;->get(JJ)[B

    move-result-object v0

    .line 434
    .local v0, "data":[B
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 435
    const/4 v1, 0x1

    .line 438
    .end local v0    # "data":[B
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final isPresentInCache(J)Z
    .locals 3
    .param p0, "setId"    # J

    .prologue
    .line 442
    sget-object v0, Lcom/liquable/nemo/util/crop/CacheService;->sAlbumCache:Lcom/liquable/nemo/util/crop/DiskCache;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/liquable/nemo/util/crop/DiskCache;->get(JJ)[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final loadMediaItemsIntoMediaFeed(Landroid/content/Context;Lcom/liquable/nemo/util/crop/MediaFeed;Lcom/liquable/nemo/util/crop/MediaSet;IIZZ)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "feed"    # Lcom/liquable/nemo/util/crop/MediaFeed;
    .param p2, "set"    # Lcom/liquable/nemo/util/crop/MediaSet;
    .param p3, "rangeStart"    # I
    .param p4, "rangeEnd"    # I
    .param p5, "includeImages"    # Z
    .param p6, "includeVideos"    # Z

    .prologue
    .line 452
    invoke-static/range {p0 .. p0}, Lcom/liquable/nemo/util/crop/CacheService;->syncCache(Landroid/content/Context;)V

    .line 453
    sget-object v12, Lcom/liquable/nemo/util/crop/CacheService;->sAlbumCache:Lcom/liquable/nemo/util/crop/DiskCache;

    move-object/from16 v0, p2

    iget-wide v13, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mId:J

    const-wide/16 v15, 0x0

    invoke-virtual/range {v12 .. v16}, Lcom/liquable/nemo/util/crop/DiskCache;->get(JJ)[B

    move-result-object v2

    .line 454
    .local v2, "albumData":[B
    if-eqz v2, :cond_7

    move-object/from16 v0, p2

    iget v12, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mNumItemsLoaded:I

    invoke-virtual/range {p2 .. p2}, Lcom/liquable/nemo/util/crop/MediaSet;->getNumExpectedItems()I

    move-result v13

    if-ge v12, v13, :cond_7

    .line 455
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v12, Ljava/io/BufferedInputStream;

    new-instance v13, Ljava/io/ByteArrayInputStream;

    invoke-direct {v13, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v14, 0x100

    invoke-direct {v12, v13, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v4, v12}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 458
    .local v4, "dis":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 459
    .local v9, "numItems":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/liquable/nemo/util/crop/MediaSet;->setNumExpectedItems(I)V

    .line 460
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v12

    move-object/from16 v0, p2

    iput-wide v12, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mMinTimestamp:J

    .line 461
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v12

    move-object/from16 v0, p2

    iput-wide v12, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mMaxTimestamp:J

    .line 462
    const/4 v10, 0x0

    .line 463
    .local v10, "reuseItem":Lcom/liquable/nemo/util/crop/MediaItem;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v9, :cond_6

    .line 464
    if-nez v10, :cond_3

    new-instance v7, Lcom/liquable/nemo/util/crop/MediaItem;

    invoke-direct {v7}, Lcom/liquable/nemo/util/crop/MediaItem;-><init>()V

    .line 466
    .local v7, "item":Lcom/liquable/nemo/util/crop/MediaItem;
    :goto_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v12

    iput-wide v12, v7, Lcom/liquable/nemo/util/crop/MediaItem;->mId:J

    .line 467
    invoke-static {v4}, Lcom/liquable/nemo/util/crop/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lcom/liquable/nemo/util/crop/MediaItem;->mCaption:Ljava/lang/String;

    .line 468
    invoke-static {v4}, Lcom/liquable/nemo/util/crop/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lcom/liquable/nemo/util/crop/MediaItem;->mMimeType:Ljava/lang/String;

    .line 469
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    invoke-virtual {v7, v12}, Lcom/liquable/nemo/util/crop/MediaItem;->setMediaType(I)V

    .line 470
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v12

    iput-wide v12, v7, Lcom/liquable/nemo/util/crop/MediaItem;->mLatitude:D

    .line 471
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v12

    iput-wide v12, v7, Lcom/liquable/nemo/util/crop/MediaItem;->mLongitude:D

    .line 472
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v12

    iput-wide v12, v7, Lcom/liquable/nemo/util/crop/MediaItem;->mDateTakenInMs:J

    .line 473
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v12

    iput-boolean v12, v7, Lcom/liquable/nemo/util/crop/MediaItem;->mTriedRetrievingExifDateTaken:Z

    .line 474
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v12

    iput-wide v12, v7, Lcom/liquable/nemo/util/crop/MediaItem;->mDateAddedInSec:J

    .line 475
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v12

    iput-wide v12, v7, Lcom/liquable/nemo/util/crop/MediaItem;->mDateModifiedInSec:J

    .line 476
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    iput v12, v7, Lcom/liquable/nemo/util/crop/MediaItem;->mDurationInSec:I

    .line 477
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    int-to-float v12, v12

    iput v12, v7, Lcom/liquable/nemo/util/crop/MediaItem;->mRotation:F

    .line 478
    invoke-static {v4}, Lcom/liquable/nemo/util/crop/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lcom/liquable/nemo/util/crop/MediaItem;->mFilePath:Ljava/lang/String;

    .line 482
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lcom/liquable/nemo/util/crop/MediaSet;->lookupContainsItem(Lcom/liquable/nemo/util/crop/MediaItem;)Z

    move-result v11

    .line 483
    .local v11, "setLookupContainsItem":Z
    if-eqz v11, :cond_4

    .line 484
    move-object v10, v7

    .line 488
    :goto_2
    invoke-virtual {v7}, Lcom/liquable/nemo/util/crop/MediaItem;->getMediaType()I

    move-result v8

    .line 489
    .local v8, "itemMediaType":I
    if-nez v8, :cond_0

    if-nez p5, :cond_1

    :cond_0
    const/4 v12, 0x1

    if-ne v8, v12, :cond_2

    if-eqz p6, :cond_2

    .line 490
    :cond_1
    if-nez v8, :cond_5

    sget-object v3, Lcom/liquable/nemo/util/crop/CacheService;->BASE_CONTENT_STRING_IMAGES:Ljava/lang/String;

    .line 492
    .local v3, "baseUri":Ljava/lang/String;
    :goto_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v13, v7, Lcom/liquable/nemo/util/crop/MediaItem;->mId:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lcom/liquable/nemo/util/crop/MediaItem;->mContentUri:Ljava/lang/String;

    .line 493
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v7, v1}, Lcom/liquable/nemo/util/crop/MediaFeed;->addItemToMediaSet(Lcom/liquable/nemo/util/crop/MediaItem;Lcom/liquable/nemo/util/crop/MediaSet;)V

    .line 463
    .end local v3    # "baseUri":Ljava/lang/String;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .end local v7    # "item":Lcom/liquable/nemo/util/crop/MediaItem;
    .end local v8    # "itemMediaType":I
    .end local v11    # "setLookupContainsItem":Z
    :cond_3
    move-object v7, v10

    .line 464
    goto/16 :goto_1

    .line 486
    .restart local v7    # "item":Lcom/liquable/nemo/util/crop/MediaItem;
    .restart local v11    # "setLookupContainsItem":Z
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .line 490
    .restart local v8    # "itemMediaType":I
    :cond_5
    sget-object v3, Lcom/liquable/nemo/util/crop/CacheService;->BASE_CONTENT_STRING_VIDEOS:Ljava/lang/String;

    goto :goto_3

    .line 496
    .end local v7    # "item":Lcom/liquable/nemo/util/crop/MediaItem;
    .end local v8    # "itemMediaType":I
    .end local v11    # "setLookupContainsItem":Z
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/liquable/nemo/util/crop/MediaSet;->checkForDeletedItems()V

    .line 497
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    .end local v4    # "dis":Ljava/io/DataInputStream;
    .end local v6    # "i":I
    .end local v9    # "numItems":I
    .end local v10    # "reuseItem":Lcom/liquable/nemo/util/crop/MediaItem;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/liquable/nemo/util/crop/MediaSet;->updateNumExpectedItems()V

    .line 509
    const/4 v12, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/liquable/nemo/util/crop/MediaSet;->generateTitle(Z)V

    .line 510
    return-void

    .line 498
    .restart local v4    # "dis":Ljava/io/DataInputStream;
    :catch_0
    move-exception v5

    .line 499
    .local v5, "e":Ljava/io/IOException;
    const-string/jumbo v12, "CacheService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Error loading items for album "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    sget-object v12, Lcom/liquable/nemo/util/crop/CacheService;->sAlbumCache:Lcom/liquable/nemo/util/crop/DiskCache;

    invoke-virtual {v12}, Lcom/liquable/nemo/util/crop/DiskCache;->deleteAll()V

    .line 501
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-static {v12}, Lcom/liquable/nemo/util/crop/CacheService;->putLocaleForAlbumCache(Ljava/util/Locale;)V

    goto :goto_4

    .line 505
    .end local v4    # "dis":Ljava/io/DataInputStream;
    .end local v5    # "e":Ljava/io/IOException;
    :cond_7
    const-string/jumbo v12, "CacheService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "No items found for album "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public static final loadMediaSet(Landroid/content/Context;Lcom/liquable/nemo/util/crop/MediaFeed;Lcom/liquable/nemo/util/crop/DataSource;J)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "feed"    # Lcom/liquable/nemo/util/crop/MediaFeed;
    .param p2, "source"    # Lcom/liquable/nemo/util/crop/DataSource;
    .param p3, "bucketId"    # J

    .prologue
    .line 516
    invoke-static {p0}, Lcom/liquable/nemo/util/crop/CacheService;->syncCache(Landroid/content/Context;)V

    .line 517
    sget-object v10, Lcom/liquable/nemo/util/crop/CacheService;->sAlbumCache:Lcom/liquable/nemo/util/crop/DiskCache;

    const-wide/16 v11, -0x1

    const-wide/16 v13, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/liquable/nemo/util/crop/DiskCache;->get(JJ)[B

    move-result-object v2

    .line 518
    .local v2, "albumData":[B
    if-eqz v2, :cond_4

    array-length v10, v2

    if-lez v10, :cond_4

    .line 519
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v10, Ljava/io/BufferedInputStream;

    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-direct {v11, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v12, 0x100

    invoke-direct {v10, v11, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v3, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 522
    .local v3, "dis":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 523
    .local v7, "numAlbums":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v7, :cond_1

    .line 524
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    .line 525
    .local v8, "setId":J
    const/4 v6, 0x0

    .line 526
    .local v6, "mediaSet":Lcom/liquable/nemo/util/crop/MediaSet;
    cmp-long v10, v8, p3

    if-nez v10, :cond_2

    .line 527
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Lcom/liquable/nemo/util/crop/MediaFeed;->getMediaSet(J)Lcom/liquable/nemo/util/crop/MediaSet;

    move-result-object v6

    .line 528
    if-nez v6, :cond_0

    .line 529
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v8, v9, v1}, Lcom/liquable/nemo/util/crop/MediaFeed;->addMediaSet(JLcom/liquable/nemo/util/crop/DataSource;)Lcom/liquable/nemo/util/crop/MediaSet;

    move-result-object v6

    .line 534
    :cond_0
    :goto_1
    invoke-static {v3}, Lcom/liquable/nemo/util/crop/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/liquable/nemo/util/crop/MediaSet;->mName:Ljava/lang/String;

    .line 535
    cmp-long v10, v8, p3

    if-nez v10, :cond_3

    .line 536
    const-wide/16 v10, -0x1

    iput-wide v10, v6, Lcom/liquable/nemo/util/crop/MediaSet;->mPicasaAlbumId:J

    .line 537
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/liquable/nemo/util/crop/MediaSet;->generateTitle(Z)V

    .line 551
    .end local v3    # "dis":Ljava/io/DataInputStream;
    .end local v5    # "i":I
    .end local v6    # "mediaSet":Lcom/liquable/nemo/util/crop/MediaSet;
    .end local v7    # "numAlbums":I
    .end local v8    # "setId":J
    :cond_1
    :goto_2
    return-void

    .line 532
    .restart local v3    # "dis":Ljava/io/DataInputStream;
    .restart local v5    # "i":I
    .restart local v6    # "mediaSet":Lcom/liquable/nemo/util/crop/MediaSet;
    .restart local v7    # "numAlbums":I
    .restart local v8    # "setId":J
    :cond_2
    new-instance v6, Lcom/liquable/nemo/util/crop/MediaSet;

    .end local v6    # "mediaSet":Lcom/liquable/nemo/util/crop/MediaSet;
    invoke-direct {v6}, Lcom/liquable/nemo/util/crop/MediaSet;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v6    # "mediaSet":Lcom/liquable/nemo/util/crop/MediaSet;
    goto :goto_1

    .line 523
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 541
    .end local v5    # "i":I
    .end local v6    # "mediaSet":Lcom/liquable/nemo/util/crop/MediaSet;
    .end local v7    # "numAlbums":I
    .end local v8    # "setId":J
    :catch_0
    move-exception v4

    .line 542
    .local v4, "e":Ljava/io/IOException;
    const-string/jumbo v10, "CacheService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Error finding album "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p3

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    sget-object v10, Lcom/liquable/nemo/util/crop/CacheService;->sAlbumCache:Lcom/liquable/nemo/util/crop/DiskCache;

    invoke-virtual {v10}, Lcom/liquable/nemo/util/crop/DiskCache;->deleteAll()V

    .line 544
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-static {v10}, Lcom/liquable/nemo/util/crop/CacheService;->putLocaleForAlbumCache(Ljava/util/Locale;)V

    goto :goto_2

    .line 548
    .end local v3    # "dis":Ljava/io/DataInputStream;
    .end local v4    # "e":Ljava/io/IOException;
    :cond_4
    const-string/jumbo v10, "CacheService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "No album found for album id "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p3

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static final loadMediaSets(Landroid/content/Context;Lcom/liquable/nemo/util/crop/MediaFeed;Lcom/liquable/nemo/util/crop/DataSource;ZZZ)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "feed"    # Lcom/liquable/nemo/util/crop/MediaFeed;
    .param p2, "source"    # Lcom/liquable/nemo/util/crop/DataSource;
    .param p3, "includeImages"    # Z
    .param p4, "includeVideos"    # Z
    .param p5, "moveCameraToFront"    # Z

    .prologue
    .line 560
    invoke-static/range {p0 .. p0}, Lcom/liquable/nemo/util/crop/CacheService;->syncCache(Landroid/content/Context;)V

    .line 561
    sget-object v13, Lcom/liquable/nemo/util/crop/CacheService;->sAlbumCache:Lcom/liquable/nemo/util/crop/DiskCache;

    const-wide/16 v14, -0x1

    const-wide/16 v16, 0x0

    invoke-virtual/range {v13 .. v17}, Lcom/liquable/nemo/util/crop/DiskCache;->get(JJ)[B

    move-result-object v2

    .line 562
    .local v2, "albumData":[B
    if-eqz v2, :cond_6

    array-length v13, v2

    if-lez v13, :cond_6

    .line 563
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v13, Ljava/io/BufferedInputStream;

    new-instance v14, Ljava/io/ByteArrayInputStream;

    invoke-direct {v14, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v15, 0x100

    invoke-direct {v13, v14, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v3, v13}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 566
    .local v3, "dis":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    .line 567
    .local v10, "numAlbums":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v10, :cond_5

    .line 568
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v11

    .line 569
    .local v11, "setId":J
    invoke-static {v3}, Lcom/liquable/nemo/util/crop/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v9

    .line 570
    .local v9, "name":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v5

    .line 571
    .local v5, "hasImages":Z
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v6

    .line 572
    .local v6, "hasVideos":Z
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Lcom/liquable/nemo/util/crop/MediaFeed;->getMediaSet(J)Lcom/liquable/nemo/util/crop/MediaSet;

    move-result-object v8

    .line 573
    .local v8, "mediaSet":Lcom/liquable/nemo/util/crop/MediaSet;
    if-nez v8, :cond_4

    .line 574
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v11, v12, v1}, Lcom/liquable/nemo/util/crop/MediaFeed;->addMediaSet(JLcom/liquable/nemo/util/crop/DataSource;)Lcom/liquable/nemo/util/crop/MediaSet;

    move-result-object v8

    .line 578
    :goto_1
    if-eqz p5, :cond_0

    iget-wide v13, v8, Lcom/liquable/nemo/util/crop/MediaSet;->mId:J

    sget v15, Lcom/liquable/nemo/util/crop/LocalDataSource;->CAMERA_BUCKET_ID:I

    int-to-long v15, v15

    cmp-long v13, v13, v15

    if-nez v13, :cond_0

    .line 579
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/liquable/nemo/util/crop/MediaFeed;->moveSetToFront(Lcom/liquable/nemo/util/crop/MediaSet;)V

    .line 581
    :cond_0
    if-eqz p3, :cond_1

    if-nez v5, :cond_2

    :cond_1
    if-eqz p4, :cond_3

    if-eqz v6, :cond_3

    .line 582
    :cond_2
    iput-object v9, v8, Lcom/liquable/nemo/util/crop/MediaSet;->mName:Ljava/lang/String;

    .line 583
    iput-boolean v5, v8, Lcom/liquable/nemo/util/crop/MediaSet;->mHasImages:Z

    .line 584
    iput-boolean v6, v8, Lcom/liquable/nemo/util/crop/MediaSet;->mHasVideos:Z

    .line 585
    const-wide/16 v13, -0x1

    iput-wide v13, v8, Lcom/liquable/nemo/util/crop/MediaSet;->mPicasaAlbumId:J

    .line 586
    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Lcom/liquable/nemo/util/crop/MediaSet;->generateTitle(Z)V

    .line 567
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 576
    :cond_4
    invoke-virtual {v8}, Lcom/liquable/nemo/util/crop/MediaSet;->refresh()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 589
    .end local v5    # "hasImages":Z
    .end local v6    # "hasVideos":Z
    .end local v7    # "i":I
    .end local v8    # "mediaSet":Lcom/liquable/nemo/util/crop/MediaSet;
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "numAlbums":I
    .end local v11    # "setId":J
    :catch_0
    move-exception v4

    .line 590
    .local v4, "e":Ljava/io/IOException;
    const-string/jumbo v13, "CacheService"

    const-string/jumbo v14, "Error loading albums."

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    sget-object v13, Lcom/liquable/nemo/util/crop/CacheService;->sAlbumCache:Lcom/liquable/nemo/util/crop/DiskCache;

    invoke-virtual {v13}, Lcom/liquable/nemo/util/crop/DiskCache;->deleteAll()V

    .line 592
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-static {v13}, Lcom/liquable/nemo/util/crop/CacheService;->putLocaleForAlbumCache(Ljava/util/Locale;)V

    .line 599
    .end local v3    # "dis":Ljava/io/DataInputStream;
    .end local v4    # "e":Ljava/io/IOException;
    :cond_5
    :goto_2
    return-void

    .line 596
    :cond_6
    const-string/jumbo v13, "CacheService"

    const-string/jumbo v14, "No albums found."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static final longArrayToByteArray([J)[B
    .locals 7
    .param p0, "l"    # [J

    .prologue
    .line 602
    array-length v5, p0

    mul-int/lit8 v5, v5, 0x8

    new-array v0, v5, [B

    .line 603
    .local v0, "bArray":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 604
    .local v1, "bBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v3

    .line 605
    .local v3, "lBuffer":Ljava/nio/LongBuffer;
    array-length v4, p0

    .line 606
    .local v4, "numLongs":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 607
    aget-wide v5, p0, v2

    invoke-virtual {v3, v2, v5, v6}, Ljava/nio/LongBuffer;->put(IJ)Ljava/nio/LongBuffer;

    .line 606
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 609
    :cond_0
    return-object v0
.end method

.method private static final longToByteArray(J)[B
    .locals 4
    .param p0, "l"    # J

    .prologue
    .line 613
    const/16 v3, 0x8

    new-array v0, v3, [B

    .line 614
    .local v0, "bArray":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 615
    .local v1, "bBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v2

    .line 616
    .local v2, "lBuffer":Ljava/nio/LongBuffer;
    const/4 v3, 0x0

    invoke-virtual {v2, v3, p0, p1}, Ljava/nio/LongBuffer;->put(IJ)Ljava/nio/LongBuffer;

    .line 617
    return-object v0
.end method

.method public static final markDirty()V
    .locals 7

    .prologue
    .line 621
    const/4 v0, 0x0

    sput-object v0, Lcom/liquable/nemo/util/crop/CacheService;->sList:Lcom/liquable/nemo/util/crop/ImageList;

    .line 622
    sget-object v6, Lcom/liquable/nemo/util/crop/CacheService;->sCacheLock:Ljava/lang/Object;

    monitor-enter v6

    .line 623
    :try_start_0
    sget-object v0, Lcom/liquable/nemo/util/crop/CacheService;->sAlbumCache:Lcom/liquable/nemo/util/crop/DiskCache;

    const-wide/16 v1, -0x2

    sget-object v3, Lcom/liquable/nemo/util/crop/CacheService;->sDummyData:[B

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/liquable/nemo/util/crop/DiskCache;->put(J[BJ)V

    .line 624
    monitor-exit v6

    .line 625
    return-void

    .line 624
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static final markDirty(J)V
    .locals 11
    .param p0, "id"    # J

    .prologue
    .line 628
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 649
    :goto_0
    return-void

    .line 631
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/liquable/nemo/util/crop/CacheService;->sList:Lcom/liquable/nemo/util/crop/ImageList;

    .line 632
    sget-object v10, Lcom/liquable/nemo/util/crop/CacheService;->sCacheLock:Ljava/lang/Object;

    monitor-enter v10

    .line 633
    :try_start_0
    invoke-static {p0, p1}, Lcom/liquable/nemo/util/crop/CacheService;->longToByteArray(J)[B

    move-result-object v3

    .line 634
    .local v3, "data":[B
    sget-object v0, Lcom/liquable/nemo/util/crop/CacheService;->sAlbumCache:Lcom/liquable/nemo/util/crop/DiskCache;

    const-wide/16 v1, -0x4

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/liquable/nemo/util/crop/DiskCache;->get(JJ)[B

    move-result-object v6

    .line 635
    .local v6, "existingData":[B
    if-eqz v6, :cond_3

    array-length v0, v6

    if-lez v0, :cond_3

    .line 636
    invoke-static {v6}, Lcom/liquable/nemo/util/crop/CacheService;->toLongArray([B)[J

    move-result-object v8

    .line 637
    .local v8, "ids":[J
    array-length v9, v8

    .line 638
    .local v9, "numIds":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v9, :cond_2

    .line 639
    aget-wide v0, v8, v7

    cmp-long v0, v0, p0

    if-nez v0, :cond_1

    .line 640
    monitor-exit v10

    goto :goto_0

    .line 648
    .end local v3    # "data":[B
    .end local v6    # "existingData":[B
    .end local v7    # "i":I
    .end local v8    # "ids":[J
    .end local v9    # "numIds":I
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 638
    .restart local v3    # "data":[B
    .restart local v6    # "existingData":[B
    .restart local v7    # "i":I
    .restart local v8    # "ids":[J
    .restart local v9    # "numIds":I
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 645
    :cond_2
    :try_start_1
    invoke-static {v3, v6}, Lcom/liquable/nemo/util/crop/CacheService;->concat([B[B)[B

    move-result-object v3

    .line 647
    .end local v7    # "i":I
    .end local v8    # "ids":[J
    .end local v9    # "numIds":I
    :cond_3
    sget-object v0, Lcom/liquable/nemo/util/crop/CacheService;->sAlbumCache:Lcom/liquable/nemo/util/crop/DiskCache;

    const-wide/16 v1, -0x4

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/liquable/nemo/util/crop/DiskCache;->put(J[BJ)V

    .line 648
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static final populateMediaItemFromCursor(Lcom/liquable/nemo/util/crop/MediaItem;Landroid/content/ContentResolver;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 6
    .param p0, "item"    # Lcom/liquable/nemo/util/crop/MediaItem;
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "baseUri"    # Ljava/lang/String;

    .prologue
    .line 655
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mId:J

    .line 656
    const/4 v2, 0x1

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mCaption:Ljava/lang/String;

    .line 657
    const/4 v2, 0x2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mMimeType:Ljava/lang/String;

    .line 658
    const/4 v2, 0x3

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mLatitude:D

    .line 659
    const/4 v2, 0x4

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mLongitude:D

    .line 660
    const/4 v2, 0x5

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mDateTakenInMs:J

    .line 661
    const/4 v2, 0x6

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mDateAddedInSec:J

    .line 662
    const/4 v2, 0x7

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mDateModifiedInSec:J

    .line 663
    iget-wide v2, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mDateTakenInMs:J

    iget-wide v4, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mDateModifiedInSec:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 664
    iget-wide v2, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mDateModifiedInSec:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mDateTakenInMs:J

    .line 666
    :cond_0
    const/16 v2, 0x8

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mFilePath:Ljava/lang/String;

    .line 667
    if-eqz p3, :cond_1

    .line 668
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mContentUri:Ljava/lang/String;

    .line 670
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/MediaItem;->getMediaType()I

    move-result v0

    .line 671
    .local v0, "itemMediaType":I
    const/16 v2, 0x9

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 672
    .local v1, "orientationDurationValue":I
    if-nez v0, :cond_2

    .line 673
    int-to-float v2, v1

    iput v2, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mRotation:F

    .line 677
    :goto_0
    return-void

    .line 675
    :cond_2
    iput v1, p0, Lcom/liquable/nemo/util/crop/MediaItem;->mDurationInSec:I

    goto :goto_0
.end method

.method private static final populateMediaItemsForSets(Landroid/content/Context;Ljava/util/ArrayList;Lcom/liquable/nemo/util/crop/LongSparseArray;Z)V
    .locals 28
    .param p0, "context"    # Landroid/content/Context;
    .param p3, "useWhere"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/liquable/nemo/util/crop/MediaSet;",
            ">;",
            "Lcom/liquable/nemo/util/crop/LongSparseArray",
            "<",
            "Lcom/liquable/nemo/util/crop/MediaSet;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 683
    .local p1, "sets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaSet;>;"
    .local p2, "acceleratedSets":Lcom/liquable/nemo/util/crop/LongSparseArray;, "Lcom/liquable/nemo/util/crop/LongSparseArray<Lcom/liquable/nemo/util/crop/MediaSet;>;"
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 778
    :cond_0
    :goto_0
    return-void

    .line 687
    :cond_1
    const-string/jumbo v5, "CacheService"

    const-string/jumbo v7, "Building items."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 690
    .local v4, "uriImages":Landroid/net/Uri;
    sget-object v26, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 691
    .local v26, "uriVideos":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 693
    .local v3, "cr":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 694
    .local v6, "whereClause":Ljava/lang/String;
    if-eqz p3, :cond_4

    .line 695
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 696
    .local v21, "numSets":I
    new-instance v27, Ljava/lang/StringBuffer;

    const-string/jumbo v5, "bucket_id in ("

    move-object/from16 v0, v27

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 697
    .local v27, "whereString":Ljava/lang/StringBuffer;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    .line 698
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/liquable/nemo/util/crop/MediaSet;

    iget-wide v7, v5, Lcom/liquable/nemo/util/crop/MediaSet;->mId:J

    move-object/from16 v0, v27

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 699
    add-int/lit8 v5, v21, -0x1

    move/from16 v0, v18

    if-eq v0, v5, :cond_2

    .line 700
    const-string/jumbo v5, ","

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 697
    :cond_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 703
    :cond_3
    const-string/jumbo v5, ")"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 704
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 706
    const-string/jumbo v5, "CacheService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Updating dirty albums where "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    .end local v18    # "i":I
    .end local v21    # "numSets":I
    .end local v27    # "whereString":Ljava/lang/StringBuffer;
    :cond_4
    :try_start_0
    sget-object v5, Lcom/liquable/nemo/util/crop/CacheService;->PROJECTION_IMAGES:[Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "datetaken ASC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 715
    .local v15, "cursorImages":Landroid/database/Cursor;
    sget-object v9, Lcom/liquable/nemo/util/crop/CacheService;->PROJECTION_VIDEOS:[Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "datetaken ASC"

    move-object v7, v3

    move-object/from16 v8, v26

    move-object v10, v6

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 720
    .local v16, "cursorVideos":Landroid/database/Cursor;
    const/4 v5, 0x2

    new-array v0, v5, [Landroid/database/Cursor;

    move-object/from16 v17, v0

    .line 721
    .local v17, "cursors":[Landroid/database/Cursor;
    const/4 v5, 0x0

    aput-object v15, v17, v5

    .line 722
    const/4 v5, 0x1

    aput-object v16, v17, v5

    .line 723
    new-instance v25, Lcom/liquable/nemo/util/crop/SortCursor;

    const-string/jumbo v5, "datetaken"

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v5, v7, v8}, Lcom/liquable/nemo/util/crop/SortCursor;-><init>([Landroid/database/Cursor;Ljava/lang/String;IZ)V

    .line 727
    .local v25, "sortCursor":Lcom/liquable/nemo/util/crop/SortCursor;
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    .line 731
    if-eqz v25, :cond_9

    :try_start_1
    invoke-virtual/range {v25 .. v25}, Lcom/liquable/nemo/util/crop/SortCursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 732
    invoke-virtual/range {v25 .. v25}, Lcom/liquable/nemo/util/crop/SortCursor;->getCount()I

    move-result v14

    .line 733
    .local v14, "count":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 734
    .restart local v21    # "numSets":I
    div-int v13, v14, v21

    .line 735
    .local v13, "approximateCountPerSet":I
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    .line 736
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/liquable/nemo/util/crop/MediaSet;

    .line 737
    .local v22, "set":Lcom/liquable/nemo/util/crop/MediaSet;
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Lcom/liquable/nemo/util/crop/MediaSet;->setNumExpectedItems(I)V

    .line 735
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 740
    .end local v22    # "set":Lcom/liquable/nemo/util/crop/MediaSet;
    :cond_5
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_7

    .line 764
    if-eqz v25, :cond_0

    .line 765
    :try_start_2
    invoke-virtual/range {v25 .. v25}, Lcom/liquable/nemo/util/crop/SortCursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 768
    .end local v13    # "approximateCountPerSet":I
    .end local v14    # "count":I
    .end local v15    # "cursorImages":Landroid/database/Cursor;
    .end local v16    # "cursorVideos":Landroid/database/Cursor;
    .end local v17    # "cursors":[Landroid/database/Cursor;
    .end local v18    # "i":I
    .end local v21    # "numSets":I
    .end local v25    # "sortCursor":Lcom/liquable/nemo/util/crop/SortCursor;
    :catch_0
    move-exception v5

    .line 772
    :cond_6
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 773
    invoke-static/range {p1 .. p1}, Lcom/liquable/nemo/util/crop/CacheService;->writeItemsToCache(Ljava/util/ArrayList;)V

    .line 775
    const-string/jumbo v5, "CacheService"

    const-string/jumbo v7, "Done building items."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 743
    .restart local v13    # "approximateCountPerSet":I
    .restart local v14    # "count":I
    .restart local v15    # "cursorImages":Landroid/database/Cursor;
    .restart local v16    # "cursorVideos":Landroid/database/Cursor;
    .restart local v17    # "cursors":[Landroid/database/Cursor;
    .restart local v18    # "i":I
    .restart local v21    # "numSets":I
    .restart local v25    # "sortCursor":Lcom/liquable/nemo/util/crop/SortCursor;
    :cond_7
    :try_start_3
    new-instance v20, Lcom/liquable/nemo/util/crop/MediaItem;

    invoke-direct/range {v20 .. v20}, Lcom/liquable/nemo/util/crop/MediaItem;-><init>()V

    .line 744
    .local v20, "item":Lcom/liquable/nemo/util/crop/MediaItem;
    invoke-virtual/range {v25 .. v25}, Lcom/liquable/nemo/util/crop/SortCursor;->getCurrentCursorIndex()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_a

    const/16 v19, 0x1

    .line 745
    .local v19, "isVideo":Z
    :goto_4
    if-eqz v19, :cond_b

    .line 746
    sget-object v5, Lcom/liquable/nemo/util/crop/CacheService;->BASE_CONTENT_STRING_VIDEOS:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-static {v0, v3, v1, v5}, Lcom/liquable/nemo/util/crop/CacheService;->populateVideoItemFromCursor(Lcom/liquable/nemo/util/crop/MediaItem;Landroid/content/ContentResolver;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 756
    :goto_5
    const/16 v5, 0xa

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lcom/liquable/nemo/util/crop/SortCursor;->getLong(I)J

    move-result-wide v23

    .line 757
    .local v23, "setId":J
    move-wide/from16 v0, v23

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/liquable/nemo/util/crop/CacheService;->findSet(JLcom/liquable/nemo/util/crop/LongSparseArray;)Lcom/liquable/nemo/util/crop/MediaSet;

    move-result-object v22

    .line 758
    .restart local v22    # "set":Lcom/liquable/nemo/util/crop/MediaSet;
    if-eqz v22, :cond_8

    .line 759
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/crop/MediaSet;->addItem(Lcom/liquable/nemo/util/crop/MediaItem;)V

    .line 761
    :cond_8
    invoke-virtual/range {v25 .. v25}, Lcom/liquable/nemo/util/crop/SortCursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v5

    if-nez v5, :cond_5

    .line 764
    .end local v13    # "approximateCountPerSet":I
    .end local v14    # "count":I
    .end local v18    # "i":I
    .end local v19    # "isVideo":Z
    .end local v20    # "item":Lcom/liquable/nemo/util/crop/MediaItem;
    .end local v21    # "numSets":I
    .end local v22    # "set":Lcom/liquable/nemo/util/crop/MediaSet;
    .end local v23    # "setId":J
    :cond_9
    if-eqz v25, :cond_6

    .line 765
    :try_start_4
    invoke-virtual/range {v25 .. v25}, Lcom/liquable/nemo/util/crop/SortCursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    .line 744
    .restart local v13    # "approximateCountPerSet":I
    .restart local v14    # "count":I
    .restart local v18    # "i":I
    .restart local v20    # "item":Lcom/liquable/nemo/util/crop/MediaItem;
    .restart local v21    # "numSets":I
    :cond_a
    const/16 v19, 0x0

    goto :goto_4

    .line 751
    .restart local v19    # "isVideo":Z
    :cond_b
    :try_start_5
    sget-object v5, Lcom/liquable/nemo/util/crop/CacheService;->BASE_CONTENT_STRING_IMAGES:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-static {v0, v3, v1, v5}, Lcom/liquable/nemo/util/crop/CacheService;->populateMediaItemFromCursor(Lcom/liquable/nemo/util/crop/MediaItem;Landroid/content/ContentResolver;Landroid/database/Cursor;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    .line 764
    .end local v13    # "approximateCountPerSet":I
    .end local v14    # "count":I
    .end local v18    # "i":I
    .end local v19    # "isVideo":Z
    .end local v20    # "item":Lcom/liquable/nemo/util/crop/MediaItem;
    .end local v21    # "numSets":I
    :catchall_0
    move-exception v5

    if-eqz v25, :cond_c

    .line 765
    :try_start_6
    invoke-virtual/range {v25 .. v25}, Lcom/liquable/nemo/util/crop/SortCursor;->close()V

    :cond_c
    throw v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
.end method

.method public static final populateVideoItemFromCursor(Lcom/liquable/nemo/util/crop/MediaItem;Landroid/content/ContentResolver;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 1
    .param p0, "item"    # Lcom/liquable/nemo/util/crop/MediaItem;
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "baseUri"    # Ljava/lang/String;

    .prologue
    .line 784
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/util/crop/MediaItem;->setMediaType(I)V

    .line 785
    invoke-static {p0, p1, p2, p3}, Lcom/liquable/nemo/util/crop/CacheService;->populateMediaItemFromCursor(Lcom/liquable/nemo/util/crop/MediaItem;Landroid/content/ContentResolver;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 786
    return-void
.end method

.method private static final putLocaleForAlbumCache(Ljava/util/Locale;)V
    .locals 9
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 789
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 790
    .local v6, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 792
    .local v7, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/liquable/nemo/util/crop/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 793
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/liquable/nemo/util/crop/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 794
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/liquable/nemo/util/crop/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 795
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V

    .line 796
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 797
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 798
    .local v3, "data":[B
    sget-object v0, Lcom/liquable/nemo/util/crop/CacheService;->sAlbumCache:Lcom/liquable/nemo/util/crop/DiskCache;

    const-wide/16 v1, -0x5

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/liquable/nemo/util/crop/DiskCache;->put(J[BJ)V

    .line 799
    sget-object v0, Lcom/liquable/nemo/util/crop/CacheService;->sAlbumCache:Lcom/liquable/nemo/util/crop/DiskCache;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/crop/DiskCache;->flush()V

    .line 800
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V

    .line 801
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 809
    .end local v3    # "data":[B
    :goto_0
    return-void

    .line 802
    :catch_0
    move-exception v8

    .line 805
    .local v8, "e":Ljava/io/IOException;
    const-string/jumbo v0, "CacheService"

    const-string/jumbo v1, "Error writing locale to cache."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final queryThumbnail(Landroid/content/Context;JJZJ)[B
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "thumbId"    # J
    .param p3, "origId"    # J
    .param p5, "isVideo"    # Z
    .param p6, "timestamp"    # J

    .prologue
    .line 849
    if-eqz p5, :cond_0

    sget-object v6, Lcom/liquable/nemo/util/crop/LocalDataSource;->sThumbnailCacheVideo:Lcom/liquable/nemo/util/crop/DiskCache;

    .local v6, "thumbnailCache":Lcom/liquable/nemo/util/crop/DiskCache;
    :goto_0
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move-wide v7, p6

    .line 851
    invoke-static/range {v0 .. v8}, Lcom/liquable/nemo/util/crop/CacheService;->queryThumbnail(Landroid/content/Context;JJZLcom/liquable/nemo/util/crop/DiskCache;J)[B

    move-result-object v0

    return-object v0

    .line 849
    .end local v6    # "thumbnailCache":Lcom/liquable/nemo/util/crop/DiskCache;
    :cond_0
    sget-object v6, Lcom/liquable/nemo/util/crop/LocalDataSource;->sThumbnailCache:Lcom/liquable/nemo/util/crop/DiskCache;

    goto :goto_0
.end method

.method private static final queryThumbnail(Landroid/content/Context;JJZLcom/liquable/nemo/util/crop/DiskCache;J)[B
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "thumbId"    # J
    .param p3, "origId"    # J
    .param p5, "isVideo"    # Z
    .param p6, "thumbnailCache"    # Lcom/liquable/nemo/util/crop/DiskCache;
    .param p7, "timestamp"    # J

    .prologue
    .line 823
    move-object/from16 v0, p6

    move-wide/from16 v1, p1

    move-wide/from16 v3, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/util/crop/DiskCache;->get(JJ)[B

    move-result-object v16

    .line 824
    .local v16, "bitmap":[B
    if-nez v16, :cond_0

    .line 825
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    .line 826
    .local v17, "time":J
    const/16 v12, 0x80

    const/16 v13, 0x60

    move-object/from16 v5, p0

    move-object/from16 v6, p6

    move-wide/from16 v7, p1

    move-wide/from16 v9, p3

    move/from16 v11, p5

    move-wide/from16 v14, p7

    invoke-static/range {v5 .. v15}, Lcom/liquable/nemo/util/crop/CacheService;->buildThumbnailForId(Landroid/content/Context;Lcom/liquable/nemo/util/crop/DiskCache;JJZIIJ)[B

    move-result-object v16

    .line 835
    const-string/jumbo v5, "CacheService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Built thumbnail and screennail for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 838
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long v7, v7, v17

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 835
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    .end local v17    # "time":J
    :cond_0
    return-object v16
.end method

.method private static final refresh(Landroid/content/Context;)V
    .locals 24
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 858
    const-string/jumbo v5, "CacheService"

    const-string/jumbo v6, "Refreshing cache."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    sget-object v23, Lcom/liquable/nemo/util/crop/CacheService;->sCacheLock:Ljava/lang/Object;

    monitor-enter v23

    .line 861
    :try_start_0
    sget-object v5, Lcom/liquable/nemo/util/crop/CacheService;->sAlbumCache:Lcom/liquable/nemo/util/crop/DiskCache;

    invoke-virtual {v5}, Lcom/liquable/nemo/util/crop/DiskCache;->deleteAll()V

    .line 862
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Lcom/liquable/nemo/util/crop/CacheService;->putLocaleForAlbumCache(Ljava/util/Locale;)V

    .line 864
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 865
    .local v20, "sets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaSet;>;"
    new-instance v11, Lcom/liquable/nemo/util/crop/LongSparseArray;

    invoke-direct {v11}, Lcom/liquable/nemo/util/crop/LongSparseArray;-><init>()V

    .line 867
    .local v11, "acceleratedSets":Lcom/liquable/nemo/util/crop/LongSparseArray;, "Lcom/liquable/nemo/util/crop/LongSparseArray<Lcom/liquable/nemo/util/crop/MediaSet;>;"
    const-string/jumbo v5, "CacheService"

    const-string/jumbo v6, "Building albums."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    const-string/jumbo v6, "distinct"

    const-string/jumbo v7, "true"

    .line 870
    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 871
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 872
    .local v4, "uriImages":Landroid/net/Uri;
    sget-object v5, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    const-string/jumbo v6, "distinct"

    const-string/jumbo v7, "true"

    .line 873
    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 874
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v22

    .line 875
    .local v22, "uriVideos":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 877
    .local v3, "cr":Landroid/content/ContentResolver;
    :try_start_1
    sget-object v5, Lcom/liquable/nemo/util/crop/CacheService;->BUCKET_PROJECTION_IMAGES:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "upper(bucket_display_name) ASC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 882
    .local v14, "cursorImages":Landroid/database/Cursor;
    sget-object v7, Lcom/liquable/nemo/util/crop/CacheService;->BUCKET_PROJECTION_VIDEOS:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string/jumbo v10, "upper(bucket_display_name) ASC"

    move-object v5, v3

    move-object/from16 v6, v22

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 887
    .local v15, "cursorVideos":Landroid/database/Cursor;
    const/4 v5, 0x2

    new-array v0, v5, [Landroid/database/Cursor;

    move-object/from16 v16, v0

    .line 888
    .local v16, "cursors":[Landroid/database/Cursor;
    const/4 v5, 0x0

    aput-object v14, v16, v5

    .line 889
    const/4 v5, 0x1

    aput-object v15, v16, v5

    .line 890
    new-instance v21, Lcom/liquable/nemo/util/crop/SortCursor;

    const-string/jumbo v5, "bucket_display_name"

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/liquable/nemo/util/crop/SortCursor;-><init>([Landroid/database/Cursor;Ljava/lang/String;IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 895
    .local v21, "sortCursor":Lcom/liquable/nemo/util/crop/SortCursor;
    if-eqz v21, :cond_4

    :try_start_2
    invoke-virtual/range {v21 .. v21}, Lcom/liquable/nemo/util/crop/SortCursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 896
    invoke-virtual/range {v21 .. v21}, Lcom/liquable/nemo/util/crop/SortCursor;->getCount()I

    move-result v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 897
    new-instance v12, Lcom/liquable/nemo/util/crop/LongSparseArray;

    invoke-virtual/range {v21 .. v21}, Lcom/liquable/nemo/util/crop/SortCursor;->getCount()I

    move-result v5

    invoke-direct {v12, v5}, Lcom/liquable/nemo/util/crop/LongSparseArray;-><init>(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 898
    .end local v11    # "acceleratedSets":Lcom/liquable/nemo/util/crop/LongSparseArray;, "Lcom/liquable/nemo/util/crop/LongSparseArray<Lcom/liquable/nemo/util/crop/MediaSet;>;"
    .local v12, "acceleratedSets":Lcom/liquable/nemo/util/crop/LongSparseArray;, "Lcom/liquable/nemo/util/crop/LongSparseArray<Lcom/liquable/nemo/util/crop/MediaSet;>;"
    :try_start_3
    new-instance v13, Lcom/liquable/nemo/util/crop/MediaSet;

    invoke-direct {v13}, Lcom/liquable/nemo/util/crop/MediaSet;-><init>()V

    .line 899
    .local v13, "cameraSet":Lcom/liquable/nemo/util/crop/MediaSet;
    sget v5, Lcom/liquable/nemo/util/crop/LocalDataSource;->CAMERA_BUCKET_ID:I

    int-to-long v5, v5

    iput-wide v5, v13, Lcom/liquable/nemo/util/crop/MediaSet;->mId:J

    .line 901
    const-string/jumbo v5, "Camera"

    iput-object v5, v13, Lcom/liquable/nemo/util/crop/MediaSet;->mName:Ljava/lang/String;

    .line 902
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 903
    iget-wide v5, v13, Lcom/liquable/nemo/util/crop/MediaSet;->mId:J

    invoke-virtual {v12, v5, v6, v13}, Lcom/liquable/nemo/util/crop/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 905
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v5

    if-eqz v5, :cond_2

    .line 923
    if-eqz v21, :cond_1

    .line 924
    :try_start_4
    invoke-virtual/range {v21 .. v21}, Lcom/liquable/nemo/util/crop/SortCursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_1
    :try_start_5
    monitor-exit v23
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v11, v12

    .line 939
    .end local v12    # "acceleratedSets":Lcom/liquable/nemo/util/crop/LongSparseArray;, "Lcom/liquable/nemo/util/crop/LongSparseArray<Lcom/liquable/nemo/util/crop/MediaSet;>;"
    .end local v13    # "cameraSet":Lcom/liquable/nemo/util/crop/MediaSet;
    .end local v14    # "cursorImages":Landroid/database/Cursor;
    .end local v15    # "cursorVideos":Landroid/database/Cursor;
    .end local v16    # "cursors":[Landroid/database/Cursor;
    .end local v21    # "sortCursor":Lcom/liquable/nemo/util/crop/SortCursor;
    .restart local v11    # "acceleratedSets":Lcom/liquable/nemo/util/crop/LongSparseArray;, "Lcom/liquable/nemo/util/crop/LongSparseArray<Lcom/liquable/nemo/util/crop/MediaSet;>;"
    :goto_0
    return-void

    .line 908
    .end local v11    # "acceleratedSets":Lcom/liquable/nemo/util/crop/LongSparseArray;, "Lcom/liquable/nemo/util/crop/LongSparseArray<Lcom/liquable/nemo/util/crop/MediaSet;>;"
    .restart local v12    # "acceleratedSets":Lcom/liquable/nemo/util/crop/LongSparseArray;, "Lcom/liquable/nemo/util/crop/LongSparseArray<Lcom/liquable/nemo/util/crop/MediaSet;>;"
    .restart local v13    # "cameraSet":Lcom/liquable/nemo/util/crop/MediaSet;
    .restart local v14    # "cursorImages":Landroid/database/Cursor;
    .restart local v15    # "cursorVideos":Landroid/database/Cursor;
    .restart local v16    # "cursors":[Landroid/database/Cursor;
    .restart local v21    # "sortCursor":Lcom/liquable/nemo/util/crop/SortCursor;
    :cond_2
    const/4 v5, 0x0

    :try_start_6
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/liquable/nemo/util/crop/SortCursor;->getLong(I)J

    move-result-wide v18

    .line 909
    .local v18, "setId":J
    move-wide/from16 v0, v18

    invoke-static {v0, v1, v12}, Lcom/liquable/nemo/util/crop/CacheService;->findSet(JLcom/liquable/nemo/util/crop/LongSparseArray;)Lcom/liquable/nemo/util/crop/MediaSet;

    move-result-object v17

    .line 910
    .local v17, "mediaSet":Lcom/liquable/nemo/util/crop/MediaSet;
    if-nez v17, :cond_3

    .line 911
    new-instance v17, Lcom/liquable/nemo/util/crop/MediaSet;

    .end local v17    # "mediaSet":Lcom/liquable/nemo/util/crop/MediaSet;
    invoke-direct/range {v17 .. v17}, Lcom/liquable/nemo/util/crop/MediaSet;-><init>()V

    .line 912
    .restart local v17    # "mediaSet":Lcom/liquable/nemo/util/crop/MediaSet;
    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/liquable/nemo/util/crop/MediaSet;->mId:J

    .line 913
    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/liquable/nemo/util/crop/SortCursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    iput-object v5, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mName:Ljava/lang/String;

    .line 914
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 915
    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    invoke-virtual {v12, v0, v1, v2}, Lcom/liquable/nemo/util/crop/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 917
    :cond_3
    move-object/from16 v0, v17

    iget-boolean v6, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mHasImages:Z

    invoke-virtual/range {v21 .. v21}, Lcom/liquable/nemo/util/crop/SortCursor;->getCurrentCursorIndex()I

    move-result v5

    if-nez v5, :cond_6

    const/4 v5, 0x1

    :goto_1
    or-int/2addr v5, v6

    move-object/from16 v0, v17

    iput-boolean v5, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mHasImages:Z

    .line 918
    move-object/from16 v0, v17

    iget-boolean v6, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mHasVideos:Z

    invoke-virtual/range {v21 .. v21}, Lcom/liquable/nemo/util/crop/SortCursor;->getCurrentCursorIndex()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_7

    const/4 v5, 0x1

    :goto_2
    or-int/2addr v5, v6

    move-object/from16 v0, v17

    iput-boolean v5, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mHasVideos:Z

    .line 919
    invoke-virtual/range {v21 .. v21}, Lcom/liquable/nemo/util/crop/SortCursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 920
    invoke-virtual/range {v21 .. v21}, Lcom/liquable/nemo/util/crop/SortCursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object v11, v12

    .line 923
    .end local v12    # "acceleratedSets":Lcom/liquable/nemo/util/crop/LongSparseArray;, "Lcom/liquable/nemo/util/crop/LongSparseArray<Lcom/liquable/nemo/util/crop/MediaSet;>;"
    .end local v13    # "cameraSet":Lcom/liquable/nemo/util/crop/MediaSet;
    .end local v17    # "mediaSet":Lcom/liquable/nemo/util/crop/MediaSet;
    .end local v18    # "setId":J
    .restart local v11    # "acceleratedSets":Lcom/liquable/nemo/util/crop/LongSparseArray;, "Lcom/liquable/nemo/util/crop/LongSparseArray<Lcom/liquable/nemo/util/crop/MediaSet;>;"
    :cond_4
    if-eqz v21, :cond_5

    .line 924
    :try_start_7
    invoke-virtual/range {v21 .. v21}, Lcom/liquable/nemo/util/crop/SortCursor;->close()V

    .line 927
    :cond_5
    invoke-static/range {v20 .. v20}, Lcom/liquable/nemo/util/crop/CacheService;->writeSetsToCache(Ljava/util/ArrayList;)V

    .line 929
    const-string/jumbo v5, "CacheService"

    const-string/jumbo v6, "Done building albums."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v11, v5}, Lcom/liquable/nemo/util/crop/CacheService;->populateMediaItemsForSets(Landroid/content/Context;Ljava/util/ArrayList;Lcom/liquable/nemo/util/crop/LongSparseArray;Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 938
    .end local v14    # "cursorImages":Landroid/database/Cursor;
    .end local v15    # "cursorVideos":Landroid/database/Cursor;
    .end local v16    # "cursors":[Landroid/database/Cursor;
    .end local v21    # "sortCursor":Lcom/liquable/nemo/util/crop/SortCursor;
    :goto_3
    :try_start_8
    monitor-exit v23

    goto :goto_0

    .end local v3    # "cr":Landroid/content/ContentResolver;
    .end local v4    # "uriImages":Landroid/net/Uri;
    .end local v11    # "acceleratedSets":Lcom/liquable/nemo/util/crop/LongSparseArray;, "Lcom/liquable/nemo/util/crop/LongSparseArray<Lcom/liquable/nemo/util/crop/MediaSet;>;"
    .end local v20    # "sets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaSet;>;"
    .end local v22    # "uriVideos":Landroid/net/Uri;
    :catchall_0
    move-exception v5

    monitor-exit v23
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v5

    .line 917
    .restart local v3    # "cr":Landroid/content/ContentResolver;
    .restart local v4    # "uriImages":Landroid/net/Uri;
    .restart local v12    # "acceleratedSets":Lcom/liquable/nemo/util/crop/LongSparseArray;, "Lcom/liquable/nemo/util/crop/LongSparseArray<Lcom/liquable/nemo/util/crop/MediaSet;>;"
    .restart local v13    # "cameraSet":Lcom/liquable/nemo/util/crop/MediaSet;
    .restart local v14    # "cursorImages":Landroid/database/Cursor;
    .restart local v15    # "cursorVideos":Landroid/database/Cursor;
    .restart local v16    # "cursors":[Landroid/database/Cursor;
    .restart local v17    # "mediaSet":Lcom/liquable/nemo/util/crop/MediaSet;
    .restart local v18    # "setId":J
    .restart local v20    # "sets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaSet;>;"
    .restart local v21    # "sortCursor":Lcom/liquable/nemo/util/crop/SortCursor;
    .restart local v22    # "uriVideos":Landroid/net/Uri;
    :cond_6
    const/4 v5, 0x0

    goto :goto_1

    .line 918
    :cond_7
    const/4 v5, 0x0

    goto :goto_2

    .line 923
    .end local v12    # "acceleratedSets":Lcom/liquable/nemo/util/crop/LongSparseArray;, "Lcom/liquable/nemo/util/crop/LongSparseArray<Lcom/liquable/nemo/util/crop/MediaSet;>;"
    .end local v13    # "cameraSet":Lcom/liquable/nemo/util/crop/MediaSet;
    .end local v17    # "mediaSet":Lcom/liquable/nemo/util/crop/MediaSet;
    .end local v18    # "setId":J
    .restart local v11    # "acceleratedSets":Lcom/liquable/nemo/util/crop/LongSparseArray;, "Lcom/liquable/nemo/util/crop/LongSparseArray<Lcom/liquable/nemo/util/crop/MediaSet;>;"
    :catchall_1
    move-exception v5

    :goto_4
    if-eqz v21, :cond_8

    .line 924
    :try_start_9
    invoke-virtual/range {v21 .. v21}, Lcom/liquable/nemo/util/crop/SortCursor;->close()V

    :cond_8
    throw v5
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 934
    .end local v14    # "cursorImages":Landroid/database/Cursor;
    .end local v15    # "cursorVideos":Landroid/database/Cursor;
    .end local v16    # "cursors":[Landroid/database/Cursor;
    .end local v21    # "sortCursor":Lcom/liquable/nemo/util/crop/SortCursor;
    :catch_0
    move-exception v5

    goto :goto_3

    .end local v11    # "acceleratedSets":Lcom/liquable/nemo/util/crop/LongSparseArray;, "Lcom/liquable/nemo/util/crop/LongSparseArray<Lcom/liquable/nemo/util/crop/MediaSet;>;"
    .restart local v12    # "acceleratedSets":Lcom/liquable/nemo/util/crop/LongSparseArray;, "Lcom/liquable/nemo/util/crop/LongSparseArray<Lcom/liquable/nemo/util/crop/MediaSet;>;"
    .restart local v13    # "cameraSet":Lcom/liquable/nemo/util/crop/MediaSet;
    .restart local v14    # "cursorImages":Landroid/database/Cursor;
    .restart local v15    # "cursorVideos":Landroid/database/Cursor;
    .restart local v16    # "cursors":[Landroid/database/Cursor;
    .restart local v21    # "sortCursor":Lcom/liquable/nemo/util/crop/SortCursor;
    :catch_1
    move-exception v5

    move-object v11, v12

    .end local v12    # "acceleratedSets":Lcom/liquable/nemo/util/crop/LongSparseArray;, "Lcom/liquable/nemo/util/crop/LongSparseArray<Lcom/liquable/nemo/util/crop/MediaSet;>;"
    .restart local v11    # "acceleratedSets":Lcom/liquable/nemo/util/crop/LongSparseArray;, "Lcom/liquable/nemo/util/crop/LongSparseArray<Lcom/liquable/nemo/util/crop/MediaSet;>;"
    goto :goto_3

    .line 923
    .end local v11    # "acceleratedSets":Lcom/liquable/nemo/util/crop/LongSparseArray;, "Lcom/liquable/nemo/util/crop/LongSparseArray<Lcom/liquable/nemo/util/crop/MediaSet;>;"
    .end local v13    # "cameraSet":Lcom/liquable/nemo/util/crop/MediaSet;
    .restart local v12    # "acceleratedSets":Lcom/liquable/nemo/util/crop/LongSparseArray;, "Lcom/liquable/nemo/util/crop/LongSparseArray<Lcom/liquable/nemo/util/crop/MediaSet;>;"
    :catchall_2
    move-exception v5

    move-object v11, v12

    .end local v12    # "acceleratedSets":Lcom/liquable/nemo/util/crop/LongSparseArray;, "Lcom/liquable/nemo/util/crop/LongSparseArray<Lcom/liquable/nemo/util/crop/MediaSet;>;"
    .restart local v11    # "acceleratedSets":Lcom/liquable/nemo/util/crop/LongSparseArray;, "Lcom/liquable/nemo/util/crop/LongSparseArray<Lcom/liquable/nemo/util/crop/MediaSet;>;"
    goto :goto_4
.end method

.method private static final refreshDirtySets(Landroid/content/Context;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 942
    sget-object v8, Lcom/liquable/nemo/util/crop/CacheService;->sCacheLock:Ljava/lang/Object;

    monitor-enter v8

    .line 943
    :try_start_0
    sget-object v7, Lcom/liquable/nemo/util/crop/CacheService;->sAlbumCache:Lcom/liquable/nemo/util/crop/DiskCache;

    const-wide/16 v9, -0x4

    const-wide/16 v11, 0x0

    invoke-virtual {v7, v9, v10, v11, v12}, Lcom/liquable/nemo/util/crop/DiskCache;->get(JJ)[B

    move-result-object v1

    .line 944
    .local v1, "existingData":[B
    if-eqz v1, :cond_1

    array-length v7, v1

    if-lez v7, :cond_1

    .line 945
    invoke-static {v1}, Lcom/liquable/nemo/util/crop/CacheService;->toLongArray([B)[J

    move-result-object v3

    .line 946
    .local v3, "ids":[J
    array-length v4, v3

    .line 947
    .local v4, "numIds":I
    if-lez v4, :cond_1

    .line 948
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 949
    .local v6, "sets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaSet;>;"
    new-instance v0, Lcom/liquable/nemo/util/crop/LongSparseArray;

    invoke-direct {v0, v4}, Lcom/liquable/nemo/util/crop/LongSparseArray;-><init>(I)V

    .line 950
    .local v0, "acceleratedSets":Lcom/liquable/nemo/util/crop/LongSparseArray;, "Lcom/liquable/nemo/util/crop/LongSparseArray<Lcom/liquable/nemo/util/crop/MediaSet;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 951
    new-instance v5, Lcom/liquable/nemo/util/crop/MediaSet;

    invoke-direct {v5}, Lcom/liquable/nemo/util/crop/MediaSet;-><init>()V

    .line 952
    .local v5, "set":Lcom/liquable/nemo/util/crop/MediaSet;
    aget-wide v9, v3, v2

    iput-wide v9, v5, Lcom/liquable/nemo/util/crop/MediaSet;->mId:J

    .line 953
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 954
    iget-wide v9, v5, Lcom/liquable/nemo/util/crop/MediaSet;->mId:J

    invoke-virtual {v0, v9, v10, v5}, Lcom/liquable/nemo/util/crop/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 950
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 957
    .end local v5    # "set":Lcom/liquable/nemo/util/crop/MediaSet;
    :cond_0
    const-string/jumbo v7, "CacheService"

    const-string/jumbo v9, "Refreshing dirty albums"

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    const/4 v7, 0x1

    invoke-static {p0, v6, v0, v7}, Lcom/liquable/nemo/util/crop/CacheService;->populateMediaItemsForSets(Landroid/content/Context;Ljava/util/ArrayList;Lcom/liquable/nemo/util/crop/LongSparseArray;Z)V

    .line 962
    .end local v0    # "acceleratedSets":Lcom/liquable/nemo/util/crop/LongSparseArray;, "Lcom/liquable/nemo/util/crop/LongSparseArray<Lcom/liquable/nemo/util/crop/MediaSet;>;"
    .end local v2    # "i":I
    .end local v3    # "ids":[J
    .end local v4    # "numIds":I
    .end local v6    # "sets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaSet;>;"
    :cond_1
    sget-object v7, Lcom/liquable/nemo/util/crop/CacheService;->sAlbumCache:Lcom/liquable/nemo/util/crop/DiskCache;

    const-wide/16 v9, -0x4

    invoke-virtual {v7, v9, v10}, Lcom/liquable/nemo/util/crop/DiskCache;->delete(J)V

    .line 963
    monitor-exit v8

    .line 964
    return-void

    .line 963
    .end local v1    # "existingData":[B
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method private static final restartThread(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Thread;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 970
    .local p0, "threadRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Thread;>;"
    new-instance v1, Lcom/liquable/nemo/util/crop/CacheService$2;

    invoke-direct {v1, p2, p0}, Lcom/liquable/nemo/util/crop/CacheService$2;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 980
    .local v1, "newThread":Ljava/lang/Thread;
    invoke-virtual {v1, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 981
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 984
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 985
    .local v0, "existingThread":Ljava/lang/Thread;
    if-eqz v0, :cond_0

    .line 986
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 988
    :cond_0
    return-void
.end method

.method public static final setHasItems(Landroid/content/ContentResolver;J)Z
    .locals 13
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "setId"    # J

    .prologue
    const/4 v12, 0x1

    .line 991
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 992
    .local v1, "uriImages":Landroid/net/Uri;
    sget-object v10, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 993
    .local v10, "uriVideos":Landroid/net/Uri;
    new-instance v11, Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bucket_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 995
    .local v11, "whereString":Ljava/lang/StringBuffer;
    :try_start_0
    sget-object v2, Lcom/liquable/nemo/util/crop/CacheService;->BUCKET_PROJECTION_IMAGES:[Ljava/lang/String;

    .line 997
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 995
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1000
    .local v8, "cursorImages":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1001
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v0, v12

    .line 1017
    .end local v8    # "cursorImages":Landroid/database/Cursor;
    :goto_0
    return v0

    .line 1004
    .restart local v8    # "cursorImages":Landroid/database/Cursor;
    :cond_0
    sget-object v4, Lcom/liquable/nemo/util/crop/CacheService;->BUCKET_PROJECTION_VIDEOS:[Ljava/lang/String;

    .line 1006
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v10

    .line 1004
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1009
    .local v9, "cursorVideos":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1010
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v12

    .line 1011
    goto :goto_0

    .line 1013
    .end local v8    # "cursorImages":Landroid/database/Cursor;
    .end local v9    # "cursorVideos":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    .line 1017
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final startCache(Landroid/content/Context;Z)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "checkthumbnails"    # Z

    .prologue
    .line 1021
    invoke-static {}, Lcom/liquable/nemo/util/crop/CacheService;->getLocaleForAlbumCache()Ljava/util/Locale;

    move-result-object v2

    .line 1022
    .local v2, "locale":Ljava/util/Locale;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1023
    .local v0, "defaultLocale":Ljava/util/Locale;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1024
    :cond_0
    sget-object v3, Lcom/liquable/nemo/util/crop/CacheService;->sAlbumCache:Lcom/liquable/nemo/util/crop/DiskCache;

    invoke-virtual {v3}, Lcom/liquable/nemo/util/crop/DiskCache;->deleteAll()V

    .line 1025
    invoke-static {v0}, Lcom/liquable/nemo/util/crop/CacheService;->putLocaleForAlbumCache(Ljava/util/Locale;)V

    .line 1027
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.cooliris.cache.action.CACHE"

    const/4 v4, 0x0

    const-class v5, Lcom/liquable/nemo/util/crop/CacheService;

    invoke-direct {v1, v3, v4, p0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 1028
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "checkthumbnails"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1029
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1030
    return-void
.end method

.method public static final startNewThumbnailThread(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1033
    sget-object v0, Lcom/liquable/nemo/util/crop/CacheService;->THUMBNAIL_THREAD:Ljava/util/concurrent/atomic/AtomicReference;

    const-string/jumbo v1, "ThumbnailRefresh"

    new-instance v2, Lcom/liquable/nemo/util/crop/CacheService$3;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/util/crop/CacheService$3;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/liquable/nemo/util/crop/CacheService;->restartThread(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1047
    return-void
.end method

.method private static syncCache(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v3, -0x4

    .line 1050
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/liquable/nemo/util/crop/CacheService;->isCacheReady(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1057
    const-string/jumbo v0, "CacheService"

    const-string/jumbo v1, "Refreshing Cache for all items"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    invoke-static {p0}, Lcom/liquable/nemo/util/crop/CacheService;->refresh(Landroid/content/Context;)V

    .line 1060
    sget-object v0, Lcom/liquable/nemo/util/crop/CacheService;->sAlbumCache:Lcom/liquable/nemo/util/crop/DiskCache;

    const-wide/16 v1, -0x2

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/util/crop/DiskCache;->delete(J)V

    .line 1061
    sget-object v0, Lcom/liquable/nemo/util/crop/CacheService;->sAlbumCache:Lcom/liquable/nemo/util/crop/DiskCache;

    invoke-virtual {v0, v3, v4}, Lcom/liquable/nemo/util/crop/DiskCache;->delete(J)V

    .line 1069
    :cond_0
    :goto_0
    return-void

    .line 1062
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/liquable/nemo/util/crop/CacheService;->isCacheReady(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1064
    const-string/jumbo v0, "CacheService"

    const-string/jumbo v1, "Refreshing Cache for dirty items"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    invoke-static {p0}, Lcom/liquable/nemo/util/crop/CacheService;->refreshDirtySets(Landroid/content/Context;)V

    .line 1067
    sget-object v0, Lcom/liquable/nemo/util/crop/CacheService;->sAlbumCache:Lcom/liquable/nemo/util/crop/DiskCache;

    invoke-virtual {v0, v3, v4}, Lcom/liquable/nemo/util/crop/DiskCache;->delete(J)V

    goto :goto_0
.end method

.method private static final toLongArray([B)[J
    .locals 7
    .param p0, "data"    # [B

    .prologue
    .line 1072
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1073
    .local v0, "bBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v2

    .line 1074
    .local v2, "lBuffer":Ljava/nio/LongBuffer;
    invoke-virtual {v2}, Ljava/nio/LongBuffer;->capacity()I

    move-result v3

    .line 1075
    .local v3, "numLongs":I
    new-array v4, v3, [J

    .line 1076
    .local v4, "retVal":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 1077
    invoke-virtual {v2, v1}, Ljava/nio/LongBuffer;->get(I)J

    move-result-wide v5

    aput-wide v5, v4, v1

    .line 1076
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1079
    :cond_0
    return-object v4
.end method

.method public static final writeBitmapToCache(Lcom/liquable/nemo/util/crop/DiskCache;JJLandroid/graphics/Bitmap;IIJ)[B
    .locals 22
    .param p0, "thumbnailCache"    # Lcom/liquable/nemo/util/crop/DiskCache;
    .param p1, "thumbId"    # J
    .param p3, "origId"    # J
    .param p5, "bitmap"    # Landroid/graphics/Bitmap;
    .param p6, "thumbnailWidth"    # I
    .param p7, "thumbnailHeight"    # I
    .param p8, "timestamp"    # J

    .prologue
    .line 1089
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    .line 1090
    .local v21, "width":I
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    .line 1093
    .local v18, "height":I
    div-int/lit8 v16, v21, 0x2

    .line 1094
    .local v16, "focusX":I
    div-int/lit8 v17, v18, 0x2

    .line 1115
    .local v17, "focusY":I
    mul-int v2, p6, v18

    mul-int v3, p7, v21

    if-ge v2, v3, :cond_0

    .line 1117
    mul-int v2, p6, v18

    div-int v11, v2, p7

    .line 1118
    .local v11, "cropWidth":I
    const/4 v2, 0x0

    div-int/lit8 v3, v11, 0x2

    sub-int v3, v16, v3

    sub-int v4, v21, v11

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1119
    .local v12, "cropX":I
    const/4 v13, 0x0

    .line 1120
    .local v13, "cropY":I
    move/from16 v10, v18

    .line 1121
    .local v10, "cropHeight":I
    move/from16 v0, p7

    int-to-float v2, v0

    move/from16 v0, v18

    int-to-float v3, v0

    div-float v20, v2, v3

    .line 1130
    .local v20, "scaleFactor":F
    :goto_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p6

    move/from16 v1, p7

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 1133
    .local v15, "finalBitmap":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v15}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1134
    .local v9, "canvas":Landroid/graphics/Canvas;
    new-instance v19, Landroid/graphics/Paint;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Paint;-><init>()V

    .line 1135
    .local v19, "paint":Landroid/graphics/Paint;
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 1136
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1137
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1138
    new-instance v2, Landroid/graphics/Rect;

    add-int v3, v12, v11

    add-int v4, v13, v10

    invoke-direct {v2, v12, v13, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move/from16 v0, p6

    move/from16 v1, p7

    invoke-direct {v3, v4, v6, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p5

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1142
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->recycle()V

    .line 1145
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x4000

    invoke-direct {v8, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1146
    .local v8, "cacheOutput":Ljava/io/ByteArrayOutputStream;
    new-instance v14, Ljava/io/DataOutputStream;

    invoke-direct {v14, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1147
    .local v14, "dataOutput":Ljava/io/DataOutputStream;
    const/4 v5, 0x0

    .line 1149
    .local v5, "retVal":[B
    :try_start_0
    move-wide/from16 v0, p3

    invoke-virtual {v14, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1150
    sub-int v2, v16, v12

    int-to-float v2, v2

    mul-float v2, v2, v20

    float-to-int v2, v2

    invoke-virtual {v14, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1151
    sub-int v2, v17, v13

    int-to-float v2, v2

    mul-float v2, v2, v20

    float-to-int v2, v2

    invoke-virtual {v14, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1152
    invoke-virtual {v14}, Ljava/io/DataOutputStream;->flush()V

    .line 1153
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x50

    invoke-virtual {v15, v2, v3, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1154
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 1155
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v6, p8

    .line 1156
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/liquable/nemo/util/crop/DiskCache;->put(J[BJ)V

    .line 1157
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1158
    :try_start_2
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1162
    invoke-static {v8}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 1163
    invoke-static {v14}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 1165
    :goto_1
    return-object v5

    .line 1124
    .end local v5    # "retVal":[B
    .end local v8    # "cacheOutput":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "canvas":Landroid/graphics/Canvas;
    .end local v10    # "cropHeight":I
    .end local v11    # "cropWidth":I
    .end local v12    # "cropX":I
    .end local v13    # "cropY":I
    .end local v14    # "dataOutput":Ljava/io/DataOutputStream;
    .end local v15    # "finalBitmap":Landroid/graphics/Bitmap;
    .end local v19    # "paint":Landroid/graphics/Paint;
    .end local v20    # "scaleFactor":F
    :cond_0
    mul-int v2, p7, v21

    div-int v10, v2, p6

    .line 1125
    .restart local v10    # "cropHeight":I
    const/4 v2, 0x0

    div-int/lit8 v3, v10, 0x2

    sub-int v3, v17, v3

    sub-int v4, v18, v10

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1126
    .restart local v13    # "cropY":I
    const/4 v12, 0x0

    .line 1127
    .restart local v12    # "cropX":I
    move/from16 v11, v21

    .line 1128
    .restart local v11    # "cropWidth":I
    move/from16 v0, p6

    int-to-float v2, v0

    move/from16 v0, v21

    int-to-float v3, v0

    div-float v20, v2, v3

    .restart local v20    # "scaleFactor":F
    goto/16 :goto_0

    .line 1157
    .restart local v5    # "retVal":[B
    .restart local v8    # "cacheOutput":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "canvas":Landroid/graphics/Canvas;
    .restart local v14    # "dataOutput":Ljava/io/DataOutputStream;
    .restart local v15    # "finalBitmap":Landroid/graphics/Bitmap;
    .restart local v19    # "paint":Landroid/graphics/Paint;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1159
    :catch_0
    move-exception v2

    .line 1162
    invoke-static {v8}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 1163
    invoke-static {v14}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_1

    .line 1162
    :catchall_1
    move-exception v2

    invoke-static {v8}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 1163
    invoke-static {v14}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v2
.end method

.method private static final writeItemsForASet(Lcom/liquable/nemo/util/crop/MediaSet;)V
    .locals 13
    .param p0, "set"    # Lcom/liquable/nemo/util/crop/MediaSet;

    .prologue
    .line 1169
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1170
    .local v6, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v7, Ljava/io/DataOutputStream;

    new-instance v0, Ljava/io/BufferedOutputStream;

    const/16 v1, 0x100

    invoke-direct {v0, v6, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v7, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1172
    .local v7, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v11

    .line 1173
    .local v11, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaItem;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 1174
    .local v12, "numItems":I
    invoke-virtual {v7, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1175
    iget-wide v0, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mMinTimestamp:J

    invoke-virtual {v7, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1176
    iget-wide v0, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mMaxTimestamp:J

    invoke-virtual {v7, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1177
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v12, :cond_2

    .line 1178
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/liquable/nemo/util/crop/MediaItem;

    .line 1179
    .local v10, "item":Lcom/liquable/nemo/util/crop/MediaItem;
    iget-wide v0, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mId:J

    sget v2, Lcom/liquable/nemo/util/crop/LocalDataSource;->CAMERA_BUCKET_ID:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mId:J

    sget v2, Lcom/liquable/nemo/util/crop/LocalDataSource;->DOWNLOAD_BUCKET_ID:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1182
    :cond_0
    sub-int v0, v12, v9

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "item":Lcom/liquable/nemo/util/crop/MediaItem;
    check-cast v10, Lcom/liquable/nemo/util/crop/MediaItem;

    .line 1184
    .restart local v10    # "item":Lcom/liquable/nemo/util/crop/MediaItem;
    :cond_1
    iget-wide v0, v10, Lcom/liquable/nemo/util/crop/MediaItem;->mId:J

    invoke-virtual {v7, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1185
    iget-object v0, v10, Lcom/liquable/nemo/util/crop/MediaItem;->mCaption:Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/liquable/nemo/util/crop/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 1186
    iget-object v0, v10, Lcom/liquable/nemo/util/crop/MediaItem;->mMimeType:Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/liquable/nemo/util/crop/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 1187
    invoke-virtual {v10}, Lcom/liquable/nemo/util/crop/MediaItem;->getMediaType()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1188
    iget-wide v0, v10, Lcom/liquable/nemo/util/crop/MediaItem;->mLatitude:D

    invoke-virtual {v7, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 1189
    iget-wide v0, v10, Lcom/liquable/nemo/util/crop/MediaItem;->mLongitude:D

    invoke-virtual {v7, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 1190
    iget-wide v0, v10, Lcom/liquable/nemo/util/crop/MediaItem;->mDateTakenInMs:J

    invoke-virtual {v7, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1191
    iget-boolean v0, v10, Lcom/liquable/nemo/util/crop/MediaItem;->mTriedRetrievingExifDateTaken:Z

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 1192
    iget-wide v0, v10, Lcom/liquable/nemo/util/crop/MediaItem;->mDateAddedInSec:J

    invoke-virtual {v7, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1193
    iget-wide v0, v10, Lcom/liquable/nemo/util/crop/MediaItem;->mDateModifiedInSec:J

    invoke-virtual {v7, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1194
    iget v0, v10, Lcom/liquable/nemo/util/crop/MediaItem;->mDurationInSec:I

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1195
    iget v0, v10, Lcom/liquable/nemo/util/crop/MediaItem;->mRotation:F

    float-to-int v0, v0

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1196
    iget-object v0, v10, Lcom/liquable/nemo/util/crop/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/liquable/nemo/util/crop/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 1177
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1198
    .end local v10    # "item":Lcom/liquable/nemo/util/crop/MediaItem;
    :cond_2
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V

    .line 1199
    sget-object v0, Lcom/liquable/nemo/util/crop/CacheService;->sAlbumCache:Lcom/liquable/nemo/util/crop/DiskCache;

    iget-wide v1, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mId:J

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/liquable/nemo/util/crop/DiskCache;->put(J[BJ)V

    .line 1200
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1206
    .end local v9    # "i":I
    .end local v11    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaItem;>;"
    .end local v12    # "numItems":I
    :goto_1
    return-void

    .line 1201
    :catch_0
    move-exception v8

    .line 1202
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "CacheService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error writing to diskcache for set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/util/crop/MediaSet;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    sget-object v0, Lcom/liquable/nemo/util/crop/CacheService;->sAlbumCache:Lcom/liquable/nemo/util/crop/DiskCache;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/crop/DiskCache;->deleteAll()V

    .line 1204
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/util/crop/CacheService;->putLocaleForAlbumCache(Ljava/util/Locale;)V

    goto :goto_1
.end method

.method private static final writeItemsToCache(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/liquable/nemo/util/crop/MediaSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1209
    .local p0, "sets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaSet;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1210
    .local v1, "numSets":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1211
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1217
    :goto_1
    return-void

    .line 1214
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/util/crop/MediaSet;

    invoke-static {v2}, Lcom/liquable/nemo/util/crop/CacheService;->writeItemsForASet(Lcom/liquable/nemo/util/crop/MediaSet;)V

    .line 1210
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1216
    :cond_1
    sget-object v2, Lcom/liquable/nemo/util/crop/CacheService;->sAlbumCache:Lcom/liquable/nemo/util/crop/DiskCache;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/crop/DiskCache;->flush()V

    goto :goto_1
.end method

.method private static final writeSetsToCache(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/liquable/nemo/util/crop/MediaSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1220
    .local p0, "sets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaSet;>;"
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1221
    .local v6, "bos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1222
    .local v10, "numSets":I
    new-instance v7, Ljava/io/DataOutputStream;

    new-instance v0, Ljava/io/BufferedOutputStream;

    const/16 v1, 0x100

    invoke-direct {v0, v6, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v7, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1224
    .local v7, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-virtual {v7, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1225
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v10, :cond_1

    .line 1226
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1248
    .end local v9    # "i":I
    :goto_1
    return-void

    .line 1229
    .restart local v9    # "i":I
    :cond_0
    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/liquable/nemo/util/crop/MediaSet;

    .line 1230
    .local v11, "set":Lcom/liquable/nemo/util/crop/MediaSet;
    iget-wide v0, v11, Lcom/liquable/nemo/util/crop/MediaSet;->mId:J

    invoke-virtual {v7, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1231
    iget-object v0, v11, Lcom/liquable/nemo/util/crop/MediaSet;->mName:Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/liquable/nemo/util/crop/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 1232
    iget-boolean v0, v11, Lcom/liquable/nemo/util/crop/MediaSet;->mHasImages:Z

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 1233
    iget-boolean v0, v11, Lcom/liquable/nemo/util/crop/MediaSet;->mHasVideos:Z

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 1225
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1235
    .end local v11    # "set":Lcom/liquable/nemo/util/crop/MediaSet;
    :cond_1
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V

    .line 1236
    sget-object v0, Lcom/liquable/nemo/util/crop/CacheService;->sAlbumCache:Lcom/liquable/nemo/util/crop/DiskCache;

    const-wide/16 v1, -0x1

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/liquable/nemo/util/crop/DiskCache;->put(J[BJ)V

    .line 1237
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V

    .line 1238
    if-nez v10, :cond_2

    .line 1239
    sget-object v0, Lcom/liquable/nemo/util/crop/CacheService;->sAlbumCache:Lcom/liquable/nemo/util/crop/DiskCache;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/crop/DiskCache;->deleteAll()V

    .line 1240
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/util/crop/CacheService;->putLocaleForAlbumCache(Ljava/util/Locale;)V

    .line 1242
    :cond_2
    sget-object v0, Lcom/liquable/nemo/util/crop/CacheService;->sAlbumCache:Lcom/liquable/nemo/util/crop/DiskCache;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/crop/DiskCache;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1243
    .end local v9    # "i":I
    :catch_0
    move-exception v8

    .line 1244
    .local v8, "e":Ljava/io/IOException;
    const-string/jumbo v0, "CacheService"

    const-string/jumbo v1, "Error writing albums to diskcache."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    sget-object v0, Lcom/liquable/nemo/util/crop/CacheService;->sAlbumCache:Lcom/liquable/nemo/util/crop/DiskCache;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/crop/DiskCache;->deleteAll()V

    .line 1246
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/util/crop/CacheService;->putLocaleForAlbumCache(Ljava/util/Locale;)V

    goto :goto_1
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1369
    const-string/jumbo v2, "CacheService"

    const-string/jumbo v3, "Starting CacheService"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "bad_removal"

    if-ne v2, v3, :cond_0

    .line 1372
    sget-object v2, Lcom/liquable/nemo/util/crop/CacheService;->sAlbumCache:Lcom/liquable/nemo/util/crop/DiskCache;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/crop/DiskCache;->deleteAll()V

    .line 1373
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Lcom/liquable/nemo/util/crop/CacheService;->putLocaleForAlbumCache(Ljava/util/Locale;)V

    .line 1375
    :cond_0
    invoke-static {}, Lcom/liquable/nemo/util/crop/CacheService;->getLocaleForAlbumCache()Ljava/util/Locale;

    move-result-object v1

    .line 1376
    .local v1, "locale":Ljava/util/Locale;
    if-eqz v1, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1382
    :goto_0
    const-string/jumbo v2, "checkthumbnails"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1383
    invoke-static {p0}, Lcom/liquable/nemo/util/crop/CacheService;->startNewThumbnailThread(Landroid/content/Context;)V

    .line 1390
    :cond_1
    :goto_1
    return-void

    .line 1380
    :cond_2
    invoke-static {}, Lcom/liquable/nemo/util/crop/CacheService;->markDirty()V

    goto :goto_0

    .line 1385
    :cond_3
    sget-object v2, Lcom/liquable/nemo/util/crop/CacheService;->THUMBNAIL_THREAD:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 1386
    .local v0, "existingThread":Ljava/lang/Thread;
    if-eqz v0, :cond_1

    .line 1387
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1
.end method
