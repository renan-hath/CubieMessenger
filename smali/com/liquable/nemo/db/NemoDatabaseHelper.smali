.class public Lcom/liquable/nemo/db/NemoDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "NemoDatabaseHelper.java"


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "nemo"

.field public static final DATABASE_VERSION:I = 0x2d


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 931
    const-string/jumbo v0, "nemo"

    const/4 v1, 0x0

    const/16 v2, 0x2d

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 932
    return-void
.end method

.method public static getColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v0, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 45
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "select * from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " limit 1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_0
    if-eqz v1, :cond_1

    .line 53
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 56
    :cond_1
    :goto_0
    return-object v0

    .line 49
    :catch_0
    move-exception v2

    .line 50
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    if-eqz v1, :cond_1

    .line 53
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 52
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_2

    .line 53
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v3
.end method

.method private static updateTo10(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 60
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 62
    :try_start_0
    const-string/jumbo v0, " alter table CHAT_GROUPS add COLUMN CG_CHAT_GROUP_BACKGROUND TEXT ;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 71
    return-void

    .line 69
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private static updateTo11(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 74
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 76
    :try_start_0
    const-string/jumbo v0, " CREATE TABLE IF NOT EXISTS NOTICE ( NTC_ID INTEGER PRIMARY KEY, NTC_CONTENT TEXT, NTC_READ NUMERIC, NTC_TYPE TEXT  );"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 84
    const-string/jumbo v0, " CREATE TABLE IF NOT EXISTS EXISTING_SYSTEM_NOTICE ( ESN_SYSTEM_ID TEXT PRIMARY KEY  );"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 92
    return-void

    .line 90
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private static updateTo12(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 95
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 97
    :try_start_0
    const-string/jumbo v0, " alter table CHAT_GROUPS add COLUMN CG_CHAT_GROUP_MUTE NUMERIC ;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 103
    const-string/jumbo v0, " update  CHAT_GROUPS set CG_CHAT_GROUP_MUTE = 0 "

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 113
    return-void

    .line 111
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private static updateTo13(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 116
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 118
    :try_start_0
    const-string/jumbo v0, " CREATE TABLE IF NOT EXISTS LIKED_ARTWORK ( AR_UID INTEGER PRIMARY KEY, AR_ARTWORK_ID TEXT  );"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 127
    return-void

    .line 125
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private static updateTo14(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 130
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 132
    :try_start_0
    const-string/jumbo v0, " alter table LIKED_ARTWORK add COLUMN AR_LIKE_COUNT NUMERIC ;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 138
    const-string/jumbo v0, " alter table LIKED_ARTWORK add COLUMN AR_LIKED_TIME NUMERIC ;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 144
    const-string/jumbo v0, " update LIKED_ARTWORK set AR_LIKE_COUNT = 1,  AR_LIKED_TIME = 0 "

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 156
    return-void

    .line 154
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private static updateTo15(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 159
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 161
    :try_start_0
    const-string/jumbo v0, " CREATE TABLE IF NOT EXISTS ARTWORK_REPLY_RECORD ( ARR_UID INTEGER PRIMARY KEY, ARR_ARTWORK_ID TEXT, ARR_REPLY_ID TEXT, ARR_REPLY_CONTENT TEXT, ARR_REPLY_TIME NUMERIC, ARR_EDIT_TIME NUMERIC, ARR_DELETED NUMERIC  );"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 175
    return-void

    .line 173
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private static updateTo16(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 178
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 180
    :try_start_0
    const-string/jumbo v0, " DROP TABLE IF EXISTS LIKED_ARTWORK"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 182
    const-string/jumbo v0, " CREATE TABLE IF NOT EXISTS ARTWORK_RECORD ( AR_UID INTEGER PRIMARY KEY, AR_ARTWORK_ID TEXT, AR_LIKE_COUNT NUMERIC, AR_LIKED_TIME NUMERIC, AR_REPLY_COUNT NUMERIC, AR_REPLY_TIME NUMERIC  );"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 195
    return-void

    .line 193
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private static updateTo17(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 198
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 200
    :try_start_0
    const-string/jumbo v0, " CREATE TABLE IF NOT EXISTS ARTWORK_REPORT ( ARP_ARTWORK_ID TEXT PRIMARY KEY, ARP_REPORT_TIME NUMERIC  );"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 209
    return-void

    .line 207
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private static updateTo18(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 212
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 214
    :try_start_0
    const-string/jumbo v1, "ACCOUNTS"

    invoke-static {p0, v1}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->getColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 215
    .local v0, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "AC_BECOME_FRIEND_TIME"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    const-string/jumbo v1, " alter table ACCOUNTS add COLUMN AC_BECOME_FRIEND_TIME NUMERIC ;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 223
    :cond_0
    const-string/jumbo v1, " update ACCOUNTS set AC_BECOME_FRIEND_TIME = 0 "

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 233
    return-void

    .line 231
    .end local v0    # "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private static updateTo19(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 236
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 238
    :try_start_0
    const-string/jumbo v0, " CREATE TABLE IF NOT EXISTS STICKER_PACKAGES ( SP_CODE TEXT PRIMARY KEY, SP_CONTENT TEXT  );"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 243
    const-string/jumbo v0, " CREATE TABLE IF NOT EXISTS STICKER_ROOT ( SR_CONTENT TEXT, SR_LAST_UPDATE NUMERIC  );"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 252
    return-void

    .line 250
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private static updateTo2(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 255
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 257
    :try_start_0
    const-string/jumbo v1, "ACCOUNTS"

    invoke-static {p0, v1}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->getColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 258
    .local v0, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "AC_NICKNAME_FROM_CONTACT"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 259
    const-string/jumbo v1, " alter table ACCOUNTS add COLUMN AC_NICKNAME_FROM_CONTACT TEXT ;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 266
    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 270
    return-void

    .line 268
    .end local v0    # "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private static updateTo20(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 273
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 275
    :try_start_0
    const-string/jumbo v0, " CREATE TABLE IF NOT EXISTS PURCHASE_STATE ( PS_ID NUMERIC PRIMARY KEY, PS_PRODUCT_ID TEXT, PS_PRODUCT_TO TEXT, PS_STATE NUMERIC, PS_SIGNEDDATA TEXT, PS_SIGNATURE TEXT, PS_NOTIFYID TEXT, PS_TIMESTAMP NUMERIC  );"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 290
    return-void

    .line 288
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private static updateTo21(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 293
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 295
    :try_start_0
    invoke-static {}, Lcom/liquable/nemo/db/PreferenceDao;->getCreateTableSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 300
    return-void

    .line 298
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private static updateTo22(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 303
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 305
    :try_start_0
    invoke-static {}, Lcom/liquable/nemo/ads/model/AdsDao;->getCreateTableSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 310
    return-void

    .line 308
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private static updateTo23(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 313
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 315
    :try_start_0
    const-string/jumbo v0, " CREATE TABLE IF NOT EXISTS ARCHIVED_MESSAGES ( MSG_ID TEXT PRIMARY KEY, MSG_CHAT_GROUP_TOPIC TEXT, MSG_CONTENT TEXT, MSG_CREATE_TIME TEXT, MSG_RECEIVE_TIME TEXT, MSG_TYPE TEXT, MSG_SENDER_UID TEXT, MSG_READ_COUNT NUMERIC, MSG_SEND_STATE NUMERIC, MSG_READED_MARK NUMERIC  );"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 328
    const-string/jumbo v0, " CREATE INDEX IF NOT EXISTS  INDEX_ARCHIVED_MESSAGE_CHATGROUP_TOPIC  ON ARCHIVED_MESSAGES( MSG_CHAT_GROUP_TOPIC desc );"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 339
    return-void

    .line 337
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private static updateTo25(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 342
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 344
    :try_start_0
    const-string/jumbo v1, "ACCOUNTS"

    invoke-static {p0, v1}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->getColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 345
    .local v0, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "AC_CONTACT_LOOKUP_KEY"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 346
    const-string/jumbo v1, " alter table ACCOUNTS add COLUMN AC_CONTACT_LOOKUP_KEY TEXT ;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 353
    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 357
    return-void

    .line 355
    .end local v0    # "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private static updateTo26(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 362
    return-void
.end method

.method private static updateTo27(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 365
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 367
    :try_start_0
    const-string/jumbo v1, "CHAT_GROUPS"

    invoke-static {p0, v1}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->getColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 368
    .local v0, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "CG_UNFINISHED_MESSAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 369
    const-string/jumbo v1, " alter table CHAT_GROUPS add COLUMN CG_UNFINISHED_MESSAGE TEXT ;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 375
    :cond_0
    const-string/jumbo v1, "CG_LAST_ACTION"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 376
    const-string/jumbo v1, " alter table CHAT_GROUPS add COLUMN CG_LAST_ACTION TEXT ;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 382
    :cond_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 386
    return-void

    .line 384
    .end local v0    # "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private static updateTo28(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 389
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 391
    :try_start_0
    invoke-static {}, Lcom/liquable/nemo/db/DeletedMessageIdDao;->getCreateTableSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 396
    return-void

    .line 394
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private static updateTo29(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 399
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 401
    :try_start_0
    const-string/jumbo v1, "ACCOUNTS"

    invoke-static {p0, v1}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->getColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 402
    .local v0, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "AC_DISPLAY_NAME"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 403
    const-string/jumbo v1, " alter table ACCOUNTS add COLUMN AC_DISPLAY_NAME TEXT ;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 410
    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 414
    return-void

    .line 412
    .end local v0    # "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private static updateTo3(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 417
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 419
    :try_start_0
    const-string/jumbo v1, "ACCOUNTS"

    invoke-static {p0, v1}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->getColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 420
    .local v0, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "AC_BEFORE_BLOCK_FRIEND_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 421
    const-string/jumbo v1, " alter table ACCOUNTS add COLUMN AC_BEFORE_BLOCK_FRIEND_STATE TEXT ;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 427
    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 431
    return-void

    .line 429
    .end local v0    # "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private static updateTo30(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 434
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 436
    :try_start_0
    const-string/jumbo v1, "CHAT_GROUPS"

    invoke-static {p0, v1}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->getColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 438
    .local v0, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "CG_HAS_RECENT_PICTURE"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 439
    const-string/jumbo v1, " alter table CHAT_GROUPS add COLUMN CG_HAS_RECENT_PICTURE NUMERIC ;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 445
    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 449
    return-void

    .line 447
    .end local v0    # "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private static updateTo31(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 452
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 454
    :try_start_0
    const-string/jumbo v1, "CHAT_GROUPS"

    invoke-static {p0, v1}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->getColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 455
    .local v0, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "CG_OWNER"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 456
    const-string/jumbo v1, " alter table CHAT_GROUPS add COLUMN CG_OWNER TEXT ;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 463
    :cond_0
    const-string/jumbo v1, "CG_REMOVED_BY_OWNER"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 464
    const-string/jumbo v1, " alter table CHAT_GROUPS add COLUMN CG_REMOVED_BY_OWNER NUMERIC DEFAULT 0 ;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 471
    :cond_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 475
    return-void

    .line 473
    .end local v0    # "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private static updateTo32(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 479
    return-void
.end method

.method private static updateTo33(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 482
    return-void
.end method

.method private static updateTo34(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 485
    return-void
.end method

.method private static updateTo35(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " DELETE FROM MESSAGES WHERE MSG_TYPE = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/liquable/nemo/message/model/CustomStickerMessage;

    .line 493
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 488
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 496
    const-string/jumbo v0, " DROP TABLE if exists CUSTOM_STICKER"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 497
    invoke-static {}, Lcom/liquable/nemo/db/CustomStickerDao;->getCreateTableSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 498
    return-void
.end method

.method private static updateTo36(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 501
    return-void
.end method

.method private static updateTo37(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 504
    const-string/jumbo v1, "CUSTOM_STICKER"

    invoke-static {p0, v1}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->getColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 505
    .local v0, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "CS_EFFECT_KEYPATH_1"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 506
    const-string/jumbo v1, " alter table CUSTOM_STICKER add COLUMN CS_EFFECT_KEYPATH_1 TEXT;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 511
    const-string/jumbo v1, " alter table CUSTOM_STICKER add COLUMN CS_EFFECT_KEYPATH_2 TEXT;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 516
    const-string/jumbo v1, " alter table CUSTOM_STICKER add COLUMN CS_EFFECT_OFFSET_X INTEGER ;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 521
    const-string/jumbo v1, " alter table CUSTOM_STICKER add COLUMN CS_EFFECT_OFFSET_Y INTEGER ;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 526
    const-string/jumbo v1, " alter table CUSTOM_STICKER add COLUMN CS_EFFECT_WIDTH INTEGER ;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 531
    const-string/jumbo v1, " alter table CUSTOM_STICKER add COLUMN CS_EFFECT_HEIGHT INTEGER ;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 537
    :cond_0
    return-void
.end method

.method private static updateTo38(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 540
    const-string/jumbo v0, " DROP TABLE if exists FAVORITE_FORUM_BOARD"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 541
    invoke-static {}, Lcom/liquable/nemo/db/FavoriteForumBoardDao;->getCreateTableSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 543
    return-void
.end method

.method private static updateTo39(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 546
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 548
    :try_start_0
    const-string/jumbo v1, "FAVORITE_FORUM_BOARD"

    invoke-static {p0, v1}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->getColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 549
    .local v0, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "FFB_CERTIFIED"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 550
    const-string/jumbo v1, " alter table FAVORITE_FORUM_BOARD add COLUMN FFB_CERTIFIED INTEGER ;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 556
    :cond_0
    const-string/jumbo v1, " UPDATE FAVORITE_FORUM_BOARD SET FFB_CERTIFIED = 0 ;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 561
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 565
    return-void

    .line 563
    .end local v0    # "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private static updateTo40(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 568
    invoke-static {}, Lcom/liquable/nemo/db/ReportAbuseForumBoardDao;->getCreateTableSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 569
    invoke-static {}, Lcom/liquable/nemo/db/ReportAbuseForumArticleDao;->getCreateTableSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 570
    return-void
.end method

.method private static updateTo41(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 573
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 575
    :try_start_0
    const-string/jumbo v1, "FAVORITE_FORUM_BOARD"

    invoke-static {p0, v1}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->getColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 576
    .local v0, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "FFB_LOCAL_LAST_UPDATE_TIME"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 577
    const-string/jumbo v1, " alter table FAVORITE_FORUM_BOARD add COLUMN FFB_LOCAL_LAST_UPDATE_TIME INTEGER ;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 583
    :cond_0
    const-string/jumbo v1, " UPDATE FAVORITE_FORUM_BOARD SET FFB_LOCAL_LAST_UPDATE_TIME = 0 ;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 589
    const-string/jumbo v1, "FFB_LOCAL_FAVORITE_TIME"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 590
    const-string/jumbo v1, " alter table FAVORITE_FORUM_BOARD add COLUMN FFB_LOCAL_FAVORITE_TIME INTEGER ;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 596
    :cond_1
    const-string/jumbo v1, " UPDATE FAVORITE_FORUM_BOARD SET FFB_LOCAL_FAVORITE_TIME = 0 ;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 601
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 603
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 605
    return-void

    .line 603
    .end local v0    # "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private static updateTo42(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 608
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 610
    :try_start_0
    const-string/jumbo v1, "FAVORITE_FORUM_BOARD"

    invoke-static {p0, v1}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->getColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 611
    .local v0, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "FFB_DELETED"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 612
    const-string/jumbo v1, " alter table FAVORITE_FORUM_BOARD add COLUMN FFB_DELETED INTEGER ;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 618
    :cond_0
    const-string/jumbo v1, " UPDATE FAVORITE_FORUM_BOARD SET FFB_DELETED = 0 ;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 623
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 625
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 627
    return-void

    .line 625
    .end local v0    # "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private static updateTo43(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 630
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 632
    :try_start_0
    const-string/jumbo v1, "ACCOUNTS"

    invoke-static {p0, v1}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->getColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 633
    .local v0, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "AC_IS_BROADCASTER"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 634
    const-string/jumbo v1, " alter table ACCOUNTS add COLUMN AC_IS_BROADCASTER NUMERIC DEFAULT 0;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 641
    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 645
    return-void

    .line 643
    .end local v0    # "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private static updateTo44(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 649
    return-void
.end method

.method private static updateTo45(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 926
    const-string/jumbo v0, " DROP TABLE IF EXISTS LIKED_FORUM_ITEM; "

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 927
    invoke-static {}, Lcom/liquable/nemo/db/LikedForumItemDao;->getCreateTableSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 928
    return-void
.end method

.method private static updateTo5(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 652
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 654
    :try_start_0
    const-string/jumbo v1, "ACCOUNTS"

    invoke-static {p0, v1}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->getColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 655
    .local v0, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "AC_LAST_SYNC_TIME"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 656
    const-string/jumbo v1, " alter table ACCOUNTS add COLUMN AC_LAST_SYNC_TIME NUMERIC ;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 662
    :cond_0
    const-string/jumbo v1, " CREATE TABLE IF NOT EXISTS RECOMMEND_FRIEND ( RF_UID TEXT PRIMARY KEY, RF_NAME TEXT, RF_USER_NAME TEXT, RF_LAST_UPDATE_TIME NUMERIC, RF_EMAIL TEXT, RF_PHONE_NUMBER TEXT, RF_ICON_EXISTS NUMERIC  );"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 688
    const-string/jumbo v1, " CREATE TABLE IF NOT EXISTS MUTUAL_FRIEND_RELATIONSHIP ( MFR_RECOMMEND_FRIEND_ID TEXT, MFR_MUTUAL_FRIEND_ID TEXT,  PRIMARY KEY (MFR_RECOMMEND_FRIEND_ID, MFR_MUTUAL_FRIEND_ID)  );"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 707
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 709
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 711
    return-void

    .line 709
    .end local v0    # "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private static updateTo6(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 714
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 716
    :try_start_0
    const-string/jumbo v1, "ACCOUNTS"

    invoke-static {p0, v1}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->getColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 717
    .local v0, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "AC_FBUID"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 718
    const-string/jumbo v1, " alter table ACCOUNTS add COLUMN AC_FBUID TEXT ;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 724
    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 726
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 728
    return-void

    .line 726
    .end local v0    # "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private static updateTo8(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 731
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 733
    :try_start_0
    const-string/jumbo v0, " CREATE TABLE IF NOT EXISTS CONTACT_INFOS ( CI_NAME TEXT, CI_PHONE_NUMBER TEXT, CI_PHOTO_ID NUMERIC,  PRIMARY KEY (CI_PHONE_NUMBER)  );"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 740
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 742
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 744
    return-void

    .line 742
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private static updateTo9(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v8, -0x1

    .line 750
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 752
    :try_start_0
    sget-object v6, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v6}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v2

    .line 753
    .local v2, "myUid":Ljava/lang/String;
    invoke-static {v2}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 754
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 786
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 788
    :goto_0
    return-void

    .line 758
    :cond_0
    :try_start_1
    const-string/jumbo v3, "  SELECT *  from CHAT_GROUP_MEMBERS"

    .line 762
    .local v3, "sql":Ljava/lang/String;
    const-string/jumbo v6, "  SELECT *  from CHAT_GROUP_MEMBERS"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {p0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 764
    .local v1, "cursor":Landroid/database/Cursor;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 765
    .local v4, "toDelete":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroupMember;>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 766
    invoke-static {v1}, Lcom/liquable/nemo/group/model/ChatGroupMember;->fromCursor(Landroid/database/Cursor;)Lcom/liquable/nemo/group/model/ChatGroupMember;

    move-result-object v0

    .line 767
    .local v0, "chatGroupMember":Lcom/liquable/nemo/group/model/ChatGroupMember;
    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroupMember;->getTopic()Ljava/lang/String;

    move-result-object v5

    .line 768
    .local v5, "topic":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x49

    if-ne v6, v7, :cond_1

    .line 769
    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroupMember;->getAccountUid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v8, :cond_2

    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v8, :cond_1

    .line 770
    :cond_2
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 786
    .end local v0    # "chatGroupMember":Lcom/liquable/nemo/group/model/ChatGroupMember;
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v2    # "myUid":Ljava/lang/String;
    .end local v3    # "sql":Ljava/lang/String;
    .end local v4    # "toDelete":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroupMember;>;"
    .end local v5    # "topic":Ljava/lang/String;
    :catchall_0
    move-exception v6

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v6

    .line 775
    .restart local v1    # "cursor":Landroid/database/Cursor;
    .restart local v2    # "myUid":Ljava/lang/String;
    .restart local v3    # "sql":Ljava/lang/String;
    .restart local v4    # "toDelete":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroupMember;>;"
    :cond_3
    :try_start_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/group/model/ChatGroupMember;

    .line 776
    .restart local v0    # "chatGroupMember":Lcom/liquable/nemo/group/model/ChatGroupMember;
    const-string/jumbo v7, "CHAT_GROUP_MEMBERS"

    const-string/jumbo v8, "CGM_CHAT_GROUP_TOPIC = ? and CGM_FRIEND_ID = ? "

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    .line 781
    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroupMember;->getTopic()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroupMember;->getAccountUid()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 776
    invoke-virtual {p0, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    .line 784
    .end local v0    # "chatGroupMember":Lcom/liquable/nemo/group/model/ChatGroupMember;
    :cond_4
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 786
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0
.end method

.method public static final upgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "oldVersion"    # I
    .param p2, "newVersion"    # I

    .prologue
    .line 800
    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 801
    invoke-static {p0}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->updateTo2(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 803
    :cond_0
    const/4 v0, 0x3

    if-ge p1, v0, :cond_1

    .line 804
    invoke-static {p0}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->updateTo3(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 806
    :cond_1
    const/4 v0, 0x5

    if-ge p1, v0, :cond_2

    .line 807
    invoke-static {p0}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->updateTo5(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 809
    :cond_2
    const/4 v0, 0x6

    if-ge p1, v0, :cond_3

    .line 810
    invoke-static {p0}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->updateTo6(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 812
    :cond_3
    const/16 v0, 0x8

    if-ge p1, v0, :cond_4

    .line 813
    invoke-static {p0}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->updateTo8(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 815
    :cond_4
    const/16 v0, 0x9

    if-ge p1, v0, :cond_5

    .line 816
    invoke-static {p0}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->updateTo9(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 818
    :cond_5
    const/16 v0, 0xa

    if-ge p1, v0, :cond_6

    .line 819
    invoke-static {p0}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->updateTo10(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 821
    :cond_6
    const/16 v0, 0xb

    if-ge p1, v0, :cond_7

    .line 822
    invoke-static {p0}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->updateTo11(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 824
    :cond_7
    const/16 v0, 0xc

    if-ge p1, v0, :cond_8

    .line 825
    invoke-static {p0}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->updateTo12(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 827
    :cond_8
    const/16 v0, 0xd

    if-ge p1, v0, :cond_9

    .line 828
    invoke-static {p0}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->updateTo13(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 830
    :cond_9
    const/16 v0, 0xe

    if-ge p1, v0, :cond_a

    .line 831
    invoke-static {p0}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->updateTo14(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 833
    :cond_a
    const/16 v0, 0xf

    if-ge p1, v0, :cond_b

    .line 834
    invoke-static {p0}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->updateTo15(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 836
    :cond_b
    const/16 v0, 0x10

    if-ge p1, v0, :cond_c

    .line 837
    invoke-static {p0}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->updateTo16(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 839
    :cond_c
    const/16 v0, 0x11

    if-ge p1, v0, :cond_d

    .line 840
    invoke-static {p0}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->updateTo17(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 842
    :cond_d
    const/16 v0, 0x12

    if-ge p1, v0, :cond_e

    .line 843
    invoke-static {p0}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->updateTo18(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 845
    :cond_e
    const/16 v0, 0x13

    if-ge p1, v0, :cond_f

    .line 846
    invoke-static {p0}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->updateTo19(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 848
    :cond_f
    const/16 v0, 0x14

    if-ge p1, v0, :cond_10

    .line 849
    invoke-static {p0}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->updateTo20(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 851
    :cond_10
    const/16 v0, 0x15

    if-ge p1, v0, :cond_11

    .line 852
    invoke-static {p0}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->updateTo21(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 854
    :cond_11
    const/16 v0, 0x16

    if-ge p1, v0, :cond_12

    .line 855
    invoke-static {p0}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->updateTo22(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 857
    :cond_12
    const/16 v0, 0x17

    if-ge p1, v0, :cond_13

    .line 858
    invoke-static {p0}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->updateTo23(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 860
    :cond_13
    const/16 v0, 0x19

    if-ge p1, v0, :cond_14

    .line 861
    invoke-static {p0}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->updateTo25(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 863
    :cond_14
    const/16 v0, 0x1a

    if-ge p1, v0, :cond_15

    .line 864
    invoke-static {p0}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->updateTo26(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 866
    :cond_15
    const/16 v0, 0x1b

    if-ge p1, v0, :cond_16

    .line 867
    invoke-static {p0}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->updateTo27(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 869
    :cond_16
    const/16 v0, 0x1c

    if-ge p1, v0, :cond_17

    .line 870
    invoke-static {p0}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->updateTo28(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 872
    :cond_17
    const/16 v0, 0x1d

    if-ge p1, v0, :cond_18

    .line 873
    invoke-static {p0}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->updateTo29(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 875
    :cond_18
    const/16 v0, 0x1e

    if-ge p1, v0, :cond_19

    .line 876
    invoke-static {p0}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->updateTo30(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 878
    :cond_19
    const/16 v0, 0x1f

    if-ge p1, v0, :cond_1a

    .line 879
    invoke-static {p0}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->updateTo31(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 881
    :cond_1a
    const/16 v0, 0x20

    if-ge p1, v0, :cond_1b

    .line 882
    invoke-static {p0}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->updateTo32(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 884
    :cond_1b
    const/16 v0, 0x21

    if-ge p1, v0, :cond_1c

    .line 885
    invoke-static {p0}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->updateTo33(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 887
    :cond_1c
    const/16 v0, 0x22

    if-ge p1, v0, :cond_1d

    .line 888
    invoke-static {p0}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->updateTo34(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 890
    :cond_1d
    const/16 v0, 0x23

    if-ge p1, v0, :cond_1e

    .line 891
    invoke-static {p0}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->updateTo35(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 893
    :cond_1e
    const/16 v0, 0x24

    if-ge p1, v0, :cond_1f

    .line 894
    invoke-static {p0}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->updateTo36(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 896
    :cond_1f
    const/16 v0, 0x25

    if-ge p1, v0, :cond_20

    .line 897
    invoke-static {p0}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->updateTo37(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 899
    :cond_20
    const/16 v0, 0x26

    if-ge p1, v0, :cond_21

    .line 900
    invoke-static {p0}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->updateTo38(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 902
    :cond_21
    const/16 v0, 0x27

    if-ge p1, v0, :cond_22

    .line 903
    invoke-static {p0}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->updateTo39(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 905
    :cond_22
    const/16 v0, 0x28

    if-ge p1, v0, :cond_23

    .line 906
    invoke-static {p0}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->updateTo40(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 908
    :cond_23
    const/16 v0, 0x29

    if-ge p1, v0, :cond_24

    .line 909
    invoke-static {p0}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->updateTo41(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 911
    :cond_24
    const/16 v0, 0x2a

    if-ge p1, v0, :cond_25

    .line 912
    invoke-static {p0}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->updateTo42(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 914
    :cond_25
    const/16 v0, 0x2b

    if-ge p1, v0, :cond_26

    .line 915
    invoke-static {p0}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->updateTo43(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 917
    :cond_26
    const/16 v0, 0x2c

    if-ge p1, v0, :cond_27

    .line 918
    invoke-static {p0}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->updateTo44(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 920
    :cond_27
    const/16 v0, 0x2d

    if-ge p1, v0, :cond_28

    .line 921
    invoke-static {p0}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->updateTo45(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 923
    :cond_28
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 936
    const-string/jumbo v0, " CREATE TABLE ACCOUNTS ( AC_UID TEXT PRIMARY KEY, AC_NAME TEXT, AC_USER_NAME TEXT, AC_FBUID TEXT, AC_LAST_UPDATE_TIME NUMERIC, AC_PHOTO_ID NUMERIC, AC_PHONE_NUMBER TEXT, AC_DESCRIPTION TEXT,  AC_RELATION  TEXT,  AC_FRIEND  NUMERIC, AC_ICON_EXISTS NUMERIC, AC_IS_BROADCASTER NUMERIC, AC_COLUMN_NAME_BLOCKED NUMERIC, AC_FRIEND_STATE TEXT, AC_NICKNAME_FROM_CONTACT TEXT, AC_BEFORE_BLOCK_FRIEND_STATE TEXT, AC_LAST_SYNC_TIME NUMERIC, AC_BECOME_FRIEND_TIME NUMERIC, AC_CONTACT_LOOKUP_KEY TEXT, AC_DISPLAY_NAME TEXT  );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 978
    const-string/jumbo v0, " CREATE TABLE CHAT_GROUPS ( CG_TOPIC TEXT PRIMARY KEY, CG_NAME TEXT, CG_CREATOR TEXT, CG_OWNER TEXT, CG_CREATE_TIME TEXT, CG_LAST_UPDATE_TIME TEXT, CG_CHAT_GROUP_TYPE TEXT, CG_CHAT_GROUP_VISIBLE NUMERIC, CG_CHAT_GROUP_UNREAD_COUNT NUMERIC, CG_CHAT_GROUP_MUTE NUMERIC, CG_CHAT_GROUP_BACKGROUND TEXT, CG_UNFINISHED_MESSAGE TEXT, CG_LAST_ACTION TEXT, CG_HAS_RECENT_PICTURE NUMERIC, CG_REMOVED_BY_OWNER NUMERIC  );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 996
    const-string/jumbo v0, " CREATE TABLE CHAT_GROUP_MEMBERS ( CGM_CHAT_GROUP_TOPIC TEXT, CGM_FRIEND_ID TEXT, CGM_IS_ACTIVE NUMERIC,  PRIMARY KEY (CGM_CHAT_GROUP_TOPIC, CGM_FRIEND_ID)  );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1018
    const-string/jumbo v0, " CREATE TABLE MESSAGES ( MSG_ID TEXT PRIMARY KEY, MSG_CHAT_GROUP_TOPIC TEXT, MSG_CONTENT TEXT, MSG_CREATE_TIME TEXT, MSG_RECEIVE_TIME TEXT, MSG_TYPE TEXT, MSG_SENDER_UID TEXT, MSG_READ_COUNT NUMERIC, MSG_SEND_STATE NUMERIC, MSG_READED_MARK NUMERIC  );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1032
    const-string/jumbo v0, " CREATE TABLE ARCHIVED_MESSAGES ( MSG_ID TEXT PRIMARY KEY, MSG_CHAT_GROUP_TOPIC TEXT, MSG_CONTENT TEXT, MSG_CREATE_TIME TEXT, MSG_RECEIVE_TIME TEXT, MSG_TYPE TEXT, MSG_SENDER_UID TEXT, MSG_READ_COUNT NUMERIC, MSG_SEND_STATE NUMERIC, MSG_READED_MARK NUMERIC  );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1046
    const-string/jumbo v0, " CREATE TABLE READED_ACK ( RA_MESSAGE_ID TEXT , RA_RECEIVER_UID TEXT ,  PRIMARY KEY (RA_MESSAGE_ID, RA_RECEIVER_UID )  );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1064
    const-string/jumbo v0, " CREATE TABLE RECOMMEND_FRIEND ( RF_UID TEXT PRIMARY KEY, RF_NAME TEXT, RF_USER_NAME TEXT, RF_LAST_UPDATE_TIME NUMERIC, RF_EMAIL TEXT, RF_PHONE_NUMBER TEXT, RF_ICON_EXISTS NUMERIC  );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1090
    const-string/jumbo v0, " CREATE TABLE MUTUAL_FRIEND_RELATIONSHIP ( MFR_RECOMMEND_FRIEND_ID TEXT, MFR_MUTUAL_FRIEND_ID TEXT,  PRIMARY KEY (MFR_RECOMMEND_FRIEND_ID, MFR_MUTUAL_FRIEND_ID)  );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1109
    const-string/jumbo v0, " CREATE INDEX IF NOT EXISTS INDEX_MESSAGE_CHATGROUP_TOPIC  ON MESSAGES( MSG_CHAT_GROUP_TOPIC desc );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1116
    const-string/jumbo v0, " CREATE INDEX IF NOT EXISTS  INDEX_ARCHIVED_MESSAGE_CHATGROUP_TOPIC  ON ARCHIVED_MESSAGES( MSG_CHAT_GROUP_TOPIC desc );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1124
    const-string/jumbo v0, " CREATE TABLE IF NOT EXISTS CONTACT_INFOS ( CI_NAME TEXT, CI_PHONE_NUMBER TEXT, CI_PHOTO_ID NUMERIC,  PRIMARY KEY (CI_PHONE_NUMBER)  );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1132
    const-string/jumbo v0, " CREATE TABLE IF NOT EXISTS NOTICE ( NTC_ID INTEGER PRIMARY KEY, NTC_CONTENT TEXT, NTC_READ NUMERIC, NTC_TYPE TEXT  );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1140
    const-string/jumbo v0, " CREATE TABLE IF NOT EXISTS EXISTING_SYSTEM_NOTICE ( ESN_SYSTEM_ID TEXT PRIMARY KEY  );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1144
    const-string/jumbo v0, " CREATE TABLE IF NOT EXISTS ARTWORK_REPLY_RECORD ( ARR_UID INTEGER PRIMARY KEY, ARR_ARTWORK_ID TEXT, ARR_REPLY_ID TEXT, ARR_REPLY_CONTENT TEXT, ARR_REPLY_TIME NUMERIC, ARR_EDIT_TIME NUMERIC, ARR_DELETED NUMERIC  );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1154
    const-string/jumbo v0, " CREATE TABLE IF NOT EXISTS ARTWORK_RECORD ( AR_UID INTEGER PRIMARY KEY, AR_ARTWORK_ID TEXT UNIQUE, AR_LIKE_COUNT NUMERIC, AR_LIKED_TIME NUMERIC, AR_REPLY_COUNT NUMERIC, AR_REPLY_TIME NUMERIC  );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1163
    const-string/jumbo v0, " CREATE TABLE IF NOT EXISTS ARTWORK_REPORT ( ARP_ARTWORK_ID TEXT PRIMARY KEY, ARP_REPORT_TIME NUMERIC  );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1168
    const-string/jumbo v0, " CREATE TABLE IF NOT EXISTS STICKER_PACKAGES ( SP_CODE TEXT PRIMARY KEY, SP_CONTENT TEXT  );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1173
    const-string/jumbo v0, " CREATE TABLE IF NOT EXISTS STICKER_ROOT ( SR_CONTENT TEXT, SR_LAST_UPDATE NUMERIC  );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1178
    const-string/jumbo v0, " CREATE TABLE IF NOT EXISTS PURCHASE_STATE ( PS_ID NUMERIC PRIMARY KEY, PS_PRODUCT_ID TEXT, PS_PRODUCT_TO TEXT, PS_STATE NUMERIC, PS_SIGNEDDATA TEXT, PS_SIGNATURE TEXT, PS_NOTIFYID TEXT, PS_TIMESTAMP NUMERIC  );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1189
    invoke-static {}, Lcom/liquable/nemo/ads/model/AdsDao;->getCreateTableSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1191
    invoke-static {}, Lcom/liquable/nemo/db/PreferenceDao;->getCreateTableSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1193
    invoke-static {}, Lcom/liquable/nemo/db/DeletedMessageIdDao;->getCreateTableSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1195
    invoke-static {}, Lcom/liquable/nemo/db/CustomStickerDao;->getCreateTableSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1197
    invoke-static {}, Lcom/liquable/nemo/db/FavoriteForumBoardDao;->getCreateTableSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1199
    invoke-static {}, Lcom/liquable/nemo/db/ReportAbuseForumBoardDao;->getCreateTableSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1201
    invoke-static {}, Lcom/liquable/nemo/db/ReportAbuseForumArticleDao;->getCreateTableSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1203
    invoke-static {}, Lcom/liquable/nemo/db/LikedForumItemDao;->getCreateTableSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1204
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 1209
    const/16 v0, 0x1a

    if-ne p2, v0, :cond_0

    const/16 v0, 0x19

    if-ne p3, v0, :cond_0

    .line 1214
    :goto_0
    return-void

    .line 1212
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteOpenHelper;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 1218
    invoke-static {p1, p2, p3}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->upgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1219
    return-void
.end method
