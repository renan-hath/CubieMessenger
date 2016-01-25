.class public Lcom/liquable/nemo/db/CustomStickerDao;
.super Ljava/lang/Object;
.source "CustomStickerDao.java"


# static fields
.field private static final COLUMN_NAME_CUSTOM_STICKER_CODE:Ljava/lang/String; = "CS_CUSTOM_STICKER_CODE"

.field public static final COLUMN_NAME_EFFECT_HEIGHT:Ljava/lang/String; = "CS_EFFECT_HEIGHT"

.field public static final COLUMN_NAME_EFFECT_KEYPATH_1:Ljava/lang/String; = "CS_EFFECT_KEYPATH_1"

.field public static final COLUMN_NAME_EFFECT_KEYPATH_2:Ljava/lang/String; = "CS_EFFECT_KEYPATH_2"

.field public static final COLUMN_NAME_EFFECT_OFFSET_X:Ljava/lang/String; = "CS_EFFECT_OFFSET_X"

.field public static final COLUMN_NAME_EFFECT_OFFSET_Y:Ljava/lang/String; = "CS_EFFECT_OFFSET_Y"

.field public static final COLUMN_NAME_EFFECT_WIDTH:Ljava/lang/String; = "CS_EFFECT_WIDTH"

.field public static final COLUMN_NAME_HEIGHT:Ljava/lang/String; = "CS_HEIGHT"

.field private static final COLUMN_NAME_KEYPATH:Ljava/lang/String; = "CS_KEYPATH"

.field private static final COLUMN_NAME_S3ENDPOINT:Ljava/lang/String; = "CS_S3ENDPOINT"

.field public static final COLUMN_NAME_WIDTH:Ljava/lang/String; = "CS_WIDTH"

.field public static final TABLE_NAME:Ljava/lang/String; = "CUSTOM_STICKER"

.field private static final _ID:Ljava/lang/String; = "CS_ID"

.field private static final logger:Lcom/liquable/nemo/util/Logger;


# instance fields
.field private final sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    const-class v0, Lcom/liquable/nemo/db/CustomStickerDao;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/db/CustomStickerDao;->logger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "sqLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/liquable/nemo/db/CustomStickerDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 126
    return-void
.end method

.method private static createContentValues(Lcom/liquable/nemo/sticker/custom/model/CustomSticker;)Landroid/content/ContentValues;
    .locals 3
    .param p0, "customSticker"    # Lcom/liquable/nemo/sticker/custom/model/CustomSticker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 20
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "CS_ID"

    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 21
    const-string/jumbo v1, "CS_CUSTOM_STICKER_CODE"

    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->getCustomStickerCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const-string/jumbo v1, "CS_KEYPATH"

    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->getKeyPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string/jumbo v1, "CS_S3ENDPOINT"

    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->getS3endpoint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string/jumbo v1, "CS_WIDTH"

    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 25
    const-string/jumbo v1, "CS_HEIGHT"

    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 26
    const-string/jumbo v1, "CS_EFFECT_KEYPATH_1"

    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->getEffectKeyPath1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string/jumbo v1, "CS_EFFECT_KEYPATH_2"

    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->getEffectKeyPath2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string/jumbo v1, "CS_EFFECT_OFFSET_X"

    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->getEffectOffsetX()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 29
    const-string/jumbo v1, "CS_EFFECT_OFFSET_Y"

    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->getEffectOffsetY()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 30
    const-string/jumbo v1, "CS_EFFECT_WIDTH"

    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->getEffectWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 31
    const-string/jumbo v1, "CS_EFFECT_HEIGHT"

    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->getEffectHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 32
    return-object v0
.end method

.method private static fromCursor(Landroid/database/Cursor;)Lcom/liquable/nemo/sticker/custom/model/CustomSticker;
    .locals 15
    .param p0, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    const-string/jumbo v0, "CS_ID"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 37
    .local v13, "id":J
    const-string/jumbo v0, "CS_CUSTOM_STICKER_CODE"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, "customCode":Ljava/lang/String;
    const-string/jumbo v0, "CS_KEYPATH"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, "keyPath":Ljava/lang/String;
    const-string/jumbo v0, "CS_S3ENDPOINT"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 40
    .local v4, "s3endpoint":Ljava/lang/String;
    const-string/jumbo v0, "CS_WIDTH"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 41
    .local v5, "width":I
    const-string/jumbo v0, "CS_HEIGHT"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 43
    .local v6, "height":I
    const-string/jumbo v0, "CS_EFFECT_KEYPATH_1"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 44
    .local v7, "effectKeyPath1":Ljava/lang/String;
    const-string/jumbo v0, "CS_EFFECT_KEYPATH_2"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 45
    .local v8, "effectKeyPath2":Ljava/lang/String;
    const-string/jumbo v0, "CS_EFFECT_OFFSET_X"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 46
    .local v9, "effectOffsetX":I
    const-string/jumbo v0, "CS_EFFECT_OFFSET_Y"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 47
    .local v10, "effectOffsetY":I
    const-string/jumbo v0, "CS_EFFECT_WIDTH"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 48
    .local v11, "effectWidth":I
    const-string/jumbo v0, "CS_EFFECT_HEIGHT"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 50
    .local v12, "effectHeight":I
    new-instance v0, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct/range {v0 .. v12}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIII)V

    return-object v0
