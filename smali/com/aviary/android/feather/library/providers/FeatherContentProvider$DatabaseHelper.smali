.class final Lcom/aviary/android/feather/library/providers/FeatherContentProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "FeatherContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/library/providers/FeatherContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/library/providers/FeatherContentProvider;


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/library/providers/FeatherContentProvider;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p5, "version"    # I

    .prologue
    .line 388
    iput-object p1, p0, Lcom/aviary/android/feather/library/providers/FeatherContentProvider$DatabaseHelper;->this$0:Lcom/aviary/android/feather/library/providers/FeatherContentProvider;

    .line 389
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 390
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 394
    if-nez p1, :cond_0

    .line 395
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "database cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_0
    const-string/jumbo v0, "CREATE TABLE %s ( %s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT(64) UNIQUE NOT NULL, %s INTEGER NOT NULL, %s TEXT)"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    .line 400
    const-string/jumbo v2, "table_sessions"

    aput-object v2, v1, v4

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v5

    const-string/jumbo v2, "session"

    aput-object v2, v1, v6

    .line 401
    const-string/jumbo v2, "creation_time"

    aput-object v2, v1, v7

    const-string/jumbo v2, "file_name"

    aput-object v2, v1, v8

    .line 398
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 397
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 405
    const-string/jumbo v0, "CREATE TABLE %s ( %s INTEGER PRIMARY KEY AUTOINCREMENT, %s INTEGER REFERENCES %s(%s) NOT NULL, %s BLOB, %s INTEGER NOT NULL)"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    .line 406
    const-string/jumbo v2, "table_actions"

    aput-object v2, v1, v4

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v5

    const-string/jumbo v2, "session_id"

    aput-object v2, v1, v6

    const-string/jumbo v2, "table_sessions"

    aput-object v2, v1, v7

    .line 407
    const-string/jumbo v2, "_id"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string/jumbo v3, "actions"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "creation_time"

    aput-object v3, v1, v2

    .line 404
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 403
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 410
    const-string/jumbo v0, "CREATE TRIGGER delete_actions BEFORE DELETE ON %s BEGIN DELETE FROM %s WHERE %s.%s = old.%s; END"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    .line 411
    const-string/jumbo v2, "table_sessions"

    aput-object v2, v1, v4

    const-string/jumbo v2, "table_actions"

    aput-object v2, v1, v5

    const-string/jumbo v2, "table_actions"

    aput-object v2, v1, v6

    const-string/jumbo v2, "session_id"

    aput-object v2, v1, v7

    .line 412
    const-string/jumbo v2, "_id"

    aput-object v2, v1, v8

    .line 409
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 413
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 417
    sget-object v0, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onUpgrade. from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 418
    return-void
.end method
