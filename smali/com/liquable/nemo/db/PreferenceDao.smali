.class public Lcom/liquable/nemo/db/PreferenceDao;
.super Ljava/lang/Object;
.source "PreferenceDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/db/PreferenceDao$Type;,
        Lcom/liquable/nemo/db/PreferenceDao$Column;
    }
.end annotation


# static fields
.field public static final PREFERNCE_TABLE_NAME:Ljava/lang/String; = "NEMO_PREFERENCE"

.field private static final debugLogger:Lcom/liquable/nemo/util/Logger;


# instance fields
.field private final sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-class v0, Lcom/liquable/nemo/db/PreferenceDao;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/db/PreferenceDao;->debugLogger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "sqLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/liquable/nemo/db/PreferenceDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 75
    return-void
.end method

.method private createContentValues(Ljava/lang/String;Ljava/lang/Object;Lcom/liquable/nemo/db/PreferenceDao$Type;)Landroid/content/ContentValues;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "type"    # Lcom/liquable/nemo/db/PreferenceDao$Type;

    .prologue
    .line 78
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 79
    .local v0, "contentValues":Landroid/content/ContentValues;
    sget-object v1, Lcom/liquable/nemo/db/PreferenceDao$Column;->KEY:Lcom/liquable/nemo/db/PreferenceDao$Column;

    invoke-virtual {v1}, Lcom/liquable/nemo/db/PreferenceDao$Column;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    sget-object v1, Lcom/liquable/nemo/db/PreferenceDao$Column;->VALUE:Lcom/liquable/nemo/db/PreferenceDao$Column;

    invoke-virtual {v1}, Lcom/liquable/nemo/db/PreferenceDao$Column;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    sget-object v1, Lcom/liquable/nemo/db/PreferenceDao$Column;->TYPE:Lcom/liquable/nemo/db/PreferenceDao$Column;

    invoke-virtual {v1}, Lcom/liquable/nemo/db/PreferenceDao$Column;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/liquable/nemo/db/PreferenceDao$Type;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 82
    return-object v0
.end method