.end method

.method public static getCreateTableSql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string/jumbo v0, " CREATE TABLE IF NOT EXISTS CUSTOM_STICKER ( CS_ID INTEGER PRIMARY KEY, CS_CUSTOM_STICKER_CODE TEXT, CS_KEYPATH TEXT, CS_S3ENDPOINT TEXT, CS_WIDTH INTEGER, CS_HEIGHT INTEGER, CS_EFFECT_KEYPATH_1 TEXT, CS_EFFECT_KEYPATH_2 TEXT, CS_EFFECT_OFFSET_X INTEGER, CS_EFFECT_OFFSET_Y INTEGER, CS_EFFECT_WIDTH INTEGER, CS_EFFECT_HEIGHT INTEGER ); "

    return-object v0
.end method

.method private rowMapping(Landroid/database/Cursor;)Ljava/util/List;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/sticker/custom/model/CustomSticker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 181
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 192
    :cond_0
    return-object v1

    .line 184
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/sticker/custom/model/CustomSticker;>;"
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    :try_start_0
    invoke-static {p1}, Lcom/liquable/nemo/db/CustomStickerDao;->fromCursor(Landroid/database/Cursor;)Lcom/liquable/nemo/sticker/custom/model/CustomSticker;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/liquable/nemo/db/CustomStickerDao;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v3, "could not load custom sticker, skip"

    invoke-virtual {v2, v3, v0}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public create(Lcom/liquable/nemo/sticker/custom/model/CustomSticker;)Lcom/liquable/nemo/sticker/custom/model/CustomSticker;
    .locals 8
    .param p1, "customSticker"    # Lcom/liquable/nemo/sticker/custom/model/CustomSticker;

    .prologue
    const/4 v3, 0x0

    .line 130
    :try_start_0
    iget-object v4, p0, Lcom/liquable/nemo/db/CustomStickerDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v5, "CUSTOM_STICKER"

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/liquable/nemo/db/CustomStickerDao;->createContentValues(Lcom/liquable/nemo/sticker/custom/model/CustomSticker;)Landroid/content/ContentValues;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 131
    .local v1, "id":J
    const-wide/16 v4, -0x1

    cmp-long v4, v1, v4

    if-nez v4, :cond_0

    .line 139
    .end local v1    # "id":J
    :goto_0
    return-object v3

    .line 135
    .restart local v1    # "id":J
    :cond_0
    invoke-virtual {p0, v1, v2}, Lcom/liquable/nemo/db/CustomStickerDao;->findById(J)Lcom/liquable/nemo/sticker/custom/model/CustomSticker;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 136
    .end local v1    # "id":J
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Lcom/liquable/nemo/db/CustomStickerDao;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "could not save custom sticker: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->getCustomStickerCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", skip"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public delete(Lcom/liquable/nemo/sticker/custom/model/CustomSticker;)V
    .locals 6
    .param p1, "customSticker"    # Lcom/liquable/nemo/sticker/custom/model/CustomSticker;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/liquable/nemo/db/CustomStickerDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "CUSTOM_STICKER"

    const-string/jumbo v2, "CS_ID = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 147
    invoke-virtual {p1}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->getId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 145
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 148
    return-void
.end method

.method public findById(J)Lcom/liquable/nemo/sticker/custom/model/CustomSticker;
    .locals 11
    .param p1, "id"    # J

    .prologue
    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 151
    iget-object v0, p0, Lcom/liquable/nemo/db/CustomStickerDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "CUSTOM_STICKER"

    const-string/jumbo v3, "CS_ID = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 154
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    .line 151
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 159
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v8}, Lcom/liquable/nemo/db/CustomStickerDao;->rowMapping(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v9

    .line 160
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/sticker/custom/model/CustomSticker;>;"
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    :goto_0
    return-object v2

    :cond_0
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;

    move-object v2, v0

    goto :goto_0
.end method

.method public listAll()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/sticker/custom/model/CustomSticker;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 168
    iget-object v0, p0, Lcom/liquable/nemo/db/CustomStickerDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "CUSTOM_STICKER"

    const-string/jumbo v7, "CS_ID desc "

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 176
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v8}, Lcom/liquable/nemo/db/CustomStickerDao;->rowMapping(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
