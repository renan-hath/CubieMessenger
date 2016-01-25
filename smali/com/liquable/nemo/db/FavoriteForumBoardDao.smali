.class public Lcom/liquable/nemo/db/FavoriteForumBoardDao;
.super Ljava/lang/Object;
.source "FavoriteForumBoardDao.java"


# static fields
.field public static final COLUMN_NAME_ANDROID_PACKAGE_NAME:Ljava/lang/String; = "FFB_ANDROID_PACKAGE_NAME"

.field public static final COLUMN_NAME_APP_ID:Ljava/lang/String; = "FFB_APP_ID"

.field public static final COLUMN_NAME_CATEGORY:Ljava/lang/String; = "FFB_CATEGORY"

.field public static final COLUMN_NAME_CERTIFIED:Ljava/lang/String; = "FFB_CERTIFIED"

.field public static final COLUMN_NAME_COUNTRY:Ljava/lang/String; = "FFB_COUNTRY"

.field public static final COLUMN_NAME_CREATE_TIME:Ljava/lang/String; = "FFB_CREATE_TIME"

.field public static final COLUMN_NAME_CREATOR_NICKNAME:Ljava/lang/String; = "FFB_CREATOR_NICKNAME"

.field public static final COLUMN_NAME_CREATOR_UID:Ljava/lang/String; = "FFB_CREATOR_UID"

.field public static final COLUMN_NAME_DELETED:Ljava/lang/String; = "FFB_DELETED"

.field public static final COLUMN_NAME_DESCRIPTION:Ljava/lang/String; = "FFB_DESCRIPTION"

.field public static final COLUMN_NAME_FAVORITE_COUNT:Ljava/lang/String; = "FFB_FAVORITE_COUNT"

.field public static final COLUMN_NAME_ICON:Ljava/lang/String; = "FFB_ICON"

.field public static final COLUMN_NAME_IOS_APPLE_ID:Ljava/lang/String; = "FFB_IOS_APPLE_ID"

.field public static final COLUMN_NAME_LAST_ARTICLE:Ljava/lang/String; = "FFB_LAST_ARTICLE"

.field public static final COLUMN_NAME_LAST_UPDATE_TIME:Ljava/lang/String; = "FFB_LAST_UPDATE_TIME"

.field public static final COLUMN_NAME_LOCAL_FAVORITE_TIME:Ljava/lang/String; = "FFB_LOCAL_FAVORITE_TIME"

.field public static final COLUMN_NAME_LOCAL_LAST_UPDATE_TIME:Ljava/lang/String; = "FFB_LOCAL_LAST_UPDATE_TIME"

.field public static final COLUMN_NAME_TITLE:Ljava/lang/String; = "FFB_TITLE"

.field public static final COLUMN_NAME_WALLPAPER:Ljava/lang/String; = "FFB_WALLPAPER"

