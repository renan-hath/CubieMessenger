.class public Lcom/liquable/nemo/db/StickerDao;
.super Ljava/lang/Object;
.source "StickerDao.java"


# static fields
.field public static final STICKER_PACKAGES_CODE:Ljava/lang/String; = "SP_CODE"

.field public static final STICKER_PACKAGES_COLUMN_INDEX_CONTENT:I = 0x1

.field public static final STICKER_PACKAGES_COLUMN_INDEX_ID:I = 0x0

.field public static final STICKER_PACKAGES_COLUMN_NAME_CONTENT:Ljava/lang/String; = "SP_CONTENT"

.field public static final STICKER_PACKAGES_PROJECTION:[Ljava/lang/String;

.field public static final STICKER_PACKAGES_TABLE_NAME:Ljava/lang/String; = "STICKER_PACKAGES"

.field public static final STICKER_ROOT_COLUMN_INDEX_CONTENT:I = 0x0

.field public static final STICKER_ROOT_COLUMN_NAME_CONTENT:Ljava/lang/String; = "SR_CONTENT"

.field public static final STICKER_ROOT_COLUMN_NAME_LAST_UPDATE:Ljava/lang/String; = "SR_LAST_UPDATE"

.field public static final STICKER_ROOT_PROJECTION:[Ljava/lang/String;

.field public static final STICKER_ROOT_TABLE_NAME:Ljava/lang/String; = "STICKER_ROOT"


# instance fields
.field private final debugLogger:Lcom/liquable/nemo/util/Logger;

.field private final salt:Ljava/lang/String;

.field private final sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "SR_CONTENT"

    aput-object v1, v0, v2

    sput-object v0, Lcom/liquable/nemo/db/StickerDao;->STICKER_ROOT_PROJECTION:[Ljava/lang/String;

    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "SP_CODE"

    aput-object v1, v0, v2

    const-string/jumbo v1, "SP_CONTENT"

    aput-object v1, v0, v3

    sput-object v0, Lcom/liquable/nemo/db/StickerDao;->STICKER_PACKAGES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 1
    .param p1, "sqLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "salt"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-class v0, Lcom/liquable/nemo/db/StickerDao;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/db/StickerDao;->debugLogger:Lcom/liquable/nemo/util/Logger;

    .line 53
    iput-object p1, p0, Lcom/liquable/nemo/db/StickerDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 54
    iput-object p2, p0, Lcom/liquable/nemo/db/StickerDao;->salt:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public deletePackages()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    iget-object v0, p0, Lcom/liquable/nemo/db/StickerDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "STICKER_PACKAGES"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 59
    return-void
.end method

.method public deletePackages(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/sticker/StickerPackageDto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/sticker/StickerPackageDto;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/sticker/StickerPackageDto;

    .line 63
    .local v0, "pkg":Lcom/liquable/nemo/model/sticker/StickerPackageDto;
    iget-object v2, p0, Lcom/liquable/nemo/db/StickerDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "STICKER_PACKAGES"

    const-string/jumbo v4, "SP_CODE = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 65
    invoke-virtual {v0}, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->getCode()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 63
    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 67
    .end local v0    # "pkg":Lcom/liquable/nemo/model/sticker/StickerPackageDto;
    :cond_0
    return-void
.end method

.method public deleteRoot()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 70
    iget-object v0, p0, Lcom/liquable/nemo/db/StickerDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "STICKER_ROOT"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 71
    return-void
.end method

.method public findPackage(Ljava/lang/String;)Lcom/liquable/nemo/model/sticker/StickerPackageDto;
    .locals 12
    .param p1, "packageCode"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 74
    iget-object v1, p0, Lcom/liquable/nemo/db/StickerDao;->salt:Ljava/lang/String;

    invoke-static {v1}, Lcom/liquable/nemo/crypt/Encryption;->createDESEncryptionV2(Ljava/lang/String;)Lcom/liquable/nemo/crypt/Encryption;

    move-result-object v10

    .line 76
    .local v10, "decrypter":Lcom/liquable/nemo/crypt/Encryption;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 77
    .local v0, "sqBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v1, "STICKER_PACKAGES"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/liquable/nemo/db/StickerDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/liquable/nemo/db/StickerDao;->STICKER_PACKAGES_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "SP_CODE = ?"

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 88
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 98
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 100
    :goto_0
    return-object v5

    .line 91
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/liquable/nemo/crypt/Encryption;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 92
    .local v8, "content":Ljava/lang/String;
    invoke-static {}, Lcom/liquable/nemo/json/SimpleJsonMapper;->getInstance()Lcom/liquable/nemo/json/SimpleJsonMapper;

    move-result-object v1

    const-class v2, Lcom/liquable/nemo/model/sticker/StickerPackageDto;

    invoke-virtual {v1, v8, v2}, Lcom/liquable/nemo/json/SimpleJsonMapper;->decode(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/model/sticker/StickerPackageDto;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v5, v1

    goto :goto_0

    .line 93
    .end local v8    # "content":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 94
    .local v11, "e":Ljava/io/IOException;
    :try_start_2
    iget-object v1, p0, Lcom/liquable/nemo/db/StickerDao;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v2, "findPackage parse json content error"

    invoke-virtual {v1, v2, v11}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 95
    .end local v11    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v11

    .line 96
    .local v11, "e":Ljava/security/GeneralSecurityException;
    :try_start_3
    iget-object v1, p0, Lcom/liquable/nemo/db/StickerDao;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v2, "findPackage fail to decrypt"

    invoke-virtual {v1, v2, v11}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 98
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v11    # "e":Ljava/security/GeneralSecurityException;
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public findRoot()Lcom/liquable/nemo/model/sticker/StickerRootDto;
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 104
    iget-object v1, p0, Lcom/liquable/nemo/db/StickerDao;->salt:Ljava/lang/String;

    invoke-static {v1}, Lcom/liquable/nemo/crypt/Encryption;->createDESEncryptionV2(Ljava/lang/String;)Lcom/liquable/nemo/crypt/Encryption;

    move-result-object v10

    .line 106
    .local v10, "decrypter":Lcom/liquable/nemo/crypt/Encryption;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 107
    .local v0, "sqBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v1, "STICKER_ROOT"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/liquable/nemo/db/StickerDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/liquable/nemo/db/StickerDao;->STICKER_ROOT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 118
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 130
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 132
    :goto_0
    return-object v3

    .line 121
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/liquable/nemo/crypt/Encryption;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 122
    .local v8, "content":Ljava/lang/String;
    invoke-static {v8}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 123
    invoke-static {}, Lcom/liquable/nemo/json/SimpleJsonMapper;->getInstance()Lcom/liquable/nemo/json/SimpleJsonMapper;

    move-result-object v1

    const-class v2, Lcom/liquable/nemo/model/sticker/StickerRootDto;

    invoke-virtual {v1, v8, v2}, Lcom/liquable/nemo/json/SimpleJsonMapper;->decode(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/model/sticker/StickerRootDto;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v3, v1

    goto :goto_0

    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 125
    .end local v8    # "content":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 126
    .local v11, "e":Ljava/io/IOException;
    :try_start_2
    iget-object v1, p0, Lcom/liquable/nemo/db/StickerDao;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v2, "findRoot parse json content error"

    invoke-virtual {v1, v2, v11}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 127
    .end local v11    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v11

    .line 128
    .local v11, "e":Ljava/security/GeneralSecurityException;
    :try_start_3
    iget-object v1, p0, Lcom/liquable/nemo/db/StickerDao;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v2, "findRoot fail to decrypt"

    invoke-virtual {v1, v2, v11}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 130
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v11    # "e":Ljava/security/GeneralSecurityException;
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public getRootLastUpdatedTime()J
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 136
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 137
    .local v0, "sqBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v1, "STICKER_ROOT"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/liquable/nemo/db/StickerDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "SR_LAST_UPDATE"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 148
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 149
    const-wide/16 v1, 0x0

    .line 153
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :goto_0
    return-wide v1

    .line 151
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 153
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public listAllPackage()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/sticker/StickerPackageDto;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 158
    iget-object v1, p0, Lcom/liquable/nemo/db/StickerDao;->salt:Ljava/lang/String;

    invoke-static {v1}, Lcom/liquable/nemo/crypt/Encryption;->createDESEncryptionV2(Ljava/lang/String;)Lcom/liquable/nemo/crypt/Encryption;

    move-result-object v10

    .line 160
    .local v10, "decrypter":Lcom/liquable/nemo/crypt/Encryption;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 161
    .local v0, "sqBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v1, "STICKER_PACKAGES"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 162
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v12, "packages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/sticker/StickerPackageDto;>;"
    iget-object v1, p0, Lcom/liquable/nemo/db/StickerDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/liquable/nemo/db/StickerDao;->STICKER_PACKAGES_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 173
    .local v9, "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/liquable/nemo/crypt/Encryption;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 175
    .local v8, "content":Ljava/lang/String;
    invoke-static {v8}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 176
    invoke-static {}, Lcom/liquable/nemo/json/SimpleJsonMapper;->getInstance()Lcom/liquable/nemo/json/SimpleJsonMapper;

    move-result-object v1

    const-class v2, Lcom/liquable/nemo/model/sticker/StickerPackageDto;

    invoke-virtual {v1, v8, v2}, Lcom/liquable/nemo/json/SimpleJsonMapper;->decode(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/liquable/nemo/model/sticker/StickerPackageDto;

    .line 178
    .local v13, "stickerPackage":Lcom/liquable/nemo/model/sticker/StickerPackageDto;
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 182
    .end local v8    # "content":Ljava/lang/String;
    .end local v13    # "stickerPackage":Lcom/liquable/nemo/model/sticker/StickerPackageDto;
    :catch_0
    move-exception v11

    .line 183
    .local v11, "e":Ljava/io/IOException;
    :try_start_1
    iget-object v1, p0, Lcom/liquable/nemo/db/StickerDao;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v2, "listAllPackage parse json content error"

    invoke-virtual {v1, v2, v11}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 189
    .end local v11    # "e":Ljava/io/IOException;
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    .end local v12    # "packages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/sticker/StickerPackageDto;>;"
    :goto_2
    return-object v12

    .line 187
    .restart local v12    # "packages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/sticker/StickerPackageDto;>;"
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 184
    :catch_1
    move-exception v11

    .line 185
    .local v11, "e":Ljava/security/GeneralSecurityException;
    :try_start_2
    iget-object v1, p0, Lcom/liquable/nemo/db/StickerDao;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v2, "listAllPackage fail to decrypt"

    invoke-virtual {v1, v2, v11}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v11    # "e":Ljava/security/GeneralSecurityException;
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public savePackages(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/sticker/StickerPackageDto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/sticker/StickerPackageDto;>;"
    iget-object v4, p0, Lcom/liquable/nemo/db/StickerDao;->salt:Ljava/lang/String;

    invoke-static {v4}, Lcom/liquable/nemo/crypt/Encryption;->createDESEncryptionV2(Ljava/lang/String;)Lcom/liquable/nemo/crypt/Encryption;

    move-result-object v2

    .line 196
    .local v2, "encrypter":Lcom/liquable/nemo/crypt/Encryption;
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/model/sticker/StickerPackageDto;

    .line 197
    .local v3, "stickerPackageDto":Lcom/liquable/nemo/model/sticker/StickerPackageDto;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 198
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v5, "SP_CODE"

    invoke-virtual {v3}, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string/jumbo v5, "SP_CONTENT"

    .line 200
    invoke-static {}, Lcom/liquable/nemo/json/SimpleJsonMapper;->getInstance()Lcom/liquable/nemo/json/SimpleJsonMapper;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/liquable/nemo/json/SimpleJsonMapper;->encode(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/liquable/nemo/crypt/Encryption;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 199
    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v5, p0, Lcom/liquable/nemo/db/StickerDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v6, "STICKER_PACKAGES"

    const/4 v7, 0x0

    const/4 v8, 0x5

    invoke-virtual {v5, v6, v7, v0, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 206
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v3    # "stickerPackageDto":Lcom/liquable/nemo/model/sticker/StickerPackageDto;
    :catch_0
    move-exception v1

    .line 207
    .local v1, "e":Ljava/security/GeneralSecurityException;
    iget-object v4, p0, Lcom/liquable/nemo/db/StickerDao;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v5, "savePackages fail to encrypt"

    invoke-virtual {v4, v5, v1}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    :cond_0
    return-void
.end method

.method public saveRoot(Lcom/liquable/nemo/model/sticker/StickerRootDto;J)V
    .locals 6
    .param p1, "root"    # Lcom/liquable/nemo/model/sticker/StickerRootDto;
    .param p2, "lastUpdatedTime"    # J

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/liquable/nemo/db/StickerDao;->deleteRoot()V

    .line 214
    iget-object v3, p0, Lcom/liquable/nemo/db/StickerDao;->salt:Ljava/lang/String;

    invoke-static {v3}, Lcom/liquable/nemo/crypt/Encryption;->createDESEncryptionV2(Ljava/lang/String;)Lcom/liquable/nemo/crypt/Encryption;

    move-result-object v2

    .line 217
    .local v2, "encrypter":Lcom/liquable/nemo/crypt/Encryption;
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 218
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v3, "SR_CONTENT"

    .line 219
    invoke-static {}, Lcom/liquable/nemo/json/SimpleJsonMapper;->getInstance()Lcom/liquable/nemo/json/SimpleJsonMapper;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/liquable/nemo/json/SimpleJsonMapper;->encode(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/liquable/nemo/crypt/Encryption;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 218
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string/jumbo v3, "SR_LAST_UPDATE"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 221
    iget-object v3, p0, Lcom/liquable/nemo/db/StickerDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v4, "STICKER_ROOT"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v1

    .line 223
    .local v1, "e":Ljava/security/GeneralSecurityException;
    iget-object v3, p0, Lcom/liquable/nemo/db/StickerDao;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v4, "saveRoot fail to encrypt"

    invoke-virtual {v3, v4, v1}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
