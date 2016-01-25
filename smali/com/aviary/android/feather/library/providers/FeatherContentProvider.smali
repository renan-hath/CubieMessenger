.class public Lcom/aviary/android/feather/library/providers/FeatherContentProvider;
.super Landroid/content/ContentProvider;
.source "FeatherContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/library/providers/FeatherContentProvider$ActionsDbColumns;,
        Lcom/aviary/android/feather/library/providers/FeatherContentProvider$DatabaseHelper;,
        Lcom/aviary/android/feather/library/providers/FeatherContentProvider$SessionsDbColumns;
    }
.end annotation


# static fields
.field static final logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

.field static mActionProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mAuthority:Ljava/lang/String;

.field static mSessionProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDatabase:Lcom/aviary/android/feather/library/providers/FeatherContentProvider$DatabaseHelper;

.field private mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    const-string/jumbo v0, "FeatherContentProvider"

    sget-object v1, Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;->ConsoleLoggerType:Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;

    invoke-static {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory;->getLogger(Ljava/lang/String;Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;)Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-result-object v0

    sput-object v0, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static getAuthority(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    sget-object v0, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->mAuthority:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 105
    invoke-static {p0}, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->loadAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->mAuthority:Ljava/lang/String;

    .line 107
    :cond_0
    sget-object v0, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getAuthority: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->mAuthority:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 108
    sget-object v0, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method private initializeStaticMethods(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 53
    invoke-static {p1}, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->loadAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->mAuthority:Ljava/lang/String;

    .line 55
    sget-object v0, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->mAuthority:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 56
    sget-object v0, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "The ContentProvider AUTHORITY is null! Checkout your AndroidManifest.xml"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    .line 57
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Failed to retrieve the \'authorities\' from the AndroidManifest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    invoke-static {p1}, Lcom/aviary/android/feather/library/providers/FeatherContentProvider$SessionsDbColumns;->init(Landroid/content/Context;)V

    .line 62
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    .line 63
    iget-object v0, p0, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "sessions"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 64
    iget-object v0, p0, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "sessions/id/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 65
    iget-object v0, p0, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "sessions/uuid/*"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 66
    iget-object v0, p0, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "sessions/id/#/actions"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    iget-object v0, p0, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "sessions/uuid/*/actions"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 68
    iget-object v0, p0, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "sessions/uuid/*/actions/id/#"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->mSessionProjectionMap:Ljava/util/HashMap;

    .line 71
    sget-object v0, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->mSessionProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "_id"

    const-string/jumbo v2, "table_sessions._id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->mSessionProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "session"

    const-string/jumbo v2, "table_sessions.session"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->mSessionProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "creation_time"

    const-string/jumbo v2, "table_sessions.creation_time"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->mSessionProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "file_name"

    const-string/jumbo v2, "table_sessions.file_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->mActionProjectionMap:Ljava/util/HashMap;

    .line 78
    sget-object v0, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->mActionProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "_id"

    const-string/jumbo v2, "table_actions._id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->mActionProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "session_id"

    const-string/jumbo v2, "table_actions.session_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->mActionProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "actions"

    const-string/jumbo v2, "table_actions.actions"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->mActionProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "creation_time"

    const-string/jumbo v2, "table_actions.creation_time"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void
.end method

.method private static loadAuthority(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 86
    sget-object v5, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "loadAuthority..."

    aput-object v7, v6, v4

    invoke-interface {v5, v6}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 88
    const-class v5, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "thisName":Ljava/lang/String;
    const/16 v5, 0x8

    invoke-static {p0, v5}, Lcom/aviary/android/feather/library/utils/PackageManagerUtils;->getPackageInfo(Landroid/content/Context;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 90
    .local v0, "info":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    .line 91
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 92
    .local v2, "providers":[Landroid/content/pm/ProviderInfo;
    if-eqz v2, :cond_0

    .line 93
    array-length v5, v2

    :goto_0
    if-lt v4, v5, :cond_1

    .line 100
    .end local v2    # "providers":[Landroid/content/pm/ProviderInfo;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    return-object v4

    .line 93
    .restart local v2    # "providers":[Landroid/content/pm/ProviderInfo;
    :cond_1
    aget-object v1, v2, v4

    .line 94
    .local v1, "p":Landroid/content/pm/ProviderInfo;
    iget-object v6, v1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 95
    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_1

    .line 93
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private printDatabaseStats()V
    .locals 20

    .prologue
    .line 123
    sget-object v2, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "=== DATABASE STATS ==="

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->mDatabase:Lcom/aviary/android/feather/library/providers/FeatherContentProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/aviary/android/feather/library/providers/FeatherContentProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "table_sessions"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 125
    .local v10, "c":Landroid/database/Cursor;
    if-eqz v10, :cond_2

    .line 126
    sget-object v2, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "total sessions: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 127
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    :cond_0
    const-string/jumbo v2, "_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 130
    .local v11, "col1":I
    const-string/jumbo v2, "creation_time"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 132
    .local v12, "col2":I
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 133
    .local v16, "session_id":J
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 134
    .local v13, "ctime":J
    sget-object v2, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "session: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", created: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v13, v14}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 135
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 137
    .end local v11    # "col1":I
    .end local v12    # "col2":I
    .end local v13    # "ctime":J
    .end local v16    # "session_id":J
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 140
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 141
    .local v18, "time":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->mDatabase:Lcom/aviary/android/feather/library/providers/FeatherContentProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/aviary/android/feather/library/providers/FeatherContentProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "table_sessions"

    const/4 v4, 0x0

    .line 142
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "creation_time<"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/32 v6, 0x240c8400

    sub-long v6, v18, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 141
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 143
    .local v15, "cursor":Landroid/database/Cursor;
    if-eqz v15, :cond_3

    .line 144
    sget-object v2, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "we need to delere: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " loitering sessions"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->warning([Ljava/lang/Object;)V

    .line 145
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 147
    :cond_3
    return-void
.end method

.method private purgeDatabase()V
    .locals 8

    .prologue
    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 154
    .local v0, "time":J
    iget-object v3, p0, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->mDatabase:Lcom/aviary/android/feather/library/providers/FeatherContentProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/aviary/android/feather/library/providers/FeatherContentProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string/jumbo v4, "table_sessions"

    .line 155
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "creation_time<"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/32 v6, 0x240c8400

    sub-long v6, v0, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 154
    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 156
    .local v2, "total":I
    sget-object v3, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "deleted "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " loitering sessions"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v3, v4}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->warning([Ljava/lang/Object;)V

    .line 157
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 285
    sget-object v8, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "delete: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-interface {v8, v9}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 287
    const/4 v3, 0x0

    .line 291
    .local v3, "result":I
    iget-object v8, p0, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v8, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 325
    :pswitch_0
    sget-object v8, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "invalid uri"

    aput-object v11, v9, v10

    invoke-interface {v8, v9}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    .line 329
    :cond_0
    :goto_0
    sget-object v8, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "deleted: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " rows"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-interface {v8, v9}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    move v8, v3

    .line 331
    :goto_1
    return v8

    .line 293
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    .line 294
    .local v5, "session":Ljava/lang/String;
    iget-object v8, p0, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->mDatabase:Lcom/aviary/android/feather/library/providers/FeatherContentProvider$DatabaseHelper;

    invoke-virtual {v8}, Lcom/aviary/android/feather/library/providers/FeatherContentProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const-string/jumbo v9, "table_sessions"

    .line 295
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "session=\'"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    .line 294
    invoke-virtual {v8, v9, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 296
    goto :goto_0

    .line 299
    .end local v5    # "session":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    .line 300
    .local v4, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x2

    if-lt v8, v9, :cond_0

    .line 301
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 302
    .restart local v5    # "session":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->getSessionID(Ljava/lang/String;)J

    move-result-wide v6

    .line 303
    .local v6, "session_id":J
    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-lez v8, :cond_0

    .line 304
    iget-object v8, p0, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->mDatabase:Lcom/aviary/android/feather/library/providers/FeatherContentProvider$DatabaseHelper;

    invoke-virtual {v8}, Lcom/aviary/android/feather/library/providers/FeatherContentProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const-string/jumbo v9, "table_actions"

    .line 305
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "session_id=\'"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    .line 304
    invoke-virtual {v8, v9, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 308
    goto/16 :goto_0

    .line 311
    .end local v4    # "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "session":Ljava/lang/String;
    .end local v6    # "session_id":J
    :pswitch_3
    const-wide/16 v0, -0x1

    .line 313
    .local v0, "action_id":J
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 319
    const-wide/16 v8, -0x1

    cmp-long v8, v0, v8

    if-lez v8, :cond_0

    .line 320
    iget-object v8, p0, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->mDatabase:Lcom/aviary/android/feather/library/providers/FeatherContentProvider$DatabaseHelper;

    invoke-virtual {v8}, Lcom/aviary/android/feather/library/providers/FeatherContentProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const-string/jumbo v9, "table_actions"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "_id=\'"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 322
    goto/16 :goto_0

    .line 314
    :catch_0
    move-exception v2

    .line 315
    .local v2, "e":Ljava/lang/NumberFormatException;
    sget-object v8, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "invalid action_id passed"

    aput-object v11, v9, v10

    invoke-interface {v8, v9}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    .line 316
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 291
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method getSessionID(Ljava/lang/String;)J
    .locals 12
    .param p1, "session"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 370
    const-wide/16 v10, -0x1

    .line 371
    .local v10, "session_id":J
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 372
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v1, "table_sessions"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "session=\'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 374
    sget-object v1, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->mSessionProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 375
    iget-object v1, p0, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->mDatabase:Lcom/aviary/android/feather/library/providers/FeatherContentProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/providers/FeatherContentProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 376
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 377
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    const-string/jumbo v1, "_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 379
    .local v8, "column":I
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 381
    .end local v8    # "column":I
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 383
    :cond_1
    return-wide v10
.end method

.method getSessionUUID(J)Ljava/lang/String;
    .locals 11
    .param p1, "session_id"    # J

    .prologue
    const/4 v2, 0x0

    .line 347
    const/4 v10, 0x0

    .line 348
    .local v10, "session":Ljava/lang/String;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 349
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v1, "table_sessions"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "_id=\'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 351
    sget-object v1, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->mSessionProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 352
    iget-object v1, p0, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->mDatabase:Lcom/aviary/android/feather/library/providers/FeatherContentProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/providers/FeatherContentProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 353
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 354
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    const-string/jumbo v1, "session"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 356
    .local v8, "column":I
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 358
    .end local v8    # "column":I
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 360
    :cond_1
    return-object v10
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 204
    sget-object v0, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getType: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 205
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 16
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 210
    sget-object v11, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "insert: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-interface {v11, v12}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 215
    .local v3, "id":I
    const/4 v4, 0x0

    .line 216
    .local v4, "result":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 217
    .local v8, "session":Ljava/lang/String;
    const-wide/16 v9, -0x1

    .line 220
    .local v9, "session_id":J
    packed-switch v3, :pswitch_data_0

    .line 271
    :pswitch_0
    sget-object v11, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "no content for this uri"

    aput-object v14, v12, v13

    invoke-interface {v11, v12}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    .line 275
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 276
    sget-object v11, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "result: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-interface {v11, v12}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 277
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v4, v12}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_1
    move-object v11, v4

    .line 280
    :goto_1
    return-object v11

    .line 224
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->printDatabaseStats()V

    .line 225
    invoke-direct/range {p0 .. p0}, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->purgeDatabase()V

    .line 228
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    .line 229
    new-instance v1, Landroid/content/ContentValues;

    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 230
    .local v1, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v11, "session"

    invoke-virtual {v1, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string/jumbo v11, "creation_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 234
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->mDatabase:Lcom/aviary/android/feather/library/providers/FeatherContentProvider$DatabaseHelper;

    invoke-virtual {v11}, Lcom/aviary/android/feather/library/providers/FeatherContentProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    const-string/jumbo v12, "table_sessions"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    .line 238
    .local v5, "rowId":J
    :goto_2
    const-wide/16 v11, 0x0

    cmp-long v11, v5, v11

    if-lez v11, :cond_0

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v8}, Lcom/aviary/android/feather/library/providers/FeatherContentProvider$SessionsDbColumns;->getContentUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 242
    goto :goto_0

    .line 235
    .end local v5    # "rowId":J
    :catch_0
    move-exception v2

    .line 236
    .local v2, "e":Landroid/database/sqlite/SQLiteConstraintException;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->getSessionID(Ljava/lang/String;)J

    move-result-wide v5

    .restart local v5    # "rowId":J
    goto :goto_2

    .line 246
    .end local v1    # "contentValues":Landroid/content/ContentValues;
    .end local v2    # "e":Landroid/database/sqlite/SQLiteConstraintException;
    .end local v5    # "rowId":J
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    .line 247
    .local v7, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x2

    if-lt v11, v12, :cond_0

    .line 249
    :try_start_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x2

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v9

    .line 256
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->getSessionUUID(J)Ljava/lang/String;

    move-result-object v8

    .line 258
    if-eqz v8, :cond_0

    .line 259
    new-instance v1, Landroid/content/ContentValues;

    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 260
    .restart local v1    # "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v11, "creation_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 261
    const-string/jumbo v11, "session_id"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 262
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->mDatabase:Lcom/aviary/android/feather/library/providers/FeatherContentProvider$DatabaseHelper;

    invoke-virtual {v11}, Lcom/aviary/android/feather/library/providers/FeatherContentProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    const-string/jumbo v12, "table_actions"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 263
    .restart local v5    # "rowId":J
    const-wide/16 v11, 0x0

    cmp-long v11, v5, v11

    if-lez v11, :cond_0

    .line 264
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v8, v5, v6}, Lcom/aviary/android/feather/library/providers/FeatherContentProvider$ActionsDbColumns;->getContentUri(Landroid/content/Context;Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    .line 268
    goto/16 :goto_0

    .line 250
    .end local v1    # "contentValues":Landroid/content/ContentValues;
    .end local v5    # "rowId":J
    :catch_1
    move-exception v2

    .line 251
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 252
    sget-object v11, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-interface {v11, v12}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    .line 253
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 220
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 114
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->initializeStaticMethods(Landroid/content/Context;)V

    .line 116
    sget-object v0, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v1, v5, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onCreate. AUTHORITY = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->mAuthority:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 118
    new-instance v0, Lcom/aviary/android/feather/library/providers/FeatherContentProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "com.aviary.feather.actions.sqlite"

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/aviary/android/feather/library/providers/FeatherContentProvider$DatabaseHelper;-><init>(Lcom/aviary/android/feather/library/providers/FeatherContentProvider;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->mDatabase:Lcom/aviary/android/feather/library/providers/FeatherContentProvider$DatabaseHelper;

    .line 119
    return v5
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 161
    sget-object v2, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "query: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 163
    iget-object v2, p0, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    .line 164
    .local v8, "id":I
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 165
    .local v0, "query":Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v10, 0x0

    .line 168
    .local v10, "session":Ljava/lang/String;
    packed-switch v8, :pswitch_data_0

    .line 194
    sget-object v2, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "no content for this uri"

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    .line 195
    const/4 v2, 0x0

    .line 199
    :goto_0
    return-object v2

    .line 170
    :pswitch_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    .line 171
    const-string/jumbo v2, "table_sessions"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 172
    sget-object v2, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->mSessionProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "session=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 198
    :goto_1
    iget-object v2, p0, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->mDatabase:Lcom/aviary/android/feather/library/providers/FeatherContentProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/aviary/android/feather/library/providers/FeatherContentProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 199
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0

    .line 177
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v9

    .line 178
    .local v9, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 179
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "session":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 180
    .restart local v10    # "session":Ljava/lang/String;
    const-string/jumbo v2, "table_actions, table_sessions"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 181
    sget-object v2, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->mActionProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 182
    const-string/jumbo v2, "%s.%s = \'%s\' AND %s.%s = %s.%s"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "table_sessions"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 183
    const-string/jumbo v5, "session"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v10, v3, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "table_sessions"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 184
    const-string/jumbo v5, "table_actions"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "session_id"

    aput-object v5, v3, v4

    .line 182
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 185
    const-string/jumbo v2, "%s.%s ASC"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "table_actions"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "creation_time"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    .line 186
    goto :goto_1

    .line 187
    :cond_0
    sget-object v2, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "invalid uri. session is missing"

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    .line 188
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 336
    sget-object v0, Lcom/aviary/android/feather/library/providers/FeatherContentProvider;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "update: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 337
    return v4
.end method