.method public static getCreateTableSql()Ljava/lang/String;
    .locals 4

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v3, "CREATE TABLE IF NOT EXISTS "

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string/jumbo v3, "NEMO_PREFERENCE"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    const-string/jumbo v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    invoke-static {}, Lcom/liquable/nemo/db/PreferenceDao$Column;->values()[Lcom/liquable/nemo/db/PreferenceDao$Column;

    move-result-object v1

    .line 55
    .local v1, "columns":[Lcom/liquable/nemo/db/PreferenceDao$Column;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 56
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/liquable/nemo/db/PreferenceDao$Column;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    const-string/jumbo v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/liquable/nemo/db/PreferenceDao$Column;->getDbType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_0

    .line 60
    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    :cond_1
    const-string/jumbo v3, ");"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private queryKey(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 261
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 262
    .local v0, "sqBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v1, "NEMO_PREFERENCE"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 264
    iget-object v1, p0, Lcom/liquable/nemo/db/PreferenceDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 266
    invoke-static {}, Lcom/liquable/nemo/db/PreferenceDao$Column;->getProjection()[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/liquable/nemo/db/PreferenceDao$Column;->KEY:Lcom/liquable/nemo/db/PreferenceDao$Column;

    .line 267
    invoke-virtual {v4}, Lcom/liquable/nemo/db/PreferenceDao$Column;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    .line 264
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Boolean;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/liquable/nemo/db/PreferenceDao;->queryKey(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 88
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 97
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .end local p2    # "defaultValue":Ljava/lang/Boolean;
    :goto_0
    return-object p2

    .line 91
    .restart local p2    # "defaultValue":Ljava/lang/Boolean;
    :cond_0
    :try_start_1
    sget-object v1, Lcom/liquable/nemo/db/PreferenceDao$Type;->BOOLEAN:Lcom/liquable/nemo/db/PreferenceDao$Type;

    invoke-virtual {v1}, Lcom/liquable/nemo/db/PreferenceDao$Type;->ordinal()I

    move-result v1

    sget-object v2, Lcom/liquable/nemo/db/PreferenceDao$Column;->TYPE:Lcom/liquable/nemo/db/PreferenceDao$Column;

    invoke-virtual {v2}, Lcom/liquable/nemo/db/PreferenceDao$Column;->ordinal()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 92
    sget-object v1, Lcom/liquable/nemo/db/PreferenceDao;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "type not matched:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 95
    :cond_1
    :try_start_2
    sget-object v1, Lcom/liquable/nemo/db/PreferenceDao$Column;->VALUE:Lcom/liquable/nemo/db/PreferenceDao$Column;

    invoke-virtual {v1}, Lcom/liquable/nemo/db/PreferenceDao$Column;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object p2

    .line 97
    .end local p2    # "defaultValue":Ljava/lang/Boolean;
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .restart local p2    # "defaultValue":Ljava/lang/Boolean;
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Float;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/liquable/nemo/db/PreferenceDao;->queryKey(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 104
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 113
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .end local p2    # "defaultValue":Ljava/lang/Float;
    :goto_0
    return-object p2

    .line 107
    .restart local p2    # "defaultValue":Ljava/lang/Float;
    :cond_0
    :try_start_1
    sget-object v1, Lcom/liquable/nemo/db/PreferenceDao$Type;->FLOAT:Lcom/liquable/nemo/db/PreferenceDao$Type;

    invoke-virtual {v1}, Lcom/liquable/nemo/db/PreferenceDao$Type;->ordinal()I

    move-result v1

    sget-object v2, Lcom/liquable/nemo/db/PreferenceDao$Column;->TYPE:Lcom/liquable/nemo/db/PreferenceDao$Column;

    invoke-virtual {v2}, Lcom/liquable/nemo/db/PreferenceDao$Column;->ordinal()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 108
    sget-object v1, Lcom/liquable/nemo/db/PreferenceDao;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "type not matched:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 111
    :cond_1
    :try_start_2
    sget-object v1, Lcom/liquable/nemo/db/PreferenceDao$Column;->VALUE:Lcom/liquable/nemo/db/PreferenceDao$Column;

    invoke-virtual {v1}, Lcom/liquable/nemo/db/PreferenceDao$Column;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object p2

    .line 113
    .end local p2    # "defaultValue":Ljava/lang/Float;
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .restart local p2    # "defaultValue":Ljava/lang/Float;
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public getInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Integer;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/liquable/nemo/db/PreferenceDao;->queryKey(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 120
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 129
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .end local p2    # "defaultValue":Ljava/lang/Integer;
    :goto_0
    return-object p2

    .line 123
    .restart local p2    # "defaultValue":Ljava/lang/Integer;
    :cond_0
    :try_start_1
    sget-object v1, Lcom/liquable/nemo/db/PreferenceDao$Type;->INT:Lcom/liquable/nemo/db/PreferenceDao$Type;

    invoke-virtual {v1}, Lcom/liquable/nemo/db/PreferenceDao$Type;->ordinal()I

    move-result v1

    sget-object v2, Lcom/liquable/nemo/db/PreferenceDao$Column;->TYPE:Lcom/liquable/nemo/db/PreferenceDao$Column;

    invoke-virtual {v2}, Lcom/liquable/nemo/db/PreferenceDao$Column;->ordinal()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 124
    sget-object v1, Lcom/liquable/nemo/db/PreferenceDao;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "type not matched:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 127
    :cond_1
    :try_start_2
    sget-object v1, Lcom/liquable/nemo/db/PreferenceDao$Column;->VALUE:Lcom/liquable/nemo/db/PreferenceDao$Column;

    invoke-virtual {v1}, Lcom/liquable/nemo/db/PreferenceDao$Column;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object p2

    .line 129
    .end local p2    # "defaultValue":Ljava/lang/Integer;
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .restart local p2    # "defaultValue":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Long;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/liquable/nemo/db/PreferenceDao;->queryKey(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 136
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 145
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .end local p2    # "defaultValue":Ljava/lang/Long;
    :goto_0
    return-object p2

    .line 139
    .restart local p2    # "defaultValue":Ljava/lang/Long;
    :cond_0
    :try_start_1
    sget-object v1, Lcom/liquable/nemo/db/PreferenceDao$Type;->LONG:Lcom/liquable/nemo/db/PreferenceDao$Type;

    invoke-virtual {v1}, Lcom/liquable/nemo/db/PreferenceDao$Type;->ordinal()I

    move-result v1

    sget-object v2, Lcom/liquable/nemo/db/PreferenceDao$Column;->TYPE:Lcom/liquable/nemo/db/PreferenceDao$Column;

    invoke-virtual {v2}, Lcom/liquable/nemo/db/PreferenceDao$Column;->ordinal()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 140
    sget-object v1, Lcom/liquable/nemo/db/PreferenceDao;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "type not matched:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 143
    :cond_1
    :try_start_2
    sget-object v1, Lcom/liquable/nemo/db/PreferenceDao$Column;->VALUE:Lcom/liquable/nemo/db/PreferenceDao$Column;

    invoke-virtual {v1}, Lcom/liquable/nemo/db/PreferenceDao$Column;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object p2

    .line 145
    .end local p2    # "defaultValue":Ljava/lang/Long;
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .restart local p2    # "defaultValue":Ljava/lang/Long;
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/liquable/nemo/db/PreferenceDao;->queryKey(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 152
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 161
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p2

    .line 155
    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    :try_start_1
    sget-object v1, Lcom/liquable/nemo/db/PreferenceDao$Type;->STRING:Lcom/liquable/nemo/db/PreferenceDao$Type;

    invoke-virtual {v1}, Lcom/liquable/nemo/db/PreferenceDao$Type;->ordinal()I

    move-result v1

    sget-object v2, Lcom/liquable/nemo/db/PreferenceDao$Column;->TYPE:Lcom/liquable/nemo/db/PreferenceDao$Column;

    invoke-virtual {v2}, Lcom/liquable/nemo/db/PreferenceDao$Column;->ordinal()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 156
    sget-object v1, Lcom/liquable/nemo/db/PreferenceDao;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "type not matched:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 159
    :cond_1
    :try_start_2
    sget-object v1, Lcom/liquable/nemo/db/PreferenceDao$Column;->VALUE:Lcom/liquable/nemo/db/PreferenceDao$Column;

    invoke-virtual {v1}, Lcom/liquable/nemo/db/PreferenceDao$Column;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object p2

    .line 161
    .end local p2    # "defaultValue":Ljava/lang/String;
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .restart local p2    # "defaultValue":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public listAll()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 166
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 167
    .local v9, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 168
    .local v0, "sqBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v1, "NEMO_PREFERENCE"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcom/liquable/nemo/db/PreferenceDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 172
    invoke-static {}, Lcom/liquable/nemo/db/PreferenceDao$Column;->getProjection()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    .line 170
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 180
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 181
    new-instance v9, Ljava/util/HashMap;

    .end local v9    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 205
    :goto_0
    return-object v9

    .line 184
    .restart local v9    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    :goto_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 185
    sget-object v1, Lcom/liquable/nemo/db/PreferenceDao$Type;->BOOLEAN:Lcom/liquable/nemo/db/PreferenceDao$Type;

    invoke-virtual {v1}, Lcom/liquable/nemo/db/PreferenceDao$Type;->ordinal()I

    move-result v1

    sget-object v2, Lcom/liquable/nemo/db/PreferenceDao$Column;->TYPE:Lcom/liquable/nemo/db/PreferenceDao$Column;

    invoke-virtual {v2}, Lcom/liquable/nemo/db/PreferenceDao$Column;->ordinal()I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 186
    sget-object v1, Lcom/liquable/nemo/db/PreferenceDao$Column;->KEY:Lcom/liquable/nemo/db/PreferenceDao$Column;

    invoke-virtual {v1}, Lcom/liquable/nemo/db/PreferenceDao$Column;->ordinal()I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/db/PreferenceDao$Column;->VALUE:Lcom/liquable/nemo/db/PreferenceDao$Column;

    .line 187
    invoke-virtual {v2}, Lcom/liquable/nemo/db/PreferenceDao$Column;->ordinal()I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    .line 186
    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 203
    .end local v9    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    .line 188
    .restart local v9    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    :try_start_2
    sget-object v1, Lcom/liquable/nemo/db/PreferenceDao$Type;->FLOAT:Lcom/liquable/nemo/db/PreferenceDao$Type;

    invoke-virtual {v1}, Lcom/liquable/nemo/db/PreferenceDao$Type;->ordinal()I

    move-result v1

    sget-object v2, Lcom/liquable/nemo/db/PreferenceDao$Column;->TYPE:Lcom/liquable/nemo/db/PreferenceDao$Column;

    invoke-virtual {v2}, Lcom/liquable/nemo/db/PreferenceDao$Column;->ordinal()I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 189
    sget-object v1, Lcom/liquable/nemo/db/PreferenceDao$Column;->KEY:Lcom/liquable/nemo/db/PreferenceDao$Column;

    invoke-virtual {v1}, Lcom/liquable/nemo/db/PreferenceDao$Column;->ordinal()I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/db/PreferenceDao$Column;->VALUE:Lcom/liquable/nemo/db/PreferenceDao$Column;

    .line 190
    invoke-virtual {v2}, Lcom/liquable/nemo/db/PreferenceDao$Column;->ordinal()I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    .line 189
    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 191
    :cond_2
    sget-object v1, Lcom/liquable/nemo/db/PreferenceDao$Type;->INT:Lcom/liquable/nemo/db/PreferenceDao$Type;

    invoke-virtual {v1}, Lcom/liquable/nemo/db/PreferenceDao$Type;->ordinal()I

    move-result v1

    sget-object v2, Lcom/liquable/nemo/db/PreferenceDao$Column;->TYPE:Lcom/liquable/nemo/db/PreferenceDao$Column;

    invoke-virtual {v2}, Lcom/liquable/nemo/db/PreferenceDao$Column;->ordinal()I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 192
    sget-object v1, Lcom/liquable/nemo/db/PreferenceDao$Column;->KEY:Lcom/liquable/nemo/db/PreferenceDao$Column;

    invoke-virtual {v1}, Lcom/liquable/nemo/db/PreferenceDao$Column;->ordinal()I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/db/PreferenceDao$Column;->VALUE:Lcom/liquable/nemo/db/PreferenceDao$Column;

    .line 193
    invoke-virtual {v2}, Lcom/liquable/nemo/db/PreferenceDao$Column;->ordinal()I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 192
    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 194
    :cond_3
    sget-object v1, Lcom/liquable/nemo/db/PreferenceDao$Type;->LONG:Lcom/liquable/nemo/db/PreferenceDao$Type;

    invoke-virtual {v1}, Lcom/liquable/nemo/db/PreferenceDao$Type;->ordinal()I

    move-result v1

    sget-object v2, Lcom/liquable/nemo/db/PreferenceDao$Column;->TYPE:Lcom/liquable/nemo/db/PreferenceDao$Column;

    invoke-virtual {v2}, Lcom/liquable/nemo/db/PreferenceDao$Column;->ordinal()I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 195
    sget-object v1, Lcom/liquable/nemo/db/PreferenceDao$Column;->KEY:Lcom/liquable/nemo/db/PreferenceDao$Column;

    invoke-virtual {v1}, Lcom/liquable/nemo/db/PreferenceDao$Column;->ordinal()I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/db/PreferenceDao$Column;->VALUE:Lcom/liquable/nemo/db/PreferenceDao$Column;

    .line 196
    invoke-virtual {v2}, Lcom/liquable/nemo/db/PreferenceDao$Column;->ordinal()I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 195
    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 197
    :cond_4
    sget-object v1, Lcom/liquable/nemo/db/PreferenceDao$Type;->STRING:Lcom/liquable/nemo/db/PreferenceDao$Type;

    invoke-virtual {v1}, Lcom/liquable/nemo/db/PreferenceDao$Type;->ordinal()I

    move-result v1

    sget-object v2, Lcom/liquable/nemo/db/PreferenceDao$Column;->TYPE:Lcom/liquable/nemo/db/PreferenceDao$Column;

    invoke-virtual {v2}, Lcom/liquable/nemo/db/PreferenceDao$Column;->ordinal()I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 198
    sget-object v1, Lcom/liquable/nemo/db/PreferenceDao$Column;->KEY:Lcom/liquable/nemo/db/PreferenceDao$Column;

    invoke-virtual {v1}, Lcom/liquable/nemo/db/PreferenceDao$Column;->ordinal()I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/db/PreferenceDao$Column;->VALUE:Lcom/liquable/nemo/db/PreferenceDao$Column;

    .line 199
    invoke-virtual {v2}, Lcom/liquable/nemo/db/PreferenceDao$Column;->ordinal()I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 198
    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 203
    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;Lcom/liquable/nemo/db/PreferenceDao$Type;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "type"    # Lcom/liquable/nemo/db/PreferenceDao$Type;

    .prologue
    .line 209
    sget-object v0, Lcom/liquable/nemo/db/PreferenceDao$1;->$SwitchMap$com$liquable$nemo$db$PreferenceDao$Type:[I

    invoke-virtual {p3}, Lcom/liquable/nemo/db/PreferenceDao$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 221
    const/4 v0, 0x0

    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return v0

    .line 211
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/db/PreferenceDao;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    goto :goto_0

    .line 213
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/db/PreferenceDao;->putFloat(Ljava/lang/String;Ljava/lang/Float;)Z

    move-result v0

    goto :goto_0

    .line 215
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_2
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/db/PreferenceDao;->putInt(Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result v0

    goto :goto_0

    .line 217
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_3
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/db/PreferenceDao;->putLong(Ljava/lang/String;Ljava/lang/Long;)Z

    move-result v0

    goto :goto_0

    .line 219
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_4
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/db/PreferenceDao;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 209
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 226
    const-wide/16 v0, -0x1

    iget-object v2, p0, Lcom/liquable/nemo/db/PreferenceDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "NEMO_PREFERENCE"

    const/4 v4, 0x0

    sget-object v5, Lcom/liquable/nemo/db/PreferenceDao$Type;->BOOLEAN:Lcom/liquable/nemo/db/PreferenceDao$Type;

    .line 228
    invoke-direct {p0, p1, p2, v5}, Lcom/liquable/nemo/db/PreferenceDao;->createContentValues(Ljava/lang/String;Ljava/lang/Object;Lcom/liquable/nemo/db/PreferenceDao$Type;)Landroid/content/ContentValues;

    move-result-object v5

    const/4 v6, 0x5

    .line 226
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putFloat(Ljava/lang/String;Ljava/lang/Float;)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Float;

    .prologue
    .line 233
    const-wide/16 v0, -0x1

    iget-object v2, p0, Lcom/liquable/nemo/db/PreferenceDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "NEMO_PREFERENCE"

    const/4 v4, 0x0

    sget-object v5, Lcom/liquable/nemo/db/PreferenceDao$Type;->FLOAT:Lcom/liquable/nemo/db/PreferenceDao$Type;

    .line 235
    invoke-direct {p0, p1, p2, v5}, Lcom/liquable/nemo/db/PreferenceDao;->createContentValues(Ljava/lang/String;Ljava/lang/Object;Lcom/liquable/nemo/db/PreferenceDao$Type;)Landroid/content/ContentValues;

    move-result-object v5

    const/4 v6, 0x5

    .line 233
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putInt(Ljava/lang/String;Ljava/lang/Integer;)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Integer;

    .prologue
    .line 240
    const-wide/16 v0, -0x1

    iget-object v2, p0, Lcom/liquable/nemo/db/PreferenceDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "NEMO_PREFERENCE"

    const/4 v4, 0x0

    sget-object v5, Lcom/liquable/nemo/db/PreferenceDao$Type;->INT:Lcom/liquable/nemo/db/PreferenceDao$Type;

    .line 242
    invoke-direct {p0, p1, p2, v5}, Lcom/liquable/nemo/db/PreferenceDao;->createContentValues(Ljava/lang/String;Ljava/lang/Object;Lcom/liquable/nemo/db/PreferenceDao$Type;)Landroid/content/ContentValues;

    move-result-object v5

    const/4 v6, 0x5

    .line 240
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putLong(Ljava/lang/String;Ljava/lang/Long;)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Long;

    .prologue
    .line 247
    const-wide/16 v0, -0x1

    iget-object v2, p0, Lcom/liquable/nemo/db/PreferenceDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "NEMO_PREFERENCE"

    const/4 v4, 0x0

    sget-object v5, Lcom/liquable/nemo/db/PreferenceDao$Type;->LONG:Lcom/liquable/nemo/db/PreferenceDao$Type;

    .line 249
    invoke-direct {p0, p1, p2, v5}, Lcom/liquable/nemo/db/PreferenceDao;->createContentValues(Ljava/lang/String;Ljava/lang/Object;Lcom/liquable/nemo/db/PreferenceDao$Type;)Landroid/content/ContentValues;

    move-result-object v5

    const/4 v6, 0x5

    .line 247
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 254
    const-wide/16 v0, -0x1

    iget-object v2, p0, Lcom/liquable/nemo/db/PreferenceDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "NEMO_PREFERENCE"

    const/4 v4, 0x0

    sget-object v5, Lcom/liquable/nemo/db/PreferenceDao$Type;->STRING:Lcom/liquable/nemo/db/PreferenceDao$Type;

    .line 256
    invoke-direct {p0, p1, p2, v5}, Lcom/liquable/nemo/db/PreferenceDao;->createContentValues(Ljava/lang/String;Ljava/lang/Object;Lcom/liquable/nemo/db/PreferenceDao$Type;)Landroid/content/ContentValues;

    move-result-object v5

    const/4 v6, 0x5

    .line 254
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
