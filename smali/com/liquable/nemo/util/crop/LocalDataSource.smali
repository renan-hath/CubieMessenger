.class public Lcom/liquable/nemo/util/crop/LocalDataSource;
.super Ljava/lang/Object;
.source "LocalDataSource.java"

# interfaces
.implements Lcom/liquable/nemo/util/crop/DataSource;


# static fields
.field public static final CAMERA_BUCKET_ID:I

.field public static final CAMERA_BUCKET_NAME:Ljava/lang/String;

.field public static final CAMERA_STRING:Ljava/lang/String; = "Camera"

.field public static final DOWNLOAD_BUCKET_ID:I

.field public static final DOWNLOAD_BUCKET_NAME:Ljava/lang/String;

.field public static final DOWNLOAD_STRING:Ljava/lang/String; = "download"

.field private static final TAG:Ljava/lang/String; = "LocalDataSource"

.field public static final URI_ALL_MEDIA:Ljava/lang/String;

.field public static final sThumbnailCache:Lcom/liquable/nemo/util/crop/DiskCache;

.field public static final sThumbnailCacheVideo:Lcom/liquable/nemo/util/crop/DiskCache;


# instance fields
.field private final mAllItems:Z

.field private final mBucketId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mDiskCache:Lcom/liquable/nemo/util/crop/DiskCache;

.field private mDone:Z

.field private final mFlattenAllItems:Z

.field private mIncludeImages:Z

.field private mIncludeVideos:Z

.field private final mSingleUri:Z

