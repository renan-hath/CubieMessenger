.class final Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LocalyticsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "version"    # I

    .prologue
    .line 509
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 511
    iput-object p1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 512
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

    .line 526
    if-nez p1, :cond_0

    .line 528
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "db cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :cond_0
    const-string/jumbo v0, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT UNIQUE NOT NULL, %s TEXT UNIQUE NOT NULL, %s INTEGER NOT NULL CHECK (%s >= 0), %s INTEGER NOT NULL CHECK(%s IN (%s, %s)));"

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "api_keys"

    aput-object v2, v1, v4

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v5

    const-string/jumbo v2, "api_key"

    aput-object v2, v1, v6

    const-string/jumbo v2, "uuid"

    aput-object v2, v1, v7

    const-string/jumbo v2, "created_time"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string/jumbo v3, "created_time"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "opt_out"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "opt_out"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "0"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "1"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 535
    const-string/jumbo v0, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s INTEGER REFERENCES %s(%s) NOT NULL, %s TEXT UNIQUE NOT NULL, %s INTEGER NOT NULL CHECK (%s >= 0), %s TEXT NOT NULL, %s TEXT NOT NULL, %s TEXT NOT NULL, %s INTEGER NOT NULL, %s TEXT NOT NULL, %s TEXT NOT NULL, %s TEXT NOT NULL, %s TEXT NOT NULL, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT NOT NULL, %s TEXT NOT NULL, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT);"

    const/16 v1, 0x1c

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "sessions"

    aput-object v2, v1, v4

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v5

    const-string/jumbo v2, "api_key_ref"

    aput-object v2, v1, v6

    const-string/jumbo v2, "api_keys"

    aput-object v2, v1, v7

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string/jumbo v3, "uuid"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "session_start_wall_time"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "session_start_wall_time"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "localytics_library_version"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "iu"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "app_version"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string/jumbo v3, "android_version"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string/jumbo v3, "android_sdk"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string/jumbo v3, "device_model"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string/jumbo v3, "device_manufacturer"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string/jumbo v3, "device_android_id_hash"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string/jumbo v3, "device_telephony_id"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string/jumbo v3, "device_telephony_id_hash"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string/jumbo v3, "device_serial_number_hash"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string/jumbo v3, "device_wifi_mac_hash"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string/jumbo v3, "locale_language"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string/jumbo v3, "locale_country"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string/jumbo v3, "network_carrier"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string/jumbo v3, "network_country"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string/jumbo v3, "network_type"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string/jumbo v3, "device_country"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string/jumbo v3, "latitude"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string/jumbo v3, "longitude"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 538
    const-string/jumbo v0, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s INTEGER REFERENCES %s(%s) NOT NULL, %s TEXT UNIQUE NOT NULL, %s TEXT NOT NULL, %s INTEGER NOT NULL CHECK (%s >= 0), %s INTEGER NOT NULL CHECK (%s >= 0));"

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "events"

    aput-object v2, v1, v4

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v5

    const-string/jumbo v2, "session_key_ref"

    aput-object v2, v1, v6

    const-string/jumbo v2, "sessions"

    aput-object v2, v1, v7

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string/jumbo v3, "uuid"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "event_name"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "real_time"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "real_time"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "wall_time"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "wall_time"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 545
    const-string/jumbo v0, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s INTEGER REFERENCES %s(%s) NOT NULL, %s TEXT NOT NULL CHECK(%s IN (%s, %s)), %s TEXT NOT NULL, %s INTEGER);"

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "event_history"

    aput-object v2, v1, v4

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v5

    const-string/jumbo v2, "session_key_ref"

    aput-object v2, v1, v6

    const-string/jumbo v2, "sessions"

    aput-object v2, v1, v7

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string/jumbo v3, "type"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "type"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "name"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "processed_in_blob"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 549
    const-string/jumbo v0, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s INTEGER REFERENCES %s(%s) NOT NULL, %s TEXT NOT NULL, %s TEXT NOT NULL);"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "attributes"

    aput-object v2, v1, v4

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v5

    const-string/jumbo v2, "events_key_ref"

    aput-object v2, v1, v6

    const-string/jumbo v2, "events"

    aput-object v2, v1, v7

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string/jumbo v3, "attribute_key"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "attribute_value"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 552
    const-string/jumbo v0, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT UNIQUE NOT NULL);"

    new-array v1, v7, [Ljava/lang/Object;

    const-string/jumbo v2, "upload_blobs"

    aput-object v2, v1, v4

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v5

    const-string/jumbo v2, "uuid"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 555
    const-string/jumbo v0, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s INTEGER REFERENCES %s(%s) NOT NULL, %s INTEGER REFERENCES %s(%s) NOT NULL);"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "upload_blob_events"

    aput-object v2, v1, v4

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v5

    const-string/jumbo v2, "upload_blobs_key_ref"

    aput-object v2, v1, v6

    const-string/jumbo v2, "upload_blobs"

    aput-object v2, v1, v7

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string/jumbo v3, "events_key_ref"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "events"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "_id"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 556
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 561
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 568
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 573
    const-string/jumbo v0, "PRAGMA foreign_keys = ON;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 588
    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 15
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 597
    const/4 v1, 0x3

    move/from16 v0, p2

    if-ge v0, v1, :cond_0

    .line 599
    const-string/jumbo v1, "upload_blob_events"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 600
    const-string/jumbo v1, "event_history"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 601
    const-string/jumbo v1, "upload_blobs"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 602
    const-string/jumbo v1, "attributes"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 603
    const-string/jumbo v1, "events"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 604
    const-string/jumbo v1, "sessions"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 607
    :cond_0
    const/4 v1, 0x4

    move/from16 v0, p2

    if-ge v0, v1, :cond_1

    .line 611
    const-string/jumbo v1, "ALTER TABLE %s ADD COLUMN %s TEXT;"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "sessions"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "iu"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 614
    :cond_1
    const/4 v1, 0x5

    move/from16 v0, p2

    if-ge v0, v1, :cond_2

    .line 616
    const-string/jumbo v1, "ALTER TABLE %s ADD COLUMN %s TEXT;"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "sessions"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "device_wifi_mac_hash"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 619
    :cond_2
    const/4 v1, 0x6

    move/from16 v0, p2

    if-ge v0, v1, :cond_3

    .line 621
    const/4 v9, 0x0

    .line 624
    .local v9, "attributesCursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v2, "attributes"

    .line 625
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 626
    const-string/jumbo v4, "_id"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    .line 627
    const-string/jumbo v4, "attribute_key"

    aput-object v4, v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    .line 624
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 629
    const-string/jumbo v1, "_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 630
    .local v10, "idColumnIndex":I
    const-string/jumbo v1, "attribute_key"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 632
    .local v11, "keyColumnIndex":I
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 633
    .local v12, "tempValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "%s = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "_id"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 634
    .local v14, "whereClause":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v13, v1, [Ljava/lang/String;

    .line 636
    .local v13, "whereArgs":[Ljava/lang/String;
    const/4 v1, -0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 637
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_4

    .line 649
    if-eqz v9, :cond_3

    .line 651
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 656
    .end local v9    # "attributesCursor":Landroid/database/Cursor;
    .end local v10    # "idColumnIndex":I
    .end local v11    # "keyColumnIndex":I
    .end local v12    # "tempValues":Landroid/content/ContentValues;
    .end local v13    # "whereArgs":[Ljava/lang/String;
    .end local v14    # "whereClause":Ljava/lang/String;
    :cond_3
    return-void

    .line 639
    .restart local v9    # "attributesCursor":Landroid/database/Cursor;
    .restart local v10    # "idColumnIndex":I
    .restart local v11    # "keyColumnIndex":I
    .restart local v12    # "tempValues":Landroid/content/ContentValues;
    .restart local v13    # "whereArgs":[Ljava/lang/String;
    .restart local v14    # "whereClause":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string/jumbo v1, "attribute_key"

    const-string/jumbo v2, "%s:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    const/4 v1, 0x0

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v13, v1

    .line 642
    const-string/jumbo v1, "attributes"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v12, v14, v13}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 644
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 648
    .end local v10    # "idColumnIndex":I
    .end local v11    # "keyColumnIndex":I
    .end local v12    # "tempValues":Landroid/content/ContentValues;
    .end local v13    # "whereArgs":[Ljava/lang/String;
    .end local v14    # "whereClause":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 649
    if-eqz v9, :cond_5

    .line 651
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 652
    const/4 v9, 0x0

    .line 654
    :cond_5
    throw v1
.end method
