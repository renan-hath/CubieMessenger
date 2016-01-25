.class public final Lcom/liquable/nemo/util/crop/DiskCache;
.super Ljava/lang/Object;
.source "DiskCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/util/crop/DiskCache$Record;
    }
.end annotation


# static fields
.field private static final CHUNK_FILE_PREFIX:Ljava/lang/String; = "chunk_"

.field private static final CHUNK_SIZE:I = 0x100000

.field private static final INDEX_FILE_NAME:Ljava/lang/String; = "index"

.field private static final INDEX_HEADER_MAGIC:I = 0xcafe

.field private static final INDEX_HEADER_VERSION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DiskCache"


# instance fields
.field private final mCacheDirectoryPath:Ljava/lang/String;

.field private final mChunkFiles:Lcom/liquable/nemo/util/crop/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/util/crop/LongSparseArray",
            "<",
            "Ljava/io/RandomAccessFile;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexMap:Lcom/liquable/nemo/util/crop/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/util/crop/LongSparseArray",
            "<",
            "Lcom/liquable/nemo/util/crop/DiskCache$Record;",
            ">;"
        }
    .end annotation
.end field

.field private mNumInsertions:I

.field private mTailChunk:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "cacheDirectoryName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v2, Lcom/liquable/nemo/util/crop/LongSparseArray;

    invoke-direct {v2}, Lcom/liquable/nemo/util/crop/LongSparseArray;-><init>()V

    iput-object v2, p0, Lcom/liquable/nemo/util/crop/DiskCache;->mChunkFiles:Lcom/liquable/nemo/util/crop/LongSparseArray;

    .line 61
    iput v3, p0, Lcom/liquable/nemo/util/crop/DiskCache;->mTailChunk:I

    .line 63
    iput v3, p0, Lcom/liquable/nemo/util/crop/DiskCache;->mNumInsertions:I

    .line 66
    invoke-static {p1}, Lcom/liquable/nemo/util/crop/CacheService;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "cacheDirectoryPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    .local v0, "cacheDirectory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 71
    const-string/jumbo v2, "DiskCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to create cache directory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    iput-object v1, p0, Lcom/liquable/nemo/util/crop/DiskCache;->mCacheDirectoryPath:Ljava/lang/String;

    .line 74
    invoke-direct {p0}, Lcom/liquable/nemo/util/crop/DiskCache;->loadIndex()V

    .line 75
    return-void
.end method