.field private final mUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 119
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/util/crop/LocalDataSource;->URI_ALL_MEDIA:Ljava/lang/String;

    .line 120
    new-instance v0, Lcom/liquable/nemo/util/crop/DiskCache;

    const-string/jumbo v1, "local-image-thumbs"

    invoke-direct {v0, v1}, Lcom/liquable/nemo/util/crop/DiskCache;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/util/crop/LocalDataSource;->sThumbnailCache:Lcom/liquable/nemo/util/crop/DiskCache;

    .line 121
    new-instance v0, Lcom/liquable/nemo/util/crop/DiskCache;

    const-string/jumbo v1, "local-video-thumbs"

    invoke-direct {v0, v1}, Lcom/liquable/nemo/util/crop/DiskCache;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/util/crop/LocalDataSource;->sThumbnailCacheVideo:Lcom/liquable/nemo/util/crop/DiskCache;

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 127
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/DCIM/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/util/crop/LocalDataSource;->CAMERA_BUCKET_NAME:Ljava/lang/String;

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 130
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/util/crop/LocalDataSource;->DOWNLOAD_BUCKET_NAME:Ljava/lang/String;

    .line 132
    sget-object v0, Lcom/liquable/nemo/util/crop/LocalDataSource;->CAMERA_BUCKET_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/liquable/nemo/util/crop/LocalDataSource;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/liquable/nemo/util/crop/LocalDataSource;->CAMERA_BUCKET_ID:I

    .line 134
    sget-object v0, Lcom/liquable/nemo/util/crop/LocalDataSource;->DOWNLOAD_BUCKET_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/liquable/nemo/util/crop/LocalDataSource;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/liquable/nemo/util/crop/LocalDataSource;->DOWNLOAD_BUCKET_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "flattenAllItems"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p2, p0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mUri:Ljava/lang/String;

    .line 153
    iput-object p1, p0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mContext:Landroid/content/Context;

    .line 154
    iput-boolean v1, p0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mIncludeImages:Z

    .line 155
    iput-boolean v2, p0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mIncludeVideos:Z

    .line 156
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string/jumbo v5, "bucketId"

    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "bucketId":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 158
    iput-object v0, p0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mBucketId:Ljava/lang/String;

    .line 162
    :goto_0
    iput-boolean p3, p0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mFlattenAllItems:Z

    .line 163
    iget-object v4, p0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mBucketId:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 164
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 165
    iput-boolean v1, p0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mAllItems:Z

    .line 172
    :goto_1
    invoke-static {p2}, Lcom/liquable/nemo/util/crop/LocalDataSource;->isSingleImageMode(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mBucketId:Ljava/lang/String;

    if-nez v4, :cond_4

    :goto_2
    iput-boolean v1, p0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mSingleUri:Z

    .line 173
    iput-boolean v2, p0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mDone:Z

    .line 174
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mUri:Ljava/lang/String;

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mUri:Ljava/lang/String;

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mUri:Ljava/lang/String;

    const-string/jumbo v2, "file://"

    .line 175
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_0
    sget-object v1, Lcom/liquable/nemo/util/crop/LocalDataSource;->sThumbnailCache:Lcom/liquable/nemo/util/crop/DiskCache;

    :goto_3
    iput-object v1, p0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mDiskCache:Lcom/liquable/nemo/util/crop/DiskCache;

    .line 176
    return-void

    .line 160
    :cond_1
    iput-object v3, p0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mBucketId:Ljava/lang/String;

    goto :goto_0

    .line 167
    :cond_2
    iput-boolean v2, p0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mAllItems:Z

    goto :goto_1

    .line 170
    :cond_3
    iput-boolean v2, p0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mAllItems:Z

    goto :goto_1

    :cond_4
    move v1, v2

    .line 172
    goto :goto_2

    :cond_5
    move-object v1, v3

    .line 175
    goto :goto_3
.end method

.method public static createMediaItemFromFileUri(Landroid/content/Context;Ljava/lang/String;)Lcom/liquable/nemo/util/crop/MediaItem;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileUri"    # Ljava/lang/String;

    .prologue
    .line 39
    const/4 v10, 0x0

    .line 40
    .local v10, "item":Lcom/liquable/nemo/util/crop/MediaItem;
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    .line 41
    .local v9, "filepath":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 42
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/liquable/nemo/util/crop/Utils;->getBucketIdFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)J

    move-result-wide v6

    .line 43
    .local v6, "bucketId":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bucket_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, "whereClause":Ljava/lang/String;
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/liquable/nemo/util/crop/CacheService;->PROJECTION_IMAGES:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 56
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 57
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    new-instance v11, Lcom/liquable/nemo/util/crop/MediaItem;

    invoke-direct {v11}, Lcom/liquable/nemo/util/crop/MediaItem;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v10    # "item":Lcom/liquable/nemo/util/crop/MediaItem;
    .local v11, "item":Lcom/liquable/nemo/util/crop/MediaItem;
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 62
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-static {v11, v0, v8, v1}, Lcom/liquable/nemo/util/crop/CacheService;->populateMediaItemFromCursor(Lcom/liquable/nemo/util/crop/MediaItem;Landroid/content/ContentResolver;Landroid/database/Cursor;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v10, v11

    .line 64
    .end local v11    # "item":Lcom/liquable/nemo/util/crop/MediaItem;
    .restart local v10    # "item":Lcom/liquable/nemo/util/crop/MediaItem;
    :cond_0
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 71
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-object v10

    .line 67
    :catch_0
    move-exception v1

    goto :goto_0

    .end local v10    # "item":Lcom/liquable/nemo/util/crop/MediaItem;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "item":Lcom/liquable/nemo/util/crop/MediaItem;
    :catch_1
    move-exception v1

    move-object v10, v11

    .end local v11    # "item":Lcom/liquable/nemo/util/crop/MediaItem;
    .restart local v10    # "item":Lcom/liquable/nemo/util/crop/MediaItem;
    goto :goto_0
.end method

.method public static createMediaItemFromUri(Landroid/content/Context;Landroid/net/Uri;I)Lcom/liquable/nemo/util/crop/MediaItem;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Landroid/net/Uri;
    .param p2, "mediaType"    # I

    .prologue
    .line 77
    const/4 v9, 0x0

    .line 78
    .local v9, "item":Lcom/liquable/nemo/util/crop/MediaItem;
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 79
    .local v7, "id":J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 80
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "whereClause":Ljava/lang/String;
    if-nez p2, :cond_2

    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 84
    .local v1, "uri":Landroid/net/Uri;
    :goto_0
    if-nez p2, :cond_3

    sget-object v2, Lcom/liquable/nemo/util/crop/CacheService;->PROJECTION_IMAGES:[Ljava/lang/String;

    .line 86
    .local v2, "projection":[Ljava/lang/String;
    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 87
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 88
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 89
    new-instance v10, Lcom/liquable/nemo/util/crop/MediaItem;

    invoke-direct {v10}, Lcom/liquable/nemo/util/crop/MediaItem;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v9    # "item":Lcom/liquable/nemo/util/crop/MediaItem;
    .local v10, "item":Lcom/liquable/nemo/util/crop/MediaItem;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v0, v6, v4}, Lcom/liquable/nemo/util/crop/CacheService;->populateMediaItemFromCursor(Lcom/liquable/nemo/util/crop/MediaItem;Landroid/content/ContentResolver;Landroid/database/Cursor;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v9, v10

    .line 92
    .end local v10    # "item":Lcom/liquable/nemo/util/crop/MediaItem;
    .restart local v9    # "item":Lcom/liquable/nemo/util/crop/MediaItem;
    :cond_0
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 99
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_2
    iput-wide v7, v9, Lcom/liquable/nemo/util/crop/MediaItem;->mId:J

    .line 100
    return-object v9

    .line 82
    :cond_2
    :try_start_3
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 84
    .restart local v1    # "uri":Landroid/net/Uri;
    :cond_3
    sget-object v2, Lcom/liquable/nemo/util/crop/CacheService;->PROJECTION_VIDEOS:[Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 95
    .end local v1    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v4

    goto :goto_2

    .end local v9    # "item":Lcom/liquable/nemo/util/crop/MediaItem;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "item":Lcom/liquable/nemo/util/crop/MediaItem;
    :catch_1
    move-exception v4

    move-object v9, v10

    .end local v10    # "item":Lcom/liquable/nemo/util/crop/MediaItem;
    .restart local v9    # "item":Lcom/liquable/nemo/util/crop/MediaItem;
    goto :goto_2
.end method

.method public static getBucketId(Ljava/lang/String;)I
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method private static isImage(Ljava/lang/String;)Z
    .locals 1
    .param p0, "uriString"    # Ljava/lang/String;

    .prologue
    .line 111
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSingleImageMode(Ljava/lang/String;)Z
    .locals 1
    .param p0, "uriString"    # Ljava/lang/String;

    .prologue
    .line 115
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private rotateItem(Lcom/liquable/nemo/util/crop/MediaItem;F)V
    .locals 12
    .param p1, "item"    # Lcom/liquable/nemo/util/crop/MediaItem;
    .param p2, "angleToRotate"    # F

    .prologue
    .line 458
    iget-object v9, p0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 460
    .local v0, "cr":Landroid/content/ContentResolver;
    :try_start_0
    iget v9, p1, Lcom/liquable/nemo/util/crop/MediaItem;->mRotation:F

    float-to-int v1, v9

    .line 461
    .local v1, "currentOrientation":I
    int-to-float v9, v1

    add-float/2addr p2, v9

    .line 462
    invoke-static {p2}, Lcom/liquable/nemo/util/crop/Shared;->normalizePositive(F)F

    move-result v4

    .line 463
    .local v4, "rotation":F
    float-to-int v9, v4

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 466
    .local v5, "rotationString":Ljava/lang/String;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 467
    .local v8, "values":Landroid/content/ContentValues;
    const-string/jumbo v9, "orientation"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    :try_start_1
    iget-object v9, p1, Lcom/liquable/nemo/util/crop/MediaItem;->mContentUri:Ljava/lang/String;

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0, v9, v8, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 476
    :goto_0
    :try_start_2
    iget-object v9, p1, Lcom/liquable/nemo/util/crop/MediaItem;->mContentUri:Ljava/lang/String;

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 477
    .local v6, "uri":Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    .line 478
    .local v7, "uriScheme":Ljava/lang/String;
    const-string/jumbo v9, "file"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "content"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 479
    :cond_0
    const-string/jumbo v9, "file"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 480
    .local v3, "path":Ljava/lang/String;
    :goto_1
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, v3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 481
    .local v2, "exif":Landroid/media/ExifInterface;
    const-string/jumbo v9, "Orientation"

    .line 482
    invoke-static {v4}, Lcom/liquable/nemo/util/crop/Shared;->degreesToExifOrientation(F)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 481
    invoke-virtual {v2, v9, v10}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-virtual {v2}, Landroid/media/ExifInterface;->saveAttributes()V

    .line 487
    .end local v2    # "exif":Landroid/media/ExifInterface;
    .end local v3    # "path":Ljava/lang/String;
    :cond_1
    iget-object v9, p1, Lcom/liquable/nemo/util/crop/MediaItem;->mParentMediaSet:Lcom/liquable/nemo/util/crop/MediaSet;

    iget-wide v9, v9, Lcom/liquable/nemo/util/crop/MediaSet;->mId:J

    invoke-static {v9, v10}, Lcom/liquable/nemo/util/crop/CacheService;->markDirty(J)V

    .line 490
    iput v4, p1, Lcom/liquable/nemo/util/crop/MediaItem;->mRotation:F

    .line 494
    .end local v1    # "currentOrientation":I
    .end local v4    # "rotation":F
    .end local v5    # "rotationString":Ljava/lang/String;
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v7    # "uriScheme":Ljava/lang/String;
    .end local v8    # "values":Landroid/content/ContentValues;
    :goto_2
    return-void

    .line 479
    .restart local v1    # "currentOrientation":I
    .restart local v4    # "rotation":F
    .restart local v5    # "rotationString":Ljava/lang/String;
    .restart local v6    # "uri":Landroid/net/Uri;
    .restart local v7    # "uriScheme":Ljava/lang/String;
    .restart local v8    # "values":Landroid/content/ContentValues;
    :cond_2
    iget-object v3, p1, Lcom/liquable/nemo/util/crop/MediaItem;->mFilePath:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 491
    .end local v1    # "currentOrientation":I
    .end local v4    # "rotation":F
    .end local v5    # "rotationString":Ljava/lang/String;
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v7    # "uriScheme":Ljava/lang/String;
    .end local v8    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v9

    goto :goto_2

    .line 470
    .restart local v1    # "currentOrientation":I
    .restart local v4    # "rotation":F
    .restart local v5    # "rotationString":Ljava/lang/String;
    .restart local v8    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v9

    goto :goto_0
.end method


# virtual methods
.method public getDatabaseUris()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 180
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 181
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getThumbnailCache()Lcom/liquable/nemo/util/crop/DiskCache;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mDiskCache:Lcom/liquable/nemo/util/crop/DiskCache;

    return-object v0
.end method

.method public isSingleImage()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mSingleUri:Z

    return v0
.end method

.method public loadItemsForSet(Lcom/liquable/nemo/util/crop/MediaFeed;Lcom/liquable/nemo/util/crop/MediaSet;II)V
    .locals 25
    .param p1, "feed"    # Lcom/liquable/nemo/util/crop/MediaFeed;
    .param p2, "parentSet"    # Lcom/liquable/nemo/util/crop/MediaSet;
    .param p3, "rangeStart"    # I
    .param p4, "rangeEnd"    # I

    .prologue
    .line 198
    move-object/from16 v0, p2

    iget v5, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mNumItemsLoaded:I

    if-lez v5, :cond_1

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mDone:Z

    if-eqz v5, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mSingleUri:Z

    if-eqz v5, :cond_10

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mDone:Z

    if-nez v5, :cond_10

    .line 202
    new-instance v20, Lcom/liquable/nemo/util/crop/MediaItem;

    invoke-direct/range {v20 .. v20}, Lcom/liquable/nemo/util/crop/MediaItem;-><init>()V

    .line 203
    .local v20, "item":Lcom/liquable/nemo/util/crop/MediaItem;
    const-wide/16 v7, 0x0

    move-object/from16 v0, v20

    iput-wide v7, v0, Lcom/liquable/nemo/util/crop/MediaItem;->mId:J

    .line 204
    const-string/jumbo v5, ""

    move-object/from16 v0, v20

    iput-object v5, v0, Lcom/liquable/nemo/util/crop/MediaItem;->mFilePath:Ljava/lang/String;

    .line 205
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mUri:Ljava/lang/String;

    invoke-static {v5}, Lcom/liquable/nemo/util/crop/LocalDataSource;->isImage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x0

    :goto_1
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/liquable/nemo/util/crop/MediaItem;->setMediaType(I)V

    .line 206
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mUri:Ljava/lang/String;

    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mUri:Ljava/lang/String;

    sget-object v7, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 207
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mUri:Ljava/lang/String;

    .line 208
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 209
    invoke-virtual/range {v20 .. v20}, Lcom/liquable/nemo/util/crop/MediaItem;->getMediaType()I

    move-result v8

    .line 207
    invoke-static {v5, v7, v8}, Lcom/liquable/nemo/util/crop/LocalDataSource;->createMediaItemFromUri(Landroid/content/Context;Landroid/net/Uri;I)Lcom/liquable/nemo/util/crop/MediaItem;

    move-result-object v22

    .line 210
    .local v22, "newItem":Lcom/liquable/nemo/util/crop/MediaItem;
    if-eqz v22, :cond_3

    .line 211
    move-object/from16 v20, v22

    .line 212
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/liquable/nemo/util/crop/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v19

    .line 213
    .local v19, "fileUri":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 214
    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 213
    invoke-static {v5, v7}, Lcom/liquable/nemo/util/crop/Utils;->getBucketNameFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    iput-object v5, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mName:Ljava/lang/String;

    .line 215
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 216
    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 215
    invoke-static {v5, v7}, Lcom/liquable/nemo/util/crop/Utils;->getBucketIdFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)J

    move-result-wide v7

    move-object/from16 v0, p2

    iput-wide v7, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mId:J

    .line 217
    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/liquable/nemo/util/crop/MediaSet;->generateTitle(Z)V

    .line 247
    .end local v19    # "fileUri":Ljava/lang/String;
    .end local v22    # "newItem":Lcom/liquable/nemo/util/crop/MediaItem;
    :cond_3
    :goto_2
    if-eqz v20, :cond_7

    .line 248
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/util/crop/MediaFeed;->addItemToMediaSet(Lcom/liquable/nemo/util/crop/MediaItem;Lcom/liquable/nemo/util/crop/MediaSet;)V

    .line 250
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mUri:Ljava/lang/String;

    const-string/jumbo v7, "file://"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 252
    :try_start_0
    new-instance v18, Landroid/media/ExifInterface;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mUri:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 253
    .local v18, "exif":Landroid/media/ExifInterface;
    const-string/jumbo v5, "Orientation"

    const/4 v7, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Lcom/liquable/nemo/util/crop/Shared;->exifOrientationToDegrees(I)F

    move-result v5

    move-object/from16 v0, v20

    iput v5, v0, Lcom/liquable/nemo/util/crop/MediaItem;->mRotation:F
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .end local v18    # "exif":Landroid/media/ExifInterface;
    :cond_4
    :goto_3
    invoke-static/range {v20 .. v20}, Lcom/liquable/nemo/util/crop/CacheService;->fetchDateTaken(Lcom/liquable/nemo/util/crop/MediaItem;)J

    move-result-wide v15

    .line 261
    .local v15, "dateTaken":J
    const-wide/16 v7, -0x1

    cmp-long v5, v15, v7

    if-eqz v5, :cond_5

    .line 262
    move-object/from16 v0, v20

    iput-wide v15, v0, Lcom/liquable/nemo/util/crop/MediaItem;->mDateTakenInMs:J

    .line 264
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mIncludeImages:Z

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mIncludeVideos:Z

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-static/range {v3 .. v9}, Lcom/liquable/nemo/util/crop/CacheService;->loadMediaItemsIntoMediaFeed(Landroid/content/Context;Lcom/liquable/nemo/util/crop/MediaFeed;Lcom/liquable/nemo/util/crop/MediaSet;IIZZ)V

    .line 271
    invoke-virtual/range {p2 .. p2}, Lcom/liquable/nemo/util/crop/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v21

    .line 272
    .local v21, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaItem;>;"
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 273
    .local v23, "numItems":I
    const/4 v5, 0x1

    move/from16 v0, v23

    if-ne v0, v5, :cond_6

    move-object/from16 v0, p2

    iget v5, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mNumItemsLoaded:I

    const/4 v7, 0x1

    if-le v5, v7, :cond_6

    .line 274
    const/4 v5, 0x1

    move-object/from16 v0, p2

    iput v5, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mNumItemsLoaded:I

    .line 276
    :cond_6
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/crop/MediaSet;->removeDuplicate(Lcom/liquable/nemo/util/crop/MediaItem;)V

    .line 278
    .end local v15    # "dateTaken":J
    .end local v21    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaItem;>;"
    .end local v23    # "numItems":I
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/liquable/nemo/util/crop/MediaSet;->updateNumExpectedItems()V

    .line 279
    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/liquable/nemo/util/crop/MediaSet;->generateTitle(Z)V

    .line 319
    .end local v20    # "item":Lcom/liquable/nemo/util/crop/MediaItem;
    :cond_8
    :goto_4
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mDone:Z

    goto/16 :goto_0

    .line 205
    .restart local v20    # "item":Lcom/liquable/nemo/util/crop/MediaItem;
    :cond_9
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 219
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mUri:Ljava/lang/String;

    const-string/jumbo v7, "file://"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 220
    const/16 v22, 0x0

    .line 221
    .restart local v22    # "newItem":Lcom/liquable/nemo/util/crop/MediaItem;
    const/16 v24, 0xf

    .line 223
    .local v24, "numRetries":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mUri:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/liquable/nemo/util/crop/LocalDataSource;->createMediaItemFromFileUri(Landroid/content/Context;Ljava/lang/String;)Lcom/liquable/nemo/util/crop/MediaItem;

    move-result-object v22

    .line 224
    if-nez v22, :cond_c

    .line 225
    add-int/lit8 v24, v24, -0x1

    .line 227
    const-wide/16 v7, 0x1f4

    :try_start_1
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 232
    :cond_c
    :goto_5
    if-nez v22, :cond_d

    if-gez v24, :cond_b

    .line 233
    :cond_d
    if-eqz v22, :cond_e

    .line 234
    move-object/from16 v20, v22

    goto/16 :goto_2

    .line 236
    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mUri:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v5, v0, Lcom/liquable/nemo/util/crop/MediaItem;->mContentUri:Ljava/lang/String;

    .line 237
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mUri:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v5, v0, Lcom/liquable/nemo/util/crop/MediaItem;->mThumbnailUri:Ljava/lang/String;

    .line 238
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mUri:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v5, v0, Lcom/liquable/nemo/util/crop/MediaItem;->mScreennailUri:Ljava/lang/String;

    .line 239
    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/liquable/nemo/util/crop/MediaFeed;->setSingleImageMode(Z)V

    goto/16 :goto_2

    .line 242
    .end local v22    # "newItem":Lcom/liquable/nemo/util/crop/MediaItem;
    .end local v24    # "numRetries":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mUri:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v5, v0, Lcom/liquable/nemo/util/crop/MediaItem;->mContentUri:Ljava/lang/String;

    .line 243
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mUri:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v5, v0, Lcom/liquable/nemo/util/crop/MediaItem;->mThumbnailUri:Ljava/lang/String;

    .line 244
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mUri:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v5, v0, Lcom/liquable/nemo/util/crop/MediaItem;->mScreennailUri:Ljava/lang/String;

    .line 245
    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/liquable/nemo/util/crop/MediaFeed;->setSingleImageMode(Z)V

    goto/16 :goto_2

    .line 255
    :catch_0
    move-exception v17

    .line 256
    .local v17, "e":Ljava/io/IOException;
    const-string/jumbo v5, "LocalDataSource"

    const-string/jumbo v7, "Error reading Exif information, probably not a jpeg."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 280
    .end local v17    # "e":Ljava/io/IOException;
    .end local v20    # "item":Lcom/liquable/nemo/util/crop/MediaItem;
    :cond_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mUri:Ljava/lang/String;

    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mFlattenAllItems:Z

    and-int/2addr v5, v7

    if-eqz v5, :cond_13

    .line 281
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 282
    .local v4, "uriImages":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 283
    .local v3, "cr":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 285
    .local v6, "where":Ljava/lang/String;
    :try_start_2
    sget-object v5, Lcom/liquable/nemo/util/crop/CacheService;->PROJECTION_IMAGES:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 286
    .local v14, "cursor":Landroid/database/Cursor;
    if-eqz v14, :cond_8

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 287
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/liquable/nemo/util/crop/MediaSet;->setNumExpectedItems(I)V

    .line 289
    :cond_11
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-nez v5, :cond_0

    .line 292
    new-instance v20, Lcom/liquable/nemo/util/crop/MediaItem;

    invoke-direct/range {v20 .. v20}, Lcom/liquable/nemo/util/crop/MediaItem;-><init>()V

    .line 293
    .restart local v20    # "item":Lcom/liquable/nemo/util/crop/MediaItem;
    sget-object v5, Lcom/liquable/nemo/util/crop/CacheService;->BASE_CONTENT_STRING_IMAGES:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-static {v0, v3, v14, v5}, Lcom/liquable/nemo/util/crop/CacheService;->populateMediaItemFromCursor(Lcom/liquable/nemo/util/crop/MediaItem;Landroid/content/ContentResolver;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 297
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/util/crop/MediaFeed;->addItemToMediaSet(Lcom/liquable/nemo/util/crop/MediaItem;Lcom/liquable/nemo/util/crop/MediaSet;)V

    .line 298
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_11

    .line 299
    if-eqz v14, :cond_12

    .line 300
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 301
    const/4 v14, 0x0

    .line 303
    :cond_12
    invoke-virtual/range {p2 .. p2}, Lcom/liquable/nemo/util/crop/MediaSet;->updateNumExpectedItems()V

    .line 304
    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/liquable/nemo/util/crop/MediaSet;->generateTitle(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    .line 306
    .end local v14    # "cursor":Landroid/database/Cursor;
    .end local v20    # "item":Lcom/liquable/nemo/util/crop/MediaItem;
    :catch_1
    move-exception v5

    goto/16 :goto_4

    .line 311
    .end local v3    # "cr":Landroid/content/ContentResolver;
    .end local v4    # "uriImages":Landroid/net/Uri;
    .end local v6    # "where":Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mIncludeImages:Z

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mIncludeVideos:Z

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    invoke-static/range {v7 .. v13}, Lcom/liquable/nemo/util/crop/CacheService;->loadMediaItemsIntoMediaFeed(Landroid/content/Context;Lcom/liquable/nemo/util/crop/MediaFeed;Lcom/liquable/nemo/util/crop/MediaSet;IIZZ)V

    goto/16 :goto_4

    .line 228
    .restart local v20    # "item":Lcom/liquable/nemo/util/crop/MediaItem;
    .restart local v22    # "newItem":Lcom/liquable/nemo/util/crop/MediaItem;
    .restart local v24    # "numRetries":I
    :catch_2
    move-exception v5

    goto/16 :goto_5
.end method

.method public loadMediaSets(Lcom/liquable/nemo/util/crop/MediaFeed;)V
    .locals 14
    .param p1, "feed"    # Lcom/liquable/nemo/util/crop/MediaFeed;

    .prologue
    .line 324
    const/4 v10, 0x0

    .line 325
    .local v10, "set":Lcom/liquable/nemo/util/crop/MediaSet;
    const/4 v8, 0x1

    .line 326
    .local v8, "loadOtherSets":Z
    iget-boolean v0, p0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mSingleUri:Z

    if-eqz v0, :cond_3

    .line 327
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/crop/Utils;->getBucketNameFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    .line 328
    .local v9, "name":Ljava/lang/String;
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/crop/Utils;->getBucketIdFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)J

    move-result-wide v6

    .line 329
    .local v6, "id":J
    invoke-virtual {p1, v6, v7, p0}, Lcom/liquable/nemo/util/crop/MediaFeed;->addMediaSet(JLcom/liquable/nemo/util/crop/DataSource;)Lcom/liquable/nemo/util/crop/MediaSet;

    move-result-object v10

    .line 330
    iput-object v9, v10, Lcom/liquable/nemo/util/crop/MediaSet;->mName:Ljava/lang/String;

    .line 331
    iput-wide v6, v10, Lcom/liquable/nemo/util/crop/MediaSet;->mId:J

    .line 332
    const/4 v0, 0x2

    invoke-virtual {v10, v0}, Lcom/liquable/nemo/util/crop/MediaSet;->setNumExpectedItems(I)V

    .line 333
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Lcom/liquable/nemo/util/crop/MediaSet;->generateTitle(Z)V

    .line 334
    const-wide/16 v0, -0x1

    iput-wide v0, v10, Lcom/liquable/nemo/util/crop/MediaSet;->mPicasaAlbumId:J

    .line 335
    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/LocalDataSource;->getThumbnailCache()Lcom/liquable/nemo/util/crop/DiskCache;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/util/crop/LocalDataSource;->sThumbnailCache:Lcom/liquable/nemo/util/crop/DiskCache;

    if-eq v0, v1, :cond_0

    .line 336
    const/4 v8, 0x0

    .line 359
    .end local v6    # "id":J
    .end local v9    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mAllItems:Z

    if-nez v0, :cond_2

    if-eqz v10, :cond_2

    if-eqz v8, :cond_2

    .line 360
    iget-wide v11, v10, Lcom/liquable/nemo/util/crop/MediaSet;->mId:J

    .line 361
    .local v11, "setId":J
    invoke-static {v11, v12}, Lcom/liquable/nemo/util/crop/CacheService;->isPresentInCache(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 362
    invoke-static {}, Lcom/liquable/nemo/util/crop/CacheService;->markDirty()V

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mIncludeImages:Z

    iget-boolean v4, p0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mIncludeVideos:Z

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/liquable/nemo/util/crop/CacheService;->loadMediaSets(Landroid/content/Context;Lcom/liquable/nemo/util/crop/MediaFeed;Lcom/liquable/nemo/util/crop/DataSource;ZZZ)V

    .line 367
    iget-boolean v0, p0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mSingleUri:Z

    if-nez v0, :cond_2

    .line 368
    invoke-virtual {p1, v10}, Lcom/liquable/nemo/util/crop/MediaFeed;->moveSetToFront(Lcom/liquable/nemo/util/crop/MediaSet;)V

    .line 371
    .end local v11    # "setId":J
    :cond_2
    return-void

    .line 338
    :cond_3
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mBucketId:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 340
    iget-boolean v0, p0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mFlattenAllItems:Z

    if-eqz v0, :cond_4

    .line 341
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1, p0}, Lcom/liquable/nemo/util/crop/MediaFeed;->addMediaSet(JLcom/liquable/nemo/util/crop/DataSource;)Lcom/liquable/nemo/util/crop/MediaSet;

    move-result-object v10

    .line 342
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/crop/Utils;->getBucketNameFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/liquable/nemo/util/crop/MediaSet;->mName:Ljava/lang/String;

    .line 343
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

    iget-object v1, v10, Lcom/liquable/nemo/util/crop/MediaSet;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/util/crop/LocalDataSource;->getBucketId(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, v10, Lcom/liquable/nemo/util/crop/MediaSet;->mId:J

    .line 345
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Lcom/liquable/nemo/util/crop/MediaSet;->setNumExpectedItems(I)V

    .line 346
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Lcom/liquable/nemo/util/crop/MediaSet;->generateTitle(Z)V

    .line 347
    const-wide/16 v0, -0x1

    iput-wide v0, v10, Lcom/liquable/nemo/util/crop/MediaSet;->mPicasaAlbumId:J

    goto :goto_0

    .line 349
    :cond_4
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mIncludeImages:Z

    iget-boolean v4, p0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mIncludeVideos:Z

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/liquable/nemo/util/crop/CacheService;->loadMediaSets(Landroid/content/Context;Lcom/liquable/nemo/util/crop/MediaFeed;Lcom/liquable/nemo/util/crop/DataSource;ZZZ)V

    goto/16 :goto_0

    .line 352
    :cond_5
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mBucketId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v0, p1, p0, v1, v2}, Lcom/liquable/nemo/util/crop/CacheService;->loadMediaSet(Landroid/content/Context;Lcom/liquable/nemo/util/crop/MediaFeed;Lcom/liquable/nemo/util/crop/DataSource;J)V

    .line 353
    invoke-virtual {p1}, Lcom/liquable/nemo/util/crop/MediaFeed;->getMediaSets()Ljava/util/ArrayList;

    move-result-object v13

    .line 354
    .local v13, "sets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaSet;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 355
    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "set":Lcom/liquable/nemo/util/crop/MediaSet;
    check-cast v10, Lcom/liquable/nemo/util/crop/MediaSet;

    .restart local v10    # "set":Lcom/liquable/nemo/util/crop/MediaSet;
    goto/16 :goto_0
.end method

.method public performOperation(ILjava/util/ArrayList;Ljava/lang/Object;)Z
    .locals 20
    .param p1, "operation"    # I
    .param p3, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/liquable/nemo/util/crop/MediaBucket;",
            ">;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 377
    .local p2, "mediaBuckets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaBucket;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 378
    .local v10, "numBuckets":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 379
    .local v5, "cr":Landroid/content/ContentResolver;
    packed-switch p1, :pswitch_data_0

    .line 432
    :cond_0
    const/16 v17, 0x1

    :goto_0
    return v17

    .line 381
    :pswitch_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v10, :cond_0

    .line 382
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/liquable/nemo/util/crop/MediaBucket;

    .line 383
    .local v4, "bucket":Lcom/liquable/nemo/util/crop/MediaBucket;
    iget-object v12, v4, Lcom/liquable/nemo/util/crop/MediaBucket;->mediaSet:Lcom/liquable/nemo/util/crop/MediaSet;

    .line 384
    .local v12, "set":Lcom/liquable/nemo/util/crop/MediaSet;
    iget-object v8, v4, Lcom/liquable/nemo/util/crop/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    .line 385
    .local v8, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaItem;>;"
    if-eqz v12, :cond_1

    if-nez v8, :cond_1

    .line 388
    sget-object v13, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 389
    .local v13, "uriImages":Landroid/net/Uri;
    sget-object v14, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 390
    .local v14, "uriVideos":Landroid/net/Uri;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "bucket_id="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-wide v0, v12, Lcom/liquable/nemo/util/crop/MediaSet;->mId:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 391
    .local v15, "whereImages":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "bucket_id="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-wide v0, v12, Lcom/liquable/nemo/util/crop/MediaSet;->mId:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 392
    .local v16, "whereVideos":Ljava/lang/String;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v5, v13, v15, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 393
    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v14, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 396
    .end local v13    # "uriImages":Landroid/net/Uri;
    .end local v14    # "uriVideos":Landroid/net/Uri;
    .end local v15    # "whereImages":Ljava/lang/String;
    .end local v16    # "whereVideos":Ljava/lang/String;
    :cond_1
    if-eqz v12, :cond_3

    if-eqz v8, :cond_3

    .line 398
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 400
    .local v11, "numItems":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_2
    if-ge v9, v11, :cond_2

    .line 401
    :try_start_0
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/liquable/nemo/util/crop/MediaItem;

    .line 402
    .local v7, "item":Lcom/liquable/nemo/util/crop/MediaItem;
    iget-object v0, v7, Lcom/liquable/nemo/util/crop/MediaItem;->mContentUri:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v5, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 404
    .end local v7    # "item":Lcom/liquable/nemo/util/crop/MediaItem;
    :catch_0
    move-exception v17

    .line 408
    :cond_2
    invoke-virtual {v12}, Lcom/liquable/nemo/util/crop/MediaSet;->updateNumExpectedItems()V

    .line 409
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/liquable/nemo/util/crop/MediaSet;->generateTitle(Z)V

    .line 381
    .end local v9    # "j":I
    .end local v11    # "numItems":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 415
    .end local v4    # "bucket":Lcom/liquable/nemo/util/crop/MediaBucket;
    .end local v6    # "i":I
    .end local v8    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaItem;>;"
    .end local v12    # "set":Lcom/liquable/nemo/util/crop/MediaSet;
    :pswitch_1
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    if-ge v6, v10, :cond_0

    .line 416
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/liquable/nemo/util/crop/MediaBucket;

    .line 417
    .restart local v4    # "bucket":Lcom/liquable/nemo/util/crop/MediaBucket;
    iget-object v8, v4, Lcom/liquable/nemo/util/crop/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    .line 418
    .restart local v8    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaItem;>;"
    if-nez v8, :cond_5

    .line 415
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    move-object/from16 v17, p3

    .line 421
    check-cast v17, Ljava/lang/Float;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 422
    .local v3, "angleToRotate":F
    const/16 v17, 0x0

    cmpl-float v17, v3, v17

    if-nez v17, :cond_6

    .line 423
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 425
    :cond_6
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 426
    .restart local v11    # "numItems":I
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_4
    if-ge v9, v11, :cond_4

    .line 427
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/liquable/nemo/util/crop/MediaItem;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/util/crop/LocalDataSource;->rotateItem(Lcom/liquable/nemo/util/crop/MediaItem;F)V

    .line 426
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 379
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public refresh(Lcom/liquable/nemo/util/crop/MediaFeed;[Ljava/lang/String;)V
    .locals 10
    .param p1, "feed"    # Lcom/liquable/nemo/util/crop/MediaFeed;
    .param p2, "databaseUris"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 438
    iget-object v7, p0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/liquable/nemo/util/crop/CacheService;->computeDirtySets(Landroid/content/Context;)[J

    move-result-object v1

    .line 439
    .local v1, "ids":[J
    array-length v4, v1

    .line 440
    .local v4, "numDirtySets":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_3

    .line 441
    aget-wide v5, v1, v0

    .line 442
    .local v5, "setId":J
    invoke-virtual {p1, v5, v6}, Lcom/liquable/nemo/util/crop/MediaFeed;->getMediaSet(J)Lcom/liquable/nemo/util/crop/MediaSet;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 443
    invoke-virtual {p1, v5, v6, p0}, Lcom/liquable/nemo/util/crop/MediaFeed;->replaceMediaSet(JLcom/liquable/nemo/util/crop/DataSource;)Lcom/liquable/nemo/util/crop/MediaSet;

    move-result-object v3

    .line 444
    .local v3, "newSet":Lcom/liquable/nemo/util/crop/MediaSet;
    invoke-virtual {v3, v9}, Lcom/liquable/nemo/util/crop/MediaSet;->generateTitle(Z)V

    .line 440
    .end local v3    # "newSet":Lcom/liquable/nemo/util/crop/MediaSet;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 446
    :cond_0
    invoke-virtual {p1, v5, v6, p0}, Lcom/liquable/nemo/util/crop/MediaFeed;->addMediaSet(JLcom/liquable/nemo/util/crop/DataSource;)Lcom/liquable/nemo/util/crop/MediaSet;

    move-result-object v2

    .line 447
    .local v2, "mediaSet":Lcom/liquable/nemo/util/crop/MediaSet;
    sget v7, Lcom/liquable/nemo/util/crop/LocalDataSource;->CAMERA_BUCKET_ID:I

    int-to-long v7, v7

    cmp-long v7, v5, v7

    if-nez v7, :cond_2

    .line 448
    const-string/jumbo v7, "Camera"

    iput-object v7, v2, Lcom/liquable/nemo/util/crop/MediaSet;->mName:Ljava/lang/String;

    .line 452
    :cond_1
    :goto_2
    invoke-virtual {v2, v9}, Lcom/liquable/nemo/util/crop/MediaSet;->generateTitle(Z)V

    goto :goto_1

    .line 449
    :cond_2
    sget v7, Lcom/liquable/nemo/util/crop/LocalDataSource;->DOWNLOAD_BUCKET_ID:I

    int-to-long v7, v7

    cmp-long v7, v5, v7

    if-nez v7, :cond_1

    .line 450
    const-string/jumbo v7, "download"

    iput-object v7, v2, Lcom/liquable/nemo/util/crop/MediaSet;->mName:Ljava/lang/String;

    goto :goto_2

    .line 455
    .end local v2    # "mediaSet":Lcom/liquable/nemo/util/crop/MediaSet;
    .end local v5    # "setId":J
    :cond_3
    return-void
.end method

.method public setMimeFilter(ZZ)V
    .locals 0
    .param p1, "includeImages"    # Z
    .param p2, "includeVideos"    # Z

    .prologue
    .line 497
    iput-boolean p1, p0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mIncludeImages:Z

    .line 498
    iput-boolean p2, p0, Lcom/liquable/nemo/util/crop/LocalDataSource;->mIncludeVideos:Z

    .line 499
    return-void
.end method

.method public shutdown()V
    .locals 0

    .prologue
    .line 504
    return-void
.end method