.field private static PROJECTION:[Ljava/lang/String; = null

.field public static final TABLE_NAME:Ljava/lang/String; = "FAVORITE_FORUM_BOARD"

.field public static final _ID:Ljava/lang/String; = "ID"


# instance fields
.field private final debugLogger:Lcom/liquable/nemo/util/Logger;

.field private final sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "FFB_APP_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "FFB_TITLE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "FFB_DESCRIPTION"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "FFB_CATEGORY"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "FFB_ICON"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "FFB_WALLPAPER"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "FFB_ANDROID_PACKAGE_NAME"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "FFB_IOS_APPLE_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "FFB_COUNTRY"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "FFB_LAST_ARTICLE"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "FFB_CREATE_TIME"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "FFB_LAST_UPDATE_TIME"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "FFB_FAVORITE_COUNT"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "FFB_CREATOR_UID"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "FFB_CREATOR_NICKNAME"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "FFB_CERTIFIED"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "FFB_LOCAL_LAST_UPDATE_TIME"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "FFB_LOCAL_FAVORITE_TIME"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "FFB_DELETED"

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/db/FavoriteForumBoardDao;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "sqLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const-class v0, Lcom/liquable/nemo/db/FavoriteForumBoardDao;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/db/FavoriteForumBoardDao;->debugLogger:Lcom/liquable/nemo/util/Logger;

    .line 83
    iput-object p1, p0, Lcom/liquable/nemo/db/FavoriteForumBoardDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 84
    return-void
.end method

.method public static getCreateTableSql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string/jumbo v0, " CREATE TABLE IF NOT EXISTS FAVORITE_FORUM_BOARD ( ID TEXT PRIMARY KEY, FFB_APP_ID TEXT, FFB_TITLE TEXT, FFB_DESCRIPTION TEXT, FFB_CATEGORY TEXT, FFB_ICON TEXT, FFB_WALLPAPER TEXT, FFB_ANDROID_PACKAGE_NAME TEXT, FFB_IOS_APPLE_ID TEXT, FFB_COUNTRY TEXT, FFB_LAST_ARTICLE TEXT, FFB_CREATE_TIME INTEGER, FFB_LAST_UPDATE_TIME INTEGER, FFB_FAVORITE_COUNT INTEGER, FFB_CREATOR_UID TEXT, FFB_CREATOR_NICKNAME TEXT, FFB_CERTIFIED INTEGER, FFB_LOCAL_LAST_UPDATE_TIME INTEGER, FFB_LOCAL_FAVORITE_TIME INTEGER, FFB_DELETED INTEGER ); "

    return-object v0
.end method

.method private map(Landroid/database/Cursor;)Lcom/liquable/nemo/forum/model/board/ForumBoard;
    .locals 27
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    const-string/jumbo v3, "FFB_LAST_ARTICLE"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 221
    .local v24, "articleJson":Ljava/lang/String;
    const/4 v13, 0x0

    .line 222
    .local v13, "lastArticle":Lcom/liquable/nemo/model/forum/ForumArticleDto;
    invoke-static/range {v24 .. v24}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 223
    invoke-static {}, Lcom/liquable/nemo/json/SimpleJsonMapper;->getInstance()Lcom/liquable/nemo/json/SimpleJsonMapper;

    move-result-object v3

    const-class v4, Lcom/liquable/nemo/model/forum/ForumArticleDto;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0, v4}, Lcom/liquable/nemo/json/SimpleJsonMapper;->decode(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "lastArticle":Lcom/liquable/nemo/model/forum/ForumArticleDto;
    check-cast v13, Lcom/liquable/nemo/model/forum/ForumArticleDto;

    .line 226
    .restart local v13    # "lastArticle":Lcom/liquable/nemo/model/forum/ForumArticleDto;
    :cond_0
    new-instance v2, Lcom/liquable/nemo/model/forum/ForumBoardDto;

    const-string/jumbo v3, "ID"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "FFB_APP_ID"

    .line 228
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "FFB_TITLE"

    .line 229
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "FFB_DESCRIPTION"

    .line 230
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "FFB_CATEGORY"

    .line 231
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "FFB_ICON"

    .line 232
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "FFB_WALLPAPER"

    .line 233
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "FFB_ANDROID_PACKAGE_NAME"

    .line 234
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "FFB_IOS_APPLE_ID"

    .line 235
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "FFB_COUNTRY"

    .line 236
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v14, "FFB_CREATE_TIME"

    .line 238
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const-string/jumbo v16, "FFB_LAST_UPDATE_TIME"

    .line 239
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    const-string/jumbo v18, "FFB_FAVORITE_COUNT"

    .line 240
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    const-string/jumbo v20, "FFB_CREATOR_UID"

    .line 241
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "FFB_CREATOR_NICKNAME"

    .line 242
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "FFB_CERTIFIED"

    .line 243
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    if-lez v22, :cond_1

    const/16 v22, 0x1

    :goto_0
    const-string/jumbo v23, "FFB_DELETED"

    .line 244
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    if-lez v23, :cond_2

    const/16 v23, 0x1

    :goto_1
    invoke-direct/range {v2 .. v23}, Lcom/liquable/nemo/model/forum/ForumBoardDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/model/forum/ForumArticleDto;JJJLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 246
    .local v2, "forumBoardDto":Lcom/liquable/nemo/model/forum/ForumBoardDto;
    const-string/jumbo v3, "FFB_LOCAL_LAST_UPDATE_TIME"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 248
    .local v25, "localLastUpdateTime":J
    move-wide/from16 v0, v25

    invoke-static {v2, v0, v1}, Lcom/liquable/nemo/forum/model/board/ForumBoard;->createFavoriteBoard(Lcom/liquable/nemo/model/forum/ForumBoardDto;J)Lcom/liquable/nemo/forum/model/board/ForumBoard;

    move-result-object v3

    return-object v3

    .line 243
    .end local v2    # "forumBoardDto":Lcom/liquable/nemo/model/forum/ForumBoardDto;
    .end local v25    # "localLastUpdateTime":J
    :cond_1
    const/16 v22, 0x0

    goto :goto_0

    .line 244
    :cond_2
    const/16 v23, 0x0

    goto :goto_1
.end method

.method private query(Landroid/database/Cursor;)Ljava/util/List;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/forum/model/board/ForumBoard;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/forum/model/board/ForumBoard;>;"
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    :try_start_1
    invoke-direct {p0, p1}, Lcom/liquable/nemo/db/FavoriteForumBoardDao;->map(Landroid/database/Cursor;)Lcom/liquable/nemo/forum/model/board/ForumBoard;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    iget-object v2, p0, Lcom/liquable/nemo/db/FavoriteForumBoardDao;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v3, "parse json content error"

    invoke-virtual {v2, v3, v0}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 262
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 264
    return-object v1
.end method


# virtual methods
.method public create(Lcom/liquable/nemo/model/forum/ForumBoardDto;)V
    .locals 5
    .param p1, "boardDto"    # Lcom/liquable/nemo/model/forum/ForumBoardDto;

    .prologue
    const/4 v2, 0x0

    .line 87
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 88
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "ID"

    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string/jumbo v1, "FFB_APP_ID"

    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string/jumbo v1, "FFB_TITLE"

    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string/jumbo v1, "FFB_DESCRIPTION"

    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string/jumbo v1, "FFB_CATEGORY"

    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string/jumbo v1, "FFB_ICON"

    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getIcon()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string/jumbo v1, "FFB_WALLPAPER"

    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getWallpaper()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string/jumbo v1, "FFB_ANDROID_PACKAGE_NAME"

    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getAndroidPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string/jumbo v1, "FFB_IOS_APPLE_ID"

    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getIosAppleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string/jumbo v1, "FFB_COUNTRY"

    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string/jumbo v3, "FFB_LAST_ARTICLE"

    .line 99
    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getLastArticle()Lcom/liquable/nemo/model/forum/ForumArticleDto;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, v2

    .line 98
    :goto_0
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string/jumbo v1, "FFB_CREATE_TIME"

    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getCreateTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 103
    const-string/jumbo v1, "FFB_LAST_UPDATE_TIME"

    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getLastUpdateTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 104
    const-string/jumbo v1, "FFB_FAVORITE_COUNT"

    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getFavoriteCount()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 105
    const-string/jumbo v1, "FFB_CREATOR_UID"

    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getCreatorUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string/jumbo v1, "FFB_CREATOR_NICKNAME"

    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getCreatorNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string/jumbo v1, "FFB_CERTIFIED"

    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->isCertified()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 108
    const-string/jumbo v1, "FFB_LOCAL_LAST_UPDATE_TIME"

    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getLastUpdateTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 109
    const-string/jumbo v1, "FFB_LOCAL_FAVORITE_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 110
    const-string/jumbo v1, "FFB_DELETED"

    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->isDeleted()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 112
    iget-object v1, p0, Lcom/liquable/nemo/db/FavoriteForumBoardDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "FAVORITE_FORUM_BOARD"

    const/4 v4, 0x5

    invoke-virtual {v1, v3, v2, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 116
    return-void

    .line 101
    :cond_0
    invoke-static {}, Lcom/liquable/nemo/json/SimpleJsonMapper;->getInstance()Lcom/liquable/nemo/json/SimpleJsonMapper;

    move-result-object v1

    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getLastArticle()Lcom/liquable/nemo/model/forum/ForumArticleDto;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/liquable/nemo/json/SimpleJsonMapper;->encode(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public delete(Lcom/liquable/nemo/model/forum/ForumBoardDto;)V
    .locals 6
    .param p1, "boardDto"    # Lcom/liquable/nemo/model/forum/ForumBoardDto;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/liquable/nemo/db/FavoriteForumBoardDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "FAVORITE_FORUM_BOARD"

    const-string/jumbo v2, "ID = ? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 120
    return-void
.end method

.method public deleteAll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 123
    iget-object v0, p0, Lcom/liquable/nemo/db/FavoriteForumBoardDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "FAVORITE_FORUM_BOARD"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 124
    return-void
.end method

.method public favoriteBoardCount()J
    .locals 3

    .prologue
    .line 127
    iget-object v1, p0, Lcom/liquable/nemo/db/FavoriteForumBoardDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "select count(*) from FAVORITE_FORUM_BOARD"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 130
    .local v0, "statement":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 132
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    return-wide v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v1
.end method

.method public findById(Ljava/lang/String;)Lcom/liquable/nemo/forum/model/board/ForumBoard;
    .locals 10
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 138
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 139
    .local v0, "sqBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v1, "FAVORITE_FORUM_BOARD"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/liquable/nemo/db/FavoriteForumBoardDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/liquable/nemo/db/FavoriteForumBoardDao;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "ID = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 144
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 152
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 154
    :goto_0
    return-object v5

    .line 148
    :cond_0
    :try_start_1
    invoke-direct {p0, v8}, Lcom/liquable/nemo/db/FavoriteForumBoardDao;->map(Landroid/database/Cursor;)Lcom/liquable/nemo/forum/model/board/ForumBoard;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 152
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 149
    :catch_0
    move-exception v9

    .line 150
    .local v9, "e":Ljava/io/IOException;
    :try_start_2
    iget-object v1, p0, Lcom/liquable/nemo/db/FavoriteForumBoardDao;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v2, "findById parse json content error"

    invoke-virtual {v1, v2, v9}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v9    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public list(II)Ljava/util/List;
    .locals 10
    .param p1, "offset"    # I
    .param p2, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/forum/model/board/ForumBoard;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 158
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 159
    .local v0, "sqBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v1, "FAVORITE_FORUM_BOARD"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/liquable/nemo/db/FavoriteForumBoardDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/liquable/nemo/db/FavoriteForumBoardDao;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v7, "FFB_LOCAL_FAVORITE_TIME DESC "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 170
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v9}, Lcom/liquable/nemo/db/FavoriteForumBoardDao;->query(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public list(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/forum/model/board/ForumBoard;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "bids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 174
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 190
    :goto_0
    return-object v1

    .line 178
    :cond_0
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 179
    .local v0, "sqBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v1, "FAVORITE_FORUM_BOARD"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/liquable/nemo/db/FavoriteForumBoardDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/liquable/nemo/db/FavoriteForumBoardDao;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ID in ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 184
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Lcom/liquable/nemo/util/SqlInClause;->makePlaceholders(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    .line 185
    invoke-interface {p1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const-string/jumbo v7, "FFB_LOCAL_FAVORITE_TIME DESC "

    move-object v6, v5

    .line 181
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 190
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v8}, Lcom/liquable/nemo/db/FavoriteForumBoardDao;->query(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public listIds()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 195
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 196
    .local v0, "sqBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v1, "FAVORITE_FORUM_BOARD"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/liquable/nemo/db/FavoriteForumBoardDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "ID"

    aput-object v5, v2, v4

    const-string/jumbo v7, "FFB_LOCAL_FAVORITE_TIME DESC "

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 207
    .local v8, "cursor":Landroid/database/Cursor;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v9, "favorites":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    const-string/jumbo v1, "ID"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 213
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 215
    return-object v9
.end method

.method public updateAll(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/forum/ForumBoardDto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 268
    .local p1, "boardDtos":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/forum/ForumBoardDto;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/forum/ForumBoardDto;

    .line 269
    .local v0, "boardDto":Lcom/liquable/nemo/model/forum/ForumBoardDto;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 270
    .local v1, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "FFB_APP_ID"

    invoke-virtual {v0}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string/jumbo v2, "FFB_TITLE"

    invoke-virtual {v0}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string/jumbo v2, "FFB_DESCRIPTION"

    invoke-virtual {v0}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string/jumbo v2, "FFB_CATEGORY"

    invoke-virtual {v0}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getCategory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string/jumbo v2, "FFB_ICON"

    invoke-virtual {v0}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getIcon()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string/jumbo v2, "FFB_WALLPAPER"

    invoke-virtual {v0}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getWallpaper()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string/jumbo v2, "FFB_ANDROID_PACKAGE_NAME"

    invoke-virtual {v0}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getAndroidPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string/jumbo v2, "FFB_IOS_APPLE_ID"

    invoke-virtual {v0}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getIosAppleId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string/jumbo v2, "FFB_COUNTRY"

    invoke-virtual {v0}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string/jumbo v4, "FFB_LAST_ARTICLE"

    .line 280
    invoke-virtual {v0}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getLastArticle()Lcom/liquable/nemo/model/forum/ForumArticleDto;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 279
    :goto_1
    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string/jumbo v2, "FFB_CREATE_TIME"

    invoke-virtual {v0}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getCreateTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 284
    const-string/jumbo v2, "FFB_LAST_UPDATE_TIME"

    invoke-virtual {v0}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getLastUpdateTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 285
    const-string/jumbo v2, "FFB_FAVORITE_COUNT"

    invoke-virtual {v0}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getFavoriteCount()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 286
    const-string/jumbo v2, "FFB_CREATOR_UID"

    invoke-virtual {v0}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getCreatorUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string/jumbo v2, "FFB_CREATOR_NICKNAME"

    invoke-virtual {v0}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getCreatorNickname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string/jumbo v2, "FFB_CERTIFIED"

    invoke-virtual {v0}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->isCertified()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 289
    const-string/jumbo v2, "FFB_DELETED"

    invoke-virtual {v0}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->isDeleted()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 290
    iget-object v2, p0, Lcom/liquable/nemo/db/FavoriteForumBoardDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v4, "FAVORITE_FORUM_BOARD"

    const-string/jumbo v5, "ID = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 293
    invoke-virtual {v0}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 290
    invoke-virtual {v2, v4, v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 282
    :cond_0
    invoke-static {}, Lcom/liquable/nemo/json/SimpleJsonMapper;->getInstance()Lcom/liquable/nemo/json/SimpleJsonMapper;

    move-result-object v2

    invoke-virtual {v0}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getLastArticle()Lcom/liquable/nemo/model/forum/ForumArticleDto;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/liquable/nemo/json/SimpleJsonMapper;->encode(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 296
    .end local v0    # "boardDto":Lcom/liquable/nemo/model/forum/ForumBoardDto;
    .end local v1    # "contentValues":Landroid/content/ContentValues;
    :cond_1
    return-void
.end method

.method public updateLastArticle(Ljava/lang/String;Lcom/liquable/nemo/model/forum/ForumArticleDto;)V
    .locals 6
    .param p1, "boardId"    # Ljava/lang/String;
    .param p2, "articleDto"    # Lcom/liquable/nemo/model/forum/ForumArticleDto;

    .prologue
    .line 299
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 300
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "FFB_LAST_ARTICLE"

    invoke-static {}, Lcom/liquable/nemo/json/SimpleJsonMapper;->getInstance()Lcom/liquable/nemo/json/SimpleJsonMapper;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/liquable/nemo/json/SimpleJsonMapper;->encode(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string/jumbo v1, "FFB_LAST_UPDATE_TIME"

    invoke-virtual {p2}, Lcom/liquable/nemo/model/forum/ForumArticleDto;->getLastUpdateTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 303
    iget-object v1, p0, Lcom/liquable/nemo/db/FavoriteForumBoardDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "FAVORITE_FORUM_BOARD"

    const-string/jumbo v3, "ID = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 304
    return-void
.end method

.method public updateLastUpdateTime(Ljava/lang/String;J)V
    .locals 6
    .param p1, "boardId"    # Ljava/lang/String;
    .param p2, "lastUpdateTime"    # J

    .prologue
    .line 307
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 308
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "FFB_LAST_UPDATE_TIME"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 309
    iget-object v1, p0, Lcom/liquable/nemo/db/FavoriteForumBoardDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "FAVORITE_FORUM_BOARD"

    const-string/jumbo v3, "ID = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 310
    return-void
.end method

.method public updateLocalLastUpdateTime(Ljava/lang/String;J)V
    .locals 6
    .param p1, "boardId"    # Ljava/lang/String;
    .param p2, "localLastUpdateTime"    # J

    .prologue
    .line 313
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 314
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "FFB_LOCAL_LAST_UPDATE_TIME"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 315
    iget-object v1, p0, Lcom/liquable/nemo/db/FavoriteForumBoardDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "FAVORITE_FORUM_BOARD"

    const-string/jumbo v3, "ID = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 316
    return-void
.end method