.method private getChunkFile(I)Ljava/io/RandomAccessFile;
    .locals 9
    .param p1, "chunk"    # I

    .prologue
    .line 146
    const/4 v1, 0x0

    .line 147
    .local v1, "chunkFile":Ljava/io/RandomAccessFile;
    iget-object v6, p0, Lcom/liquable/nemo/util/crop/DiskCache;->mChunkFiles:Lcom/liquable/nemo/util/crop/LongSparseArray;

    monitor-enter v6

    .line 148
    :try_start_0
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/DiskCache;->mChunkFiles:Lcom/liquable/nemo/util/crop/LongSparseArray;

    int-to-long v7, p1

    invoke-virtual {v5, v7, v8}, Lcom/liquable/nemo/util/crop/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/io/RandomAccessFile;

    move-object v1, v0

    .line 149
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    if-nez v1, :cond_0

    .line 151
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/liquable/nemo/util/crop/DiskCache;->mCacheDirectoryPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "chunk_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, "chunkFilePath":Ljava/lang/String;
    :try_start_1
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "rw"

    invoke-direct {v2, v3, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v1    # "chunkFile":Ljava/io/RandomAccessFile;
    .local v2, "chunkFile":Ljava/io/RandomAccessFile;
    move-object v1, v2

    .line 157
    .end local v2    # "chunkFile":Ljava/io/RandomAccessFile;
    .restart local v1    # "chunkFile":Ljava/io/RandomAccessFile;
    :goto_0
    iget-object v6, p0, Lcom/liquable/nemo/util/crop/DiskCache;->mChunkFiles:Lcom/liquable/nemo/util/crop/LongSparseArray;

    monitor-enter v6

    .line 158
    :try_start_2
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/DiskCache;->mChunkFiles:Lcom/liquable/nemo/util/crop/LongSparseArray;

    int-to-long v7, p1

    invoke-virtual {v5, v7, v8, v1}, Lcom/liquable/nemo/util/crop/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 159
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 161
    .end local v3    # "chunkFilePath":Ljava/lang/String;
    :cond_0
    return-object v1

    .line 149
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 154
    .restart local v3    # "chunkFilePath":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 155
    .local v4, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v5, "DiskCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to create or open the chunk file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 159
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :catchall_1
    move-exception v5

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5
.end method

.method private getIndexFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/liquable/nemo/util/crop/DiskCache;->mCacheDirectoryPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "index"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadIndex()V
    .locals 24

    .prologue
    .line 186
    invoke-direct/range {p0 .. p0}, Lcom/liquable/nemo/util/crop/DiskCache;->getIndexFilePath()Ljava/lang/String;

    move-result-object v15

    .line 189
    .local v15, "indexFilePath":Ljava/lang/String;
    :try_start_0
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v15}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 190
    .local v13, "fileInput":Ljava/io/FileInputStream;
    new-instance v10, Ljava/io/BufferedInputStream;

    const/16 v3, 0x400

    invoke-direct {v10, v13, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 191
    .local v10, "bufferedInput":Ljava/io/BufferedInputStream;
    new-instance v11, Ljava/io/DataInputStream;

    invoke-direct {v11, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 194
    .local v11, "dataInput":Ljava/io/DataInputStream;
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v18

    .line 195
    .local v18, "magic":I
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v21

    .line 196
    .local v21, "version":I
    const/16 v20, 0x1

    .line 197
    .local v20, "valid":Z
    const v3, 0xcafe

    move/from16 v0, v18

    if-eq v0, v3, :cond_0

    .line 198
    const-string/jumbo v3, "DiskCache"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Index file appears to be corrupt ("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " != "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const v23, 0xcafe

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "), "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/16 v20, 0x0

    .line 205
    :cond_0
    if-eqz v20, :cond_1

    const/4 v3, 0x2

    move/from16 v0, v21

    if-eq v0, v3, :cond_1

    .line 207
    const-string/jumbo v3, "DiskCache"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Index file version "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " not supported"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/16 v20, 0x0

    .line 210
    :cond_1
    if-eqz v20, :cond_2

    .line 211
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/liquable/nemo/util/crop/DiskCache;->mTailChunk:I

    .line 215
    :cond_2
    if-eqz v20, :cond_4

    .line 217
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v19

    .line 218
    .local v19, "numEntries":I
    new-instance v3, Lcom/liquable/nemo/util/crop/LongSparseArray;

    move/from16 v0, v19

    invoke-direct {v3, v0}, Lcom/liquable/nemo/util/crop/LongSparseArray;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/liquable/nemo/util/crop/DiskCache;->mIndexMap:Lcom/liquable/nemo/util/crop/LongSparseArray;

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/util/crop/DiskCache;->mIndexMap:Lcom/liquable/nemo/util/crop/LongSparseArray;

    move-object/from16 v22, v0

    monitor-enter v22
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 220
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move/from16 v0, v19

    if-ge v14, v0, :cond_3

    .line 221
    :try_start_1
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v16

    .line 222
    .local v16, "key":J
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    .line 223
    .local v4, "chunk":I
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 224
    .local v5, "offset":I
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 225
    .local v6, "size":I
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 226
    .local v7, "sizeOnDisk":I
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    .line 227
    .local v8, "timestamp":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/util/crop/DiskCache;->mIndexMap:Lcom/liquable/nemo/util/crop/LongSparseArray;

    move-object/from16 v23, v0

    new-instance v3, Lcom/liquable/nemo/util/crop/DiskCache$Record;

    invoke-direct/range {v3 .. v9}, Lcom/liquable/nemo/util/crop/DiskCache$Record;-><init>(IIIIJ)V

    move-object/from16 v0, v23

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/liquable/nemo/util/crop/LongSparseArray;->append(JLjava/lang/Object;)V

    .line 220
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 229
    .end local v4    # "chunk":I
    .end local v5    # "offset":I
    .end local v6    # "size":I
    .end local v7    # "sizeOnDisk":I
    .end local v8    # "timestamp":J
    .end local v16    # "key":J
    :cond_3
    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    .end local v14    # "i":I
    .end local v19    # "numEntries":I
    :cond_4
    :try_start_2
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V

    .line 233
    if-nez v20, :cond_5

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/util/crop/DiskCache;->deleteAll()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 242
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/liquable/nemo/util/crop/DiskCache;->mIndexMap:Lcom/liquable/nemo/util/crop/LongSparseArray;

    if-nez v3, :cond_6

    .line 243
    new-instance v3, Lcom/liquable/nemo/util/crop/LongSparseArray;

    invoke-direct {v3}, Lcom/liquable/nemo/util/crop/LongSparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/liquable/nemo/util/crop/DiskCache;->mIndexMap:Lcom/liquable/nemo/util/crop/LongSparseArray;

    .line 246
    .end local v10    # "bufferedInput":Ljava/io/BufferedInputStream;
    .end local v11    # "dataInput":Ljava/io/DataInputStream;
    .end local v13    # "fileInput":Ljava/io/FileInputStream;
    .end local v18    # "magic":I
    .end local v20    # "valid":Z
    .end local v21    # "version":I
    :cond_6
    :goto_1
    return-void

    .line 229
    .restart local v10    # "bufferedInput":Ljava/io/BufferedInputStream;
    .restart local v11    # "dataInput":Ljava/io/DataInputStream;
    .restart local v13    # "fileInput":Ljava/io/FileInputStream;
    .restart local v14    # "i":I
    .restart local v18    # "magic":I
    .restart local v19    # "numEntries":I
    .restart local v20    # "valid":Z
    .restart local v21    # "version":I
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v22
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 237
    .end local v10    # "bufferedInput":Ljava/io/BufferedInputStream;
    .end local v11    # "dataInput":Ljava/io/DataInputStream;
    .end local v13    # "fileInput":Ljava/io/FileInputStream;
    .end local v14    # "i":I
    .end local v18    # "magic":I
    .end local v19    # "numEntries":I
    .end local v20    # "valid":Z
    .end local v21    # "version":I
    :catch_0
    move-exception v3

    .line 242
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/liquable/nemo/util/crop/DiskCache;->mIndexMap:Lcom/liquable/nemo/util/crop/LongSparseArray;

    if-nez v3, :cond_6

    .line 243
    new-instance v3, Lcom/liquable/nemo/util/crop/LongSparseArray;

    invoke-direct {v3}, Lcom/liquable/nemo/util/crop/LongSparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/liquable/nemo/util/crop/DiskCache;->mIndexMap:Lcom/liquable/nemo/util/crop/LongSparseArray;

    goto :goto_1

    .line 239
    :catch_1
    move-exception v12

    .line 240
    .local v12, "e":Ljava/io/IOException;
    :try_start_5
    const-string/jumbo v3, "DiskCache"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Unable to read the index file "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 242
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/liquable/nemo/util/crop/DiskCache;->mIndexMap:Lcom/liquable/nemo/util/crop/LongSparseArray;

    if-nez v3, :cond_6

    .line 243
    new-instance v3, Lcom/liquable/nemo/util/crop/LongSparseArray;

    invoke-direct {v3}, Lcom/liquable/nemo/util/crop/LongSparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/liquable/nemo/util/crop/DiskCache;->mIndexMap:Lcom/liquable/nemo/util/crop/LongSparseArray;

    goto :goto_1

    .line 242
    .end local v12    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/util/crop/DiskCache;->mIndexMap:Lcom/liquable/nemo/util/crop/LongSparseArray;

    move-object/from16 v22, v0

    if-nez v22, :cond_7

    .line 243
    new-instance v22, Lcom/liquable/nemo/util/crop/LongSparseArray;

    invoke-direct/range {v22 .. v22}, Lcom/liquable/nemo/util/crop/LongSparseArray;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/liquable/nemo/util/crop/DiskCache;->mIndexMap:Lcom/liquable/nemo/util/crop/LongSparseArray;

    :cond_7
    throw v3
.end method

.method private shutdown()V
    .locals 6

    .prologue
    .line 315
    iget-object v4, p0, Lcom/liquable/nemo/util/crop/DiskCache;->mChunkFiles:Lcom/liquable/nemo/util/crop/LongSparseArray;

    monitor-enter v4

    .line 316
    const/4 v1, 0x0

    .local v1, "i":I
    :try_start_0
    iget-object v3, p0, Lcom/liquable/nemo/util/crop/DiskCache;->mChunkFiles:Lcom/liquable/nemo/util/crop/LongSparseArray;

    invoke-virtual {v3}, Lcom/liquable/nemo/util/crop/LongSparseArray;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 318
    :try_start_1
    iget-object v3, p0, Lcom/liquable/nemo/util/crop/DiskCache;->mChunkFiles:Lcom/liquable/nemo/util/crop/LongSparseArray;

    invoke-virtual {v3, v1}, Lcom/liquable/nemo/util/crop/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 316
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v3, "DiskCache"

    const-string/jumbo v5, "Unable to close chunk file"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 324
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 323
    .restart local v2    # "size":I
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/liquable/nemo/util/crop/DiskCache;->mChunkFiles:Lcom/liquable/nemo/util/crop/LongSparseArray;

    invoke-virtual {v3}, Lcom/liquable/nemo/util/crop/LongSparseArray;->clear()V

    .line 324
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 325
    iget-object v3, p0, Lcom/liquable/nemo/util/crop/DiskCache;->mIndexMap:Lcom/liquable/nemo/util/crop/LongSparseArray;

    if-eqz v3, :cond_2

    .line 326
    iget-object v4, p0, Lcom/liquable/nemo/util/crop/DiskCache;->mIndexMap:Lcom/liquable/nemo/util/crop/LongSparseArray;

    monitor-enter v4

    .line 327
    :try_start_4
    iget-object v3, p0, Lcom/liquable/nemo/util/crop/DiskCache;->mIndexMap:Lcom/liquable/nemo/util/crop/LongSparseArray;

    if-eqz v3, :cond_1

    .line 328
    iget-object v3, p0, Lcom/liquable/nemo/util/crop/DiskCache;->mIndexMap:Lcom/liquable/nemo/util/crop/LongSparseArray;

    invoke-virtual {v3}, Lcom/liquable/nemo/util/crop/LongSparseArray;->clear()V

    .line 330
    :cond_1
    monitor-exit v4

    .line 332
    :cond_2
    return-void

    .line 330
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3
.end method

.method private writeIndex()V
    .locals 15

    .prologue
    .line 335
    const/4 v10, 0x0

    .line 336
    .local v10, "tempFile":Ljava/io/File;
    iget-object v11, p0, Lcom/liquable/nemo/util/crop/DiskCache;->mCacheDirectoryPath:Ljava/lang/String;

    .line 337
    .local v11, "tempFilePath":Ljava/lang/String;
    invoke-direct {p0}, Lcom/liquable/nemo/util/crop/DiskCache;->getIndexFilePath()Ljava/lang/String;

    move-result-object v5

    .line 339
    .local v5, "indexFilePath":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v12, "DiskCache"

    const/4 v13, 0x0

    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v12, v13, v14}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 345
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 346
    .local v3, "fileOutput":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    const/16 v12, 0x400

    invoke-direct {v0, v3, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 347
    .local v0, "bufferedOutput":Ljava/io/BufferedOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 350
    .local v1, "dataOutput":Ljava/io/DataOutputStream;
    iget-object v12, p0, Lcom/liquable/nemo/util/crop/DiskCache;->mIndexMap:Lcom/liquable/nemo/util/crop/LongSparseArray;

    invoke-virtual {v12}, Lcom/liquable/nemo/util/crop/LongSparseArray;->size()I

    move-result v8

    .line 351
    .local v8, "numRecords":I
    const v12, 0xcafe

    invoke-virtual {v1, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 352
    const/4 v12, 0x2

    invoke-virtual {v1, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 353
    iget v12, p0, Lcom/liquable/nemo/util/crop/DiskCache;->mTailChunk:I

    invoke-virtual {v1, v12}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 354
    invoke-virtual {v1, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 357
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v8, :cond_0

    .line 358
    iget-object v12, p0, Lcom/liquable/nemo/util/crop/DiskCache;->mIndexMap:Lcom/liquable/nemo/util/crop/LongSparseArray;

    invoke-virtual {v12, v4}, Lcom/liquable/nemo/util/crop/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    .line 359
    .local v6, "key":J
    iget-object v12, p0, Lcom/liquable/nemo/util/crop/DiskCache;->mIndexMap:Lcom/liquable/nemo/util/crop/LongSparseArray;

    invoke-virtual {v12, v4}, Lcom/liquable/nemo/util/crop/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/liquable/nemo/util/crop/DiskCache$Record;

    .line 360
    .local v9, "record":Lcom/liquable/nemo/util/crop/DiskCache$Record;
    invoke-virtual {v1, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 361
    iget v12, v9, Lcom/liquable/nemo/util/crop/DiskCache$Record;->chunk:I

    invoke-virtual {v1, v12}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 362
    iget v12, v9, Lcom/liquable/nemo/util/crop/DiskCache$Record;->offset:I

    invoke-virtual {v1, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 363
    iget v12, v9, Lcom/liquable/nemo/util/crop/DiskCache$Record;->size:I

    invoke-virtual {v1, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 364
    iget v12, v9, Lcom/liquable/nemo/util/crop/DiskCache$Record;->sizeOnDisk:I

    invoke-virtual {v1, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 365
    iget-wide v12, v9, Lcom/liquable/nemo/util/crop/DiskCache$Record;->timestamp:J

    invoke-virtual {v1, v12, v13}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 357
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 340
    .end local v0    # "bufferedOutput":Ljava/io/BufferedOutputStream;
    .end local v1    # "dataOutput":Ljava/io/DataOutputStream;
    .end local v3    # "fileOutput":Ljava/io/FileOutputStream;
    .end local v4    # "i":I
    .end local v6    # "key":J
    .end local v8    # "numRecords":I
    .end local v9    # "record":Lcom/liquable/nemo/util/crop/DiskCache$Record;
    :catch_0
    move-exception v2

    .line 341
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v12, "DiskCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Unable to create or tempFile "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 369
    .restart local v0    # "bufferedOutput":Ljava/io/BufferedOutputStream;
    .restart local v1    # "dataOutput":Ljava/io/DataOutputStream;
    .restart local v3    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v4    # "i":I
    .restart local v8    # "numRecords":I
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 374
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 375
    .end local v0    # "bufferedOutput":Ljava/io/BufferedOutputStream;
    .end local v1    # "dataOutput":Ljava/io/DataOutputStream;
    .end local v3    # "fileOutput":Ljava/io/FileOutputStream;
    .end local v4    # "i":I
    .end local v8    # "numRecords":I
    :catch_1
    move-exception v2

    .line 377
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v12, "DiskCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Unable to write the index file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/liquable/nemo/util/crop/DiskCache;->writeIndex()V

    .line 79
    invoke-direct {p0}, Lcom/liquable/nemo/util/crop/DiskCache;->shutdown()V

    .line 80
    return-void
.end method

.method public delete(J)V
    .locals 2
    .param p1, "key"    # J

    .prologue
    .line 83
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/DiskCache;->mIndexMap:Lcom/liquable/nemo/util/crop/LongSparseArray;

    monitor-enter v1

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/DiskCache;->mIndexMap:Lcom/liquable/nemo/util/crop/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Lcom/liquable/nemo/util/crop/LongSparseArray;->remove(J)V

    .line 85
    monitor-exit v1

    .line 86
    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deleteAll()V
    .locals 6

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/liquable/nemo/util/crop/DiskCache;->shutdown()V

    .line 93
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/liquable/nemo/util/crop/DiskCache;->mCacheDirectoryPath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, "cacheDirectory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "cacheFiles":[Ljava/lang/String;
    if-nez v2, :cond_1

    .line 101
    :cond_0
    return-void

    .line 98
    :cond_1
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v2, v3

    .line 99
    .local v1, "cacheFile":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 98
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public finalize()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/liquable/nemo/util/crop/DiskCache;->shutdown()V

    .line 106
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/liquable/nemo/util/crop/DiskCache;->mNumInsertions:I

    if-eqz v0, :cond_0

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lcom/liquable/nemo/util/crop/DiskCache;->mNumInsertions:I

    .line 111
    invoke-direct {p0}, Lcom/liquable/nemo/util/crop/DiskCache;->writeIndex()V

    .line 113
    :cond_0
    return-void
.end method

.method public get(JJ)[B
    .locals 10
    .param p1, "key"    # J
    .param p3, "timestamp"    # J

    .prologue
    const/4 v6, 0x0

    .line 117
    const/4 v4, 0x0

    .line 118
    .local v4, "record":Lcom/liquable/nemo/util/crop/DiskCache$Record;
    iget-object v7, p0, Lcom/liquable/nemo/util/crop/DiskCache;->mIndexMap:Lcom/liquable/nemo/util/crop/LongSparseArray;

    monitor-enter v7

    .line 119
    :try_start_0
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/DiskCache;->mIndexMap:Lcom/liquable/nemo/util/crop/LongSparseArray;

    invoke-virtual {v5, p1, p2}, Lcom/liquable/nemo/util/crop/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/liquable/nemo/util/crop/DiskCache$Record;

    move-object v4, v0

    .line 120
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    if-eqz v4, :cond_1

    .line 123
    iget-wide v7, v4, Lcom/liquable/nemo/util/crop/DiskCache$Record;->timestamp:J

    cmp-long v5, v7, p3

    if-gez v5, :cond_0

    .line 124
    const-string/jumbo v5, "DiskCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "File has been updated to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " since the last time "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v4, Lcom/liquable/nemo/util/crop/DiskCache$Record;->timestamp:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " stored in cache."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v6

    .line 142
    :goto_0
    return-object v2

    .line 120
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 131
    :cond_0
    :try_start_2
    iget v5, v4, Lcom/liquable/nemo/util/crop/DiskCache$Record;->chunk:I

    invoke-direct {p0, v5}, Lcom/liquable/nemo/util/crop/DiskCache;->getChunkFile(I)Ljava/io/RandomAccessFile;

    move-result-object v1

    .line 132
    .local v1, "chunkFile":Ljava/io/RandomAccessFile;
    if-eqz v1, :cond_1

    .line 133
    iget v5, v4, Lcom/liquable/nemo/util/crop/DiskCache$Record;->size:I

    new-array v2, v5, [B

    .line 134
    .local v2, "data":[B
    iget v5, v4, Lcom/liquable/nemo/util/crop/DiskCache$Record;->offset:I

    int-to-long v7, v5

    invoke-virtual {v1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 135
    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->readFully([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 138
    .end local v1    # "chunkFile":Ljava/io/RandomAccessFile;
    .end local v2    # "data":[B
    :catch_0
    move-exception v3

    .line 139
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "DiskCache"

    const-string/jumbo v7, "Unable to read from chunk file"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v2, v6

    .line 142
    goto :goto_0
.end method

.method public isDataAvailable(JJ)Z
    .locals 6
    .param p1, "key"    # J
    .param p3, "timestamp"    # J

    .prologue
    const/4 v3, 0x0

    .line 169
    const/4 v1, 0x0

    .line 170
    .local v1, "record":Lcom/liquable/nemo/util/crop/DiskCache$Record;
    iget-object v4, p0, Lcom/liquable/nemo/util/crop/DiskCache;->mIndexMap:Lcom/liquable/nemo/util/crop/LongSparseArray;

    monitor-enter v4

    .line 171
    :try_start_0
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/DiskCache;->mIndexMap:Lcom/liquable/nemo/util/crop/LongSparseArray;

    invoke-virtual {v2, p1, p2}, Lcom/liquable/nemo/util/crop/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/liquable/nemo/util/crop/DiskCache$Record;

    move-object v1, v0

    .line 172
    monitor-exit v4

    .line 173
    if-nez v1, :cond_0

    move v2, v3

    .line 182
    :goto_0
    return v2

    .line 172
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 176
    :cond_0
    iget-wide v4, v1, Lcom/liquable/nemo/util/crop/DiskCache$Record;->timestamp:J

    cmp-long v2, v4, p3

    if-gez v2, :cond_1

    move v2, v3

    .line 177
    goto :goto_0

    .line 179
    :cond_1
    iget v2, v1, Lcom/liquable/nemo/util/crop/DiskCache$Record;->size:I

    if-nez v2, :cond_2

    move v2, v3

    .line 180
    goto :goto_0

    .line 182
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public put(J[BJ)V
    .locals 15
    .param p1, "key"    # J
    .param p3, "data"    # [B
    .param p4, "timestamp"    # J

    .prologue
    .line 250
    const/4 v13, 0x0

    .line 251
    .local v13, "record":Lcom/liquable/nemo/util/crop/DiskCache$Record;
    iget-object v4, p0, Lcom/liquable/nemo/util/crop/DiskCache;->mIndexMap:Lcom/liquable/nemo/util/crop/LongSparseArray;

    monitor-enter v4

    .line 252
    :try_start_0
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/DiskCache;->mIndexMap:Lcom/liquable/nemo/util/crop/LongSparseArray;

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Lcom/liquable/nemo/util/crop/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/liquable/nemo/util/crop/DiskCache$Record;

    move-object v13, v0

    .line 253
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    if-eqz v13, :cond_1

    move-object/from16 v0, p3

    array-length v2, v0

    iget v4, v13, Lcom/liquable/nemo/util/crop/DiskCache$Record;->sizeOnDisk:I

    if-gt v2, v4, :cond_1

    .line 256
    iget v3, v13, Lcom/liquable/nemo/util/crop/DiskCache$Record;->chunk:I

    .line 258
    .local v3, "currentChunk":I
    :try_start_1
    iget v2, v13, Lcom/liquable/nemo/util/crop/DiskCache$Record;->chunk:I

    invoke-direct {p0, v2}, Lcom/liquable/nemo/util/crop/DiskCache;->getChunkFile(I)Ljava/io/RandomAccessFile;

    move-result-object v11

    .line 259
    .local v11, "chunkFile":Ljava/io/RandomAccessFile;
    if-eqz v11, :cond_1

    .line 260
    iget v2, v13, Lcom/liquable/nemo/util/crop/DiskCache$Record;->offset:I

    int-to-long v7, v2

    invoke-virtual {v11, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 261
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 262
    iget-object v9, p0, Lcom/liquable/nemo/util/crop/DiskCache;->mIndexMap:Lcom/liquable/nemo/util/crop/LongSparseArray;

    monitor-enter v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 263
    :try_start_2
    iget-object v10, p0, Lcom/liquable/nemo/util/crop/DiskCache;->mIndexMap:Lcom/liquable/nemo/util/crop/LongSparseArray;

    new-instance v2, Lcom/liquable/nemo/util/crop/DiskCache$Record;

    iget v4, v13, Lcom/liquable/nemo/util/crop/DiskCache$Record;->offset:I

    move-object/from16 v0, p3

    array-length v5, v0

    iget v6, v13, Lcom/liquable/nemo/util/crop/DiskCache$Record;->sizeOnDisk:I

    move-wide/from16 v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/liquable/nemo/util/crop/DiskCache$Record;-><init>(IIIIJ)V

    move-wide/from16 v0, p1

    invoke-virtual {v10, v0, v1, v2}, Lcom/liquable/nemo/util/crop/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 268
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 269
    :try_start_3
    iget v2, p0, Lcom/liquable/nemo/util/crop/DiskCache;->mNumInsertions:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/liquable/nemo/util/crop/DiskCache;->mNumInsertions:I

    const/16 v4, 0x20

    if-ne v2, v4, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/DiskCache;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 312
    .end local v3    # "currentChunk":I
    :cond_0
    :goto_0
    return-void

    .line 253
    .end local v11    # "chunkFile":Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 268
    .restart local v3    # "currentChunk":I
    .restart local v11    # "chunkFile":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 279
    .end local v11    # "chunkFile":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v12

    .line 280
    .local v12, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "DiskCache"

    const-string/jumbo v4, "Unable to read from chunk file"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    .end local v3    # "currentChunk":I
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_1
    iget v5, p0, Lcom/liquable/nemo/util/crop/DiskCache;->mTailChunk:I

    .line 285
    .local v5, "chunk":I
    invoke-direct {p0, v5}, Lcom/liquable/nemo/util/crop/DiskCache;->getChunkFile(I)Ljava/io/RandomAccessFile;

    move-result-object v11

    .line 286
    .restart local v11    # "chunkFile":Ljava/io/RandomAccessFile;
    if-eqz v11, :cond_3

    .line 288
    :try_start_7
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    long-to-int v6, v7

    .line 289
    .local v6, "offset":I
    int-to-long v7, v6

    invoke-virtual {v11, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 290
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 291
    iget-object v14, p0, Lcom/liquable/nemo/util/crop/DiskCache;->mIndexMap:Lcom/liquable/nemo/util/crop/LongSparseArray;

    monitor-enter v14
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 292
    :try_start_8
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/DiskCache;->mIndexMap:Lcom/liquable/nemo/util/crop/LongSparseArray;

    new-instance v4, Lcom/liquable/nemo/util/crop/DiskCache$Record;

    move-object/from16 v0, p3

    array-length v7, v0

    move-object/from16 v0, p3

    array-length v8, v0

    move-wide/from16 v9, p4

    invoke-direct/range {v4 .. v10}, Lcom/liquable/nemo/util/crop/DiskCache$Record;-><init>(IIIIJ)V

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1, v4}, Lcom/liquable/nemo/util/crop/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 293
    monitor-exit v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 294
    :try_start_9
    move-object/from16 v0, p3

    array-length v2, v0

    add-int/2addr v2, v6

    const/high16 v4, 0x100000

    if-le v2, v4, :cond_2

    .line 295
    iget v2, p0, Lcom/liquable/nemo/util/crop/DiskCache;->mTailChunk:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/liquable/nemo/util/crop/DiskCache;->mTailChunk:I

    .line 298
    :cond_2
    iget v2, p0, Lcom/liquable/nemo/util/crop/DiskCache;->mNumInsertions:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/liquable/nemo/util/crop/DiskCache;->mNumInsertions:I

    const/16 v4, 0x20

    if-ne v2, v4, :cond_0

    .line 304
    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/DiskCache;->flush()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_0

    .line 306
    .end local v6    # "offset":I
    :catch_1
    move-exception v12

    .line 307
    .local v12, "e":Ljava/io/IOException;
    const-string/jumbo v2, "DiskCache"

    const-string/jumbo v4, "Unable to write new entry to chunk file"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 293
    .end local v12    # "e":Ljava/io/IOException;
    .restart local v6    # "offset":I
    :catchall_2
    move-exception v2

    :try_start_a
    monitor-exit v14
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v2
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    .line 310
    .end local v6    # "offset":I
    :cond_3
    const-string/jumbo v2, "DiskCache"

    const-string/jumbo v4, "getChunkFile() returned null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
