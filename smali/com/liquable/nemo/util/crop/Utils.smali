.class public Lcom/liquable/nemo/util/crop/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static CRCTable:[J = null

.field private static final INITIALCRC:J = -0x1L

.field private static final POLY64REV:J = -0x6a536cd653b4364bL

.field private static final UNCONSTRAINED:I = -0x1

.field private static init:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    sput-boolean v0, Lcom/liquable/nemo/util/crop/Utils;->init:Z

    .line 302
    const/16 v0, 0x100

    new-array v0, v0, [J

    sput-object v0, Lcom/liquable/nemo/util/crop/Utils;->CRCTable:[J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Copy(Ljava/io/File;Ljava/io/File;)V
    .locals 2
    .param p0, "src"    # Ljava/io/File;
    .param p1, "dst"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 98
    .local v0, "in":Ljava/io/InputStream;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 99
    .local v1, "out":Ljava/io/OutputStream;
    invoke-static {v0, v1}, Lcom/liquable/nemo/util/crop/Utils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 100
    return-void
.end method

.method public static final Crc64(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "in"    # Ljava/lang/String;

    .prologue
    .line 121
    if-nez p0, :cond_0

    .line 122
    const/4 v4, 0x0

    .line 131
    :goto_0
    return-object v4

    .line 124
    :cond_0
    invoke-static {p0}, Lcom/liquable/nemo/util/crop/Utils;->Crc64Long(Ljava/lang/String;)J

    move-result-wide v0

    .line 128
    .local v0, "crc":J
    long-to-int v5, v0

    and-int/lit8 v3, v5, -0x1

    .line 129
    .local v3, "low":I
    const/16 v5, 0x20

    shr-long v5, v0, v5

    long-to-int v5, v5

    and-int/lit8 v2, v5, -0x1

    .line 130
    .local v2, "high":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, "outVal":Ljava/lang/String;
    goto :goto_0
.end method

.method public static final Crc64Long(Ljava/lang/String;)J
    .locals 14
    .param p0, "in"    # Ljava/lang/String;

    .prologue
    .line 142
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_2

    .line 143
    :cond_0
    const-wide/16 v1, 0x0

    .line 167
    :cond_1
    return-wide v1

    .line 146
    :cond_2
    const-wide/16 v1, -0x1

    .line 147
    .local v1, "crc":J
    sget-boolean v10, Lcom/liquable/nemo/util/crop/Utils;->init:Z

    if-nez v10, :cond_6

    .line 148
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v10, 0x100

    if-ge v3, v10, :cond_5

    .line 149
    int-to-long v7, v3

    .line 150
    .local v7, "part":J
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    const/16 v10, 0x8

    if-ge v4, v10, :cond_4

    .line 151
    long-to-int v10, v7

    and-int/lit8 v9, v10, 0x1

    .line 152
    .local v9, "value":I
    if-eqz v9, :cond_3

    .line 153
    const/4 v10, 0x1

    shr-long v10, v7, v10

    const-wide v12, -0x6a536cd653b4364bL    # -2.848111467964452E-204

    xor-long v7, v10, v12

    .line 150
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 155
    :cond_3
    const/4 v10, 0x1

    shr-long/2addr v7, v10

    goto :goto_2

    .line 158
    .end local v9    # "value":I
    :cond_4
    sget-object v10, Lcom/liquable/nemo/util/crop/Utils;->CRCTable:[J

    aput-wide v7, v10, v3

    .line 148
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 160
    .end local v4    # "j":I
    .end local v7    # "part":J
    :cond_5
    const/4 v10, 0x1

    sput-boolean v10, Lcom/liquable/nemo/util/crop/Utils;->init:Z

    .line 162
    .end local v3    # "i":I
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 163
    .local v6, "length":I
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_3
    if-ge v5, v6, :cond_1

    .line 164
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 165
    .local v0, "c":C
    sget-object v10, Lcom/liquable/nemo/util/crop/Utils;->CRCTable:[J

    long-to-int v11, v1

    xor-int/2addr v11, v0

    and-int/lit16 v11, v11, 0xff

    aget-wide v10, v10, v11

    const/16 v12, 0x8

    shr-long v12, v1, v12

    xor-long v1, v10, v12

    .line 163
    add-int/lit8 v5, v5, 0x1

    goto :goto_3
.end method

.method public static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 12
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "minSideLength"    # I
    .param p2, "maxNumOfPixels"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v11, -0x1

    .line 40
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v7

    .line 41
    .local v4, "w":D
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v7

    .line 43
    .local v0, "h":D
    if-ne p2, v11, :cond_1

    move v2, v6

    .line 45
    .local v2, "lowerBound":I
    :goto_0
    if-ne p1, v11, :cond_2

    const/16 v3, 0x80

    .line 48
    .local v3, "upperBound":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 58
    .end local v2    # "lowerBound":I
    :cond_0
    :goto_2
    return v2

    .line 43
    .end local v3    # "upperBound":I
    :cond_1
    mul-double v7, v4, v0

    int-to-double v9, p2

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v2, v7

    goto :goto_0

    .line 45
    .restart local v2    # "lowerBound":I
    :cond_2
    int-to-double v7, p1

    div-double v7, v4, v7

    .line 46
    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    int-to-double v9, p1

    div-double v9, v0, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    double-to-int v3, v7

    goto :goto_1

    .line 53
    .restart local v3    # "upperBound":I
    :cond_3
    if-ne p2, v11, :cond_4

    if-ne p1, v11, :cond_4

    move v2, v6

    .line 54
    goto :goto_2

    .line 55
    :cond_4
    if-eq p1, v11, :cond_0

    move v2, v3

    .line 58
    goto :goto_2
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "minSideLength"    # I
    .param p2, "maxNumOfPixels"    # I

    .prologue
    .line 79
    invoke-static {p0, p1, p2}, Lcom/liquable/nemo/util/crop/Utils;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 82
    .local v0, "initialSize":I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    .line 83
    const/4 v1, 0x1

    .line 84
    .local v1, "roundedSize":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 85
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    .end local v1    # "roundedSize":I
    :cond_0
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .line 91
    .restart local v1    # "roundedSize":I
    :cond_1
    return v1
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    const/16 v2, 0x400

    new-array v0, v2, [B

    .line 106
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "len":I
    if-lez v1, :cond_0

    .line 107
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 110
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 111
    return-void
.end method

.method public static getBucketIdFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)J
    .locals 15
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 171
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    const-string/jumbo v14, "/"

    .line 173
    .local v14, "string":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v11

    .line 174
    .local v11, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v10

    .line 175
    .local v10, "numPaths":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    add-int/lit8 v0, v10, -0x1

    if-ge v7, v0, :cond_1

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 177
    add-int/lit8 v0, v10, -0x2

    if-eq v7, v0, :cond_0

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 175
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 181
    :cond_1
    invoke-static {v14}, Lcom/liquable/nemo/util/crop/LocalDataSource;->getBucketId(Ljava/lang/String;)I

    move-result v0

    int-to-long v12, v0

    .line 213
    .end local v7    # "i":I
    .end local v10    # "numPaths":I
    .end local v11    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "string":Ljava/lang/String;
    :goto_1
    return-wide v12

    .line 183
    :cond_2
    const/4 v6, 0x0

    .line 185
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 186
    .local v8, "id":J
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "bucket_id"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 191
    if-eqz v6, :cond_4

    .line 192
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 193
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 194
    .local v12, "setVal":J
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 210
    .end local v8    # "id":J
    .end local v12    # "setVal":J
    :catch_0
    move-exception v0

    .line 213
    :cond_3
    const-wide/16 v12, -0x1

    goto :goto_1

    .line 198
    .restart local v8    # "id":J
    :cond_4
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "bucket_id"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 203
    if-eqz v6, :cond_3

    .line 204
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 205
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 206
    .restart local v12    # "setVal":J
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public static getBucketNameFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 218
    invoke-static {p0, p1}, Lcom/liquable/nemo/util/crop/Utils;->getBucketIdFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)J

    move-result-wide v6

    .line 219
    .local v6, "bucketId":J
    const-wide/16 v0, -0x1

    cmp-long v0, v6, v0

    if-eqz v0, :cond_1

    .line 221
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "bucket_display_name"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bucket_id=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 226
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 227
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 229
    .local v9, "setName":Ljava/lang/String;
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 249
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "setName":Ljava/lang/String;
    :goto_0
    return-object v9

    .line 233
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "bucket_display_name"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bucket_id=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 238
    if-eqz v8, :cond_1

    .line 239
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 241
    .restart local v9    # "setName":Ljava/lang/String;
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 245
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "setName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 249
    :cond_1
    const-string/jumbo v9, ""

    goto :goto_0
.end method

.method public static final readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 2
    .param p0, "dis"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "retVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 255
    const/4 v0, 0x0

    .line 257
    .end local v0    # "retVal":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static final resizeBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "maxSize"    # I

    .prologue
    .line 261
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 262
    .local v4, "srcWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 263
    .local v3, "srcHeight":I
    move v5, p1

    .line 264
    .local v5, "width":I
    move v0, p1

    .line 265
    .local v0, "height":I
    const/4 v1, 0x0

    .line 266
    .local v1, "needsResize":Z
    if-le v4, v3, :cond_1

    .line 267
    if-le v4, p1, :cond_0

    .line 268
    const/4 v1, 0x1

    .line 269
    mul-int v6, p1, v3

    div-int v0, v6, v4

    .line 277
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 278
    const/4 v6, 0x1

    invoke-static {p0, v5, v0, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 281
    :goto_1
    return-object v2

    .line 272
    :cond_1
    if-le v3, p1, :cond_0

    .line 273
    const/4 v1, 0x1

    .line 274
    mul-int v6, p1, v4

    div-int v5, v6, v3

    goto :goto_0

    :cond_2
    move-object v2, p0

    .line 281
    goto :goto_1
.end method

.method public static final writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 1
    .param p0, "dos"    # Ljava/io/DataOutputStream;
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 287
    if-nez p1, :cond_0

    .line 288
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 292
    :goto_0
    return-void

    .line 290
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0
.end method
