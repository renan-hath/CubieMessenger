.class final Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$UploadHandler;
.super Landroid/os/Handler;
.source "LocalyticsSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UploadHandler"
.end annotation


# instance fields
.field private final mApiKey:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field protected final mProvider:Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

.field private final mSessionHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Looper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sessionHandler"    # Landroid/os/Handler;
    .param p3, "apiKey"    # Ljava/lang/String;
    .param p4, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2622
    invoke-direct {p0, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2624
    iput-object p1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$UploadHandler;->mContext:Landroid/content/Context;

    .line 2625
    invoke-static {p1, p3}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$UploadHandler;->mProvider:Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    .line 2626
    iput-object p2, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$UploadHandler;->mSessionHandler:Landroid/os/Handler;

    .line 2627
    iput-object p3, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$UploadHandler;->mApiKey:Ljava/lang/String;

    .line 2628
    return-void
.end method

.method static convertAttributesToJson(Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;Landroid/content/Context;J)Lorg/json/JSONObject;
    .locals 12
    .param p0, "provider"    # Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 3732
    const/4 v7, 0x0

    .line 3735
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v1, "attributes"

    const/4 v2, 0x0

    const-string/jumbo v0, "%s = ? AND %s != ? AND %s != ? AND %s != ? AND %s != ?"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "events_key_ref"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "attribute_key"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "attribute_key"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "attribute_key"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "attribute_key"

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x5

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x1

    sget-object v5, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_1:Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v0, 0x2

    sget-object v5, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_2:Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v0, 0x3

    sget-object v5, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_3:Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v0, 0x4

    sget-object v5, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_4:Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3737
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 3758
    if-eqz v7, :cond_0

    .line 3760
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3761
    const/4 v7, 0x0

    .line 3754
    :cond_0
    :goto_0
    return-object v6

    .line 3742
    :cond_1
    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 3744
    .local v6, "attributes":Lorg/json/JSONObject;
    const-string/jumbo v0, "attribute_key"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 3745
    .local v9, "keyColumn":I
    const-string/jumbo v0, "attribute_value"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 3746
    .local v11, "valueColumn":I
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 3758
    if-eqz v7, :cond_0

    .line 3760
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3761
    const/4 v7, 0x0

    goto :goto_0

    .line 3748
    :cond_2
    :try_start_2
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3749
    .local v8, "key":Ljava/lang/String;
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 3751
    .local v10, "value":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 3757
    .end local v6    # "attributes":Lorg/json/JSONObject;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "keyColumn":I
    .end local v10    # "value":Ljava/lang/String;
    .end local v11    # "valueColumn":I
    :catchall_0
    move-exception v0

    .line 3758
    if-eqz v7, :cond_3

    .line 3760
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3761
    const/4 v7, 0x0

    .line 3763
    :cond_3
    throw v0
.end method

.method static convertDatabaseToJson(Landroid/content/Context;Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;Ljava/lang/String;)Ljava/util/List;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "provider"    # Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;
    .param p2, "apiKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2978
    new-instance v16, Ljava/util/LinkedList;

    invoke-direct/range {v16 .. v16}, Ljava/util/LinkedList;-><init>()V

    .line 2979
    .local v16, "result":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    const/4 v13, 0x0

    .line 2982
    .local v13, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v3, "upload_blobs"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 2984
    invoke-static/range {p1 .. p2}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$UploadHandler;->getApiKeyCreationTime(Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;Ljava/lang/String;)J

    move-result-wide v11

    .line 2986
    .local v11, "creationTime":J
    const-string/jumbo v2, "_id"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 2987
    .local v15, "idColumn":I
    const-string/jumbo v2, "uuid"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 2988
    .local v17, "uuidColumn":I
    :cond_0
    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v2

    if-nez v2, :cond_2

    .line 3033
    if-eqz v13, :cond_1

    .line 3035
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 3036
    const/4 v13, 0x0

    .line 3045
    :cond_1
    return-object v16

    .line 2992
    :cond_2
    :try_start_1
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 2994
    .local v10, "blobHeader":Lorg/json/JSONObject;
    const-string/jumbo v2, "dt"

    const-string/jumbo v3, "h"

    invoke-virtual {v10, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2995
    const-string/jumbo v2, "pa"

    invoke-virtual {v10, v2, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2996
    const-string/jumbo v2, "seq"

    invoke-interface {v13, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v10, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2997
    const-string/jumbo v2, "u"

    move/from16 v0, v17

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2998
    const-string/jumbo v2, "attrs"

    invoke-interface {v13, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$UploadHandler;->getSessionIdForBlobId(Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;J)J

    move-result-wide v3

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v3, v4}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$UploadHandler;->getAttributesFromSession(Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2999
    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3001
    const/4 v9, 0x0

    .line 3004
    .local v9, "blobEvents":Landroid/database/Cursor;
    :try_start_2
    const-string/jumbo v3, "upload_blob_events"

    .line 3005
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "events_key_ref"

    aput-object v5, v4, v2

    const-string/jumbo v2, "%s = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "upload_blobs_key_ref"

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 3006
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v13, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const-string/jumbo v7, "events_key_ref"

    move-object/from16 v2, p1

    .line 3004
    invoke-virtual/range {v2 .. v7}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 3008
    const-string/jumbo v2, "events_key_ref"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 3009
    .local v14, "eventIdColumn":I
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 3016
    if-eqz v9, :cond_0

    .line 3018
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 3022
    .end local v9    # "blobEvents":Landroid/database/Cursor;
    .end local v10    # "blobHeader":Lorg/json/JSONObject;
    .end local v14    # "eventIdColumn":I
    :catch_0
    move-exception v2

    goto/16 :goto_0

    .line 3011
    .restart local v9    # "blobEvents":Landroid/database/Cursor;
    .restart local v10    # "blobHeader":Lorg/json/JSONObject;
    .restart local v14    # "eventIdColumn":I
    :cond_3
    :try_start_4
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-interface {v13, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    move-object/from16 v8, p2

    invoke-static/range {v2 .. v8}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$UploadHandler;->convertEventToJson(Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;Landroid/content/Context;JJLjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 3015
    .end local v14    # "eventIdColumn":I
    :catchall_0
    move-exception v2

    .line 3016
    if-eqz v9, :cond_4

    .line 3018
    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3020
    :cond_4
    throw v2
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3032
    .end local v9    # "blobEvents":Landroid/database/Cursor;
    .end local v10    # "blobHeader":Lorg/json/JSONObject;
    .end local v11    # "creationTime":J
    .end local v15    # "idColumn":I
    .end local v17    # "uuidColumn":I
    :catchall_1
    move-exception v2

    .line 3033
    if-eqz v13, :cond_5

    .line 3035
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 3036
    const/4 v13, 0x0

    .line 3038
    :cond_5
    throw v2
.end method

.method static convertEventToJson(Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;Landroid/content/Context;JJLjava/lang/String;)Lorg/json/JSONObject;
    .locals 32
    .param p0, "provider"    # Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventId"    # J
    .param p4, "blobId"    # J
    .param p6, "apiKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 3278
    new-instance v19, Lorg/json/JSONObject;

    invoke-direct/range {v19 .. v19}, Lorg/json/JSONObject;-><init>()V

    .line 3280
    .local v19, "result":Lorg/json/JSONObject;
    const/4 v11, 0x0

    .line 3284
    .local v11, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v4, "events"

    const/4 v5, 0x0

    const-string/jumbo v3, "%s = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "_id"

    aput-object v8, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 3285
    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    const-string/jumbo v8, "_id"

    move-object/from16 v3, p0

    .line 3284
    invoke-virtual/range {v3 .. v8}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 3287
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 3289
    const-string/jumbo v3, "event_name"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 3290
    .local v13, "eventName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$UploadHandler;->getSessionIdForEventId(Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;J)J

    move-result-wide v22

    .line 3291
    .local v22, "sessionId":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$UploadHandler;->getSessionUuid(Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;J)Ljava/lang/String;

    move-result-object v26

    .line 3292
    .local v26, "sessionUuid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$UploadHandler;->getSessionStartTime(Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;J)J

    move-result-wide v24

    .line 3294
    .local v24, "sessionStartTime":J
    sget-object v3, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->OPEN_EVENT:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 3296
    const-string/jumbo v3, "dt"

    const-string/jumbo v4, "s"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3297
    const-string/jumbo v3, "ct"

    const-string/jumbo v4, "wall_time"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    long-to-double v4, v4

    .line 3298
    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    .line 3297
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 3299
    const-string/jumbo v3, "u"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3304
    const-string/jumbo v3, "nth"

    move-object/from16 v0, v19

    move-wide/from16 v1, v22

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3309
    const/4 v10, 0x0

    .line 3312
    .local v10, "attributesCursor":Landroid/database/Cursor;
    :try_start_1
    const-string/jumbo v4, "attributes"

    const/4 v5, 0x0

    const-string/jumbo v3, "%s = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "events_key_ref"

    aput-object v8, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 3314
    const-string/jumbo v3, "attribute_key"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 3315
    .local v15, "keyColumn":I
    const-string/jumbo v3, "attribute_value"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    .line 3316
    .local v29, "valueColumn":I
    :cond_0
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_3

    .line 3343
    if-eqz v10, :cond_1

    .line 3345
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3605
    .end local v10    # "attributesCursor":Landroid/database/Cursor;
    .end local v15    # "keyColumn":I
    .end local v29    # "valueColumn":I
    :cond_1
    :goto_1
    if-eqz v11, :cond_2

    .line 3607
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 3608
    const/4 v11, 0x0

    .line 3612
    :cond_2
    return-object v19

    .line 3318
    .restart local v10    # "attributesCursor":Landroid/database/Cursor;
    .restart local v15    # "keyColumn":I
    .restart local v29    # "valueColumn":I
    :cond_3
    :try_start_3
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 3319
    .local v14, "key":Ljava/lang/String;
    move/from16 v0, v29

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 3321
    .local v28, "value":Ljava/lang/String;
    sget-object v3, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_1:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3323
    const-string/jumbo v3, "c0"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 3342
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "keyColumn":I
    .end local v28    # "value":Ljava/lang/String;
    .end local v29    # "valueColumn":I
    :catchall_0
    move-exception v3

    .line 3343
    if-eqz v10, :cond_4

    .line 3345
    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 3346
    const/4 v10, 0x0

    .line 3348
    :cond_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3604
    .end local v10    # "attributesCursor":Landroid/database/Cursor;
    .end local v13    # "eventName":Ljava/lang/String;
    .end local v22    # "sessionId":J
    .end local v24    # "sessionStartTime":J
    .end local v26    # "sessionUuid":Ljava/lang/String;
    :catchall_1
    move-exception v3

    .line 3605
    if-eqz v11, :cond_5

    .line 3607
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 3608
    const/4 v11, 0x0

    .line 3610
    :cond_5
    throw v3

    .line 3325
    .restart local v10    # "attributesCursor":Landroid/database/Cursor;
    .restart local v13    # "eventName":Ljava/lang/String;
    .restart local v14    # "key":Ljava/lang/String;
    .restart local v15    # "keyColumn":I
    .restart local v22    # "sessionId":J
    .restart local v24    # "sessionStartTime":J
    .restart local v26    # "sessionUuid":Ljava/lang/String;
    .restart local v28    # "value":Ljava/lang/String;
    .restart local v29    # "valueColumn":I
    :cond_6
    :try_start_5
    sget-object v3, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_2:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3327
    const-string/jumbo v3, "c1"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 3330
    :cond_7
    sget-object v3, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_3:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3332
    const-string/jumbo v3, "c2"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 3335
    :cond_8
    sget-object v3, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_4:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3337
    const-string/jumbo v3, "c3"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 3350
    .end local v10    # "attributesCursor":Landroid/database/Cursor;
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "keyColumn":I
    .end local v28    # "value":Ljava/lang/String;
    .end local v29    # "valueColumn":I
    :cond_9
    :try_start_6
    sget-object v3, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->CLOSE_EVENT:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 3352
    const-string/jumbo v3, "dt"

    const-string/jumbo v4, "c"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3353
    const-string/jumbo v3, "u"

    const-string/jumbo v4, "uuid"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3354
    const-string/jumbo v3, "su"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3355
    const-string/jumbo v3, "ss"

    move-wide/from16 v0, v24

    long-to-double v4, v0

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 3356
    const-string/jumbo v3, "ct"

    const-string/jumbo v4, "wall_time"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    long-to-double v4, v4

    .line 3357
    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    .line 3356
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3362
    const/16 v21, 0x0

    .line 3365
    .local v21, "sessionCursor":Landroid/database/Cursor;
    :try_start_7
    const-string/jumbo v4, "sessions"

    .line 3366
    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v6, "session_start_wall_time"

    aput-object v6, v5, v3

    const-string/jumbo v3, "%s = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "_id"

    aput-object v8, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v8, "session_key_ref"

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v8, 0x0

    move-object/from16 v3, p0

    .line 3365
    invoke-virtual/range {v3 .. v8}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 3368
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 3370
    const-string/jumbo v3, "ctl"

    const-string/jumbo v4, "wall_time"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    long-to-double v4, v4

    .line 3371
    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    .line 3370
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    .line 3372
    const-string/jumbo v6, "session_start_wall_time"

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    long-to-double v6, v6

    .line 3373
    const-wide v30, 0x408f400000000000L    # 1000.0

    .line 3372
    div-double v6, v6, v30

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 3370
    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 3383
    if-eqz v21, :cond_a

    .line 3385
    :try_start_8
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 3386
    const/16 v21, 0x0

    .line 3393
    :cond_a
    const/4 v12, 0x0

    .line 3396
    .local v12, "eventHistoryCursor":Landroid/database/Cursor;
    :try_start_9
    const-string/jumbo v4, "event_history"

    .line 3397
    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v6, "name"

    aput-object v6, v5, v3

    const-string/jumbo v3, "%s = ? AND %s = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "session_key_ref"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "type"

    aput-object v8, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v3, 0x1

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    const-string/jumbo v8, "_id"

    move-object/from16 v3, p0

    .line 3396
    invoke-virtual/range {v3 .. v8}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 3399
    new-instance v20, Lorg/json/JSONArray;

    invoke-direct/range {v20 .. v20}, Lorg/json/JSONArray;-><init>()V

    .line 3400
    .local v20, "screens":Lorg/json/JSONArray;
    :goto_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_10

    .line 3405
    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_b

    .line 3407
    const-string/jumbo v3, "fl"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 3412
    :cond_b
    if-eqz v12, :cond_c

    .line 3414
    :try_start_a
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 3415
    const/4 v12, 0x0

    .line 3422
    :cond_c
    const/4 v10, 0x0

    .line 3425
    .restart local v10    # "attributesCursor":Landroid/database/Cursor;
    :try_start_b
    const-string/jumbo v4, "attributes"

    const/4 v5, 0x0

    const-string/jumbo v3, "%s = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "events_key_ref"

    aput-object v8, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 3427
    const-string/jumbo v3, "attribute_key"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 3428
    .restart local v15    # "keyColumn":I
    const-string/jumbo v3, "attribute_value"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    .line 3429
    .restart local v29    # "valueColumn":I
    :cond_d
    :goto_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    move-result v3

    if-nez v3, :cond_12

    .line 3456
    if-eqz v10, :cond_1

    .line 3458
    :try_start_c
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_1

    .line 3378
    .end local v10    # "attributesCursor":Landroid/database/Cursor;
    .end local v12    # "eventHistoryCursor":Landroid/database/Cursor;
    .end local v15    # "keyColumn":I
    .end local v20    # "screens":Lorg/json/JSONArray;
    .end local v29    # "valueColumn":I
    :cond_e
    :try_start_d
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Session didn\'t exist"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 3382
    :catchall_2
    move-exception v3

    .line 3383
    if-eqz v21, :cond_f

    .line 3385
    :try_start_e
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 3386
    const/16 v21, 0x0

    .line 3388
    :cond_f
    throw v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 3402
    .restart local v12    # "eventHistoryCursor":Landroid/database/Cursor;
    .restart local v20    # "screens":Lorg/json/JSONArray;
    :cond_10
    :try_start_f
    const-string/jumbo v3, "name"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto :goto_2

    .line 3411
    .end local v20    # "screens":Lorg/json/JSONArray;
    :catchall_3
    move-exception v3

    .line 3412
    if-eqz v12, :cond_11

    .line 3414
    :try_start_10
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 3415
    const/4 v12, 0x0

    .line 3417
    :cond_11
    throw v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 3431
    .restart local v10    # "attributesCursor":Landroid/database/Cursor;
    .restart local v15    # "keyColumn":I
    .restart local v20    # "screens":Lorg/json/JSONArray;
    .restart local v29    # "valueColumn":I
    :cond_12
    :try_start_11
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 3432
    .restart local v14    # "key":Ljava/lang/String;
    move/from16 v0, v29

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 3434
    .restart local v28    # "value":Ljava/lang/String;
    sget-object v3, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_1:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 3436
    const-string/jumbo v3, "c0"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    goto :goto_3

    .line 3455
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "keyColumn":I
    .end local v28    # "value":Ljava/lang/String;
    .end local v29    # "valueColumn":I
    :catchall_4
    move-exception v3

    .line 3456
    if-eqz v10, :cond_13

    .line 3458
    :try_start_12
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 3459
    const/4 v10, 0x0

    .line 3461
    :cond_13
    throw v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 3438
    .restart local v14    # "key":Ljava/lang/String;
    .restart local v15    # "keyColumn":I
    .restart local v28    # "value":Ljava/lang/String;
    .restart local v29    # "valueColumn":I
    :cond_14
    :try_start_13
    sget-object v3, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_2:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 3440
    const-string/jumbo v3, "c1"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 3443
    :cond_15
    sget-object v3, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_3:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 3445
    const-string/jumbo v3, "c2"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_3

    .line 3448
    :cond_16
    sget-object v3, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_4:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 3450
    const-string/jumbo v3, "c3"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    goto/16 :goto_3

    .line 3463
    .end local v10    # "attributesCursor":Landroid/database/Cursor;
    .end local v12    # "eventHistoryCursor":Landroid/database/Cursor;
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "keyColumn":I
    .end local v20    # "screens":Lorg/json/JSONArray;
    .end local v21    # "sessionCursor":Landroid/database/Cursor;
    .end local v28    # "value":Ljava/lang/String;
    .end local v29    # "valueColumn":I
    :cond_17
    :try_start_14
    sget-object v3, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->OPT_IN_EVENT:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    sget-object v3, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->OPT_OUT_EVENT:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 3465
    :cond_18
    const-string/jumbo v3, "dt"

    const-string/jumbo v4, "o"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3466
    const-string/jumbo v3, "u"

    move-object/from16 v0, v19

    move-object/from16 v1, p6

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3467
    const-string/jumbo v4, "out"

    sget-object v3, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->OPT_OUT_EVENT:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3468
    const-string/jumbo v3, "ct"

    const-string/jumbo v4, "wall_time"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    long-to-double v4, v4

    .line 3469
    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    .line 3468
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 3467
    :cond_19
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 3471
    :cond_1a
    sget-object v3, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->FLOW_EVENT:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 3473
    const-string/jumbo v3, "dt"

    const-string/jumbo v4, "f"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3474
    const-string/jumbo v3, "u"

    const-string/jumbo v4, "uuid"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3475
    const-string/jumbo v3, "ss"

    move-wide/from16 v0, v24

    long-to-double v4, v0

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 3484
    const/4 v12, 0x0

    .line 3487
    .restart local v12    # "eventHistoryCursor":Landroid/database/Cursor;
    :try_start_15
    const-string/jumbo v4, "event_history"

    .line 3488
    const/4 v3, 0x3

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 3489
    const-string/jumbo v6, "type"

    aput-object v6, v5, v3

    const/4 v3, 0x1

    .line 3490
    const-string/jumbo v6, "processed_in_blob"

    aput-object v6, v5, v3

    const/4 v3, 0x2

    .line 3491
    const-string/jumbo v6, "name"

    aput-object v6, v5, v3

    const-string/jumbo v3, "%s = ? AND %s <= ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "session_key_ref"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "processed_in_blob"

    aput-object v8, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v3, 0x1

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    const-string/jumbo v8, "_id"

    move-object/from16 v3, p0

    .line 3487
    invoke-virtual/range {v3 .. v8}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 3493
    new-instance v17, Lorg/json/JSONArray;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONArray;-><init>()V

    .line 3494
    .local v17, "newScreens":Lorg/json/JSONArray;
    new-instance v18, Lorg/json/JSONArray;

    invoke-direct/range {v18 .. v18}, Lorg/json/JSONArray;-><init>()V

    .line 3495
    .local v18, "oldScreens":Lorg/json/JSONArray;
    :goto_5
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 3518
    const-string/jumbo v3, "nw"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3519
    const-string/jumbo v3, "od"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    .line 3523
    if-eqz v12, :cond_1

    .line 3525
    :try_start_16
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    goto/16 :goto_1

    .line 3497
    :cond_1b
    :try_start_17
    const-string/jumbo v3, "name"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 3499
    .local v16, "name":Ljava/lang/String;
    const-string/jumbo v3, "type"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_1d

    .line 3501
    const-string/jumbo v27, "e"

    .line 3508
    .local v27, "type":Ljava/lang/String;
    :goto_6
    const-string/jumbo v3, "processed_in_blob"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    cmp-long v3, p4, v3

    if-nez v3, :cond_1e

    .line 3510
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    goto :goto_5

    .line 3522
    .end local v16    # "name":Ljava/lang/String;
    .end local v17    # "newScreens":Lorg/json/JSONArray;
    .end local v18    # "oldScreens":Lorg/json/JSONArray;
    .end local v27    # "type":Ljava/lang/String;
    :catchall_5
    move-exception v3

    .line 3523
    if-eqz v12, :cond_1c

    .line 3525
    :try_start_18
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 3526
    const/4 v12, 0x0

    .line 3528
    :cond_1c
    throw v3
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    .line 3505
    .restart local v16    # "name":Ljava/lang/String;
    .restart local v17    # "newScreens":Lorg/json/JSONArray;
    .restart local v18    # "oldScreens":Lorg/json/JSONArray;
    :cond_1d
    :try_start_19
    const-string/jumbo v27, "s"

    .restart local v27    # "type":Ljava/lang/String;
    goto :goto_6

    .line 3514
    :cond_1e
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    goto :goto_5

    .line 3536
    .end local v12    # "eventHistoryCursor":Landroid/database/Cursor;
    .end local v16    # "name":Ljava/lang/String;
    .end local v17    # "newScreens":Lorg/json/JSONArray;
    .end local v18    # "oldScreens":Lorg/json/JSONArray;
    .end local v27    # "type":Ljava/lang/String;
    :cond_1f
    :try_start_1a
    const-string/jumbo v3, "dt"

    const-string/jumbo v4, "e"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3537
    const-string/jumbo v3, "ct"

    const-string/jumbo v4, "wall_time"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    long-to-double v4, v4

    .line 3538
    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    .line 3537
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 3539
    const-string/jumbo v3, "u"

    const-string/jumbo v4, "uuid"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3540
    const-string/jumbo v3, "su"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3541
    const-string/jumbo v3, "n"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v13, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    .line 3546
    const/4 v10, 0x0

    .line 3549
    .restart local v10    # "attributesCursor":Landroid/database/Cursor;
    :try_start_1b
    const-string/jumbo v4, "attributes"

    const/4 v5, 0x0

    const-string/jumbo v3, "%s = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "events_key_ref"

    aput-object v8, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 3551
    const-string/jumbo v3, "attribute_key"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 3552
    .restart local v15    # "keyColumn":I
    const-string/jumbo v3, "attribute_value"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    .line 3553
    .restart local v29    # "valueColumn":I
    :cond_20
    :goto_7
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    move-result v3

    if-nez v3, :cond_22

    .line 3580
    if-eqz v10, :cond_21

    .line 3582
    :try_start_1c
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 3583
    const/4 v10, 0x0

    .line 3587
    :cond_21
    invoke-static/range {p0 .. p3}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$UploadHandler;->convertAttributesToJson(Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;Landroid/content/Context;J)Lorg/json/JSONObject;

    move-result-object v9

    .line 3589
    .local v9, "attributes":Lorg/json/JSONObject;
    if-eqz v9, :cond_1

    .line 3591
    const-string/jumbo v3, "attrs"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    goto/16 :goto_1

    .line 3555
    .end local v9    # "attributes":Lorg/json/JSONObject;
    :cond_22
    :try_start_1d
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 3556
    .restart local v14    # "key":Ljava/lang/String;
    move/from16 v0, v29

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 3558
    .restart local v28    # "value":Ljava/lang/String;
    sget-object v3, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_1:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 3560
    const-string/jumbo v3, "c0"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    goto :goto_7

    .line 3579
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "keyColumn":I
    .end local v28    # "value":Ljava/lang/String;
    .end local v29    # "valueColumn":I
    :catchall_6
    move-exception v3

    .line 3580
    if-eqz v10, :cond_23

    .line 3582
    :try_start_1e
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 3583
    const/4 v10, 0x0

    .line 3585
    :cond_23
    throw v3
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    .line 3562
    .restart local v14    # "key":Ljava/lang/String;
    .restart local v15    # "keyColumn":I
    .restart local v28    # "value":Ljava/lang/String;
    .restart local v29    # "valueColumn":I
    :cond_24
    :try_start_1f
    sget-object v3, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_2:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 3564
    const-string/jumbo v3, "c1"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_7

    .line 3567
    :cond_25
    sget-object v3, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_3:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 3569
    const-string/jumbo v3, "c2"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_7

    .line 3572
    :cond_26
    sget-object v3, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_4:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 3574
    const-string/jumbo v3, "c3"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    goto :goto_7

    .line 3600
    .end local v10    # "attributesCursor":Landroid/database/Cursor;
    .end local v13    # "eventName":Ljava/lang/String;
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "keyColumn":I
    .end local v22    # "sessionId":J
    .end local v24    # "sessionStartTime":J
    .end local v26    # "sessionUuid":Ljava/lang/String;
    .end local v28    # "value":Ljava/lang/String;
    .end local v29    # "valueColumn":I
    :cond_27
    :try_start_20
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    throw v3
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1
.end method

.method static deleteBlobsAndSessions(Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;)V
    .locals 24
    .param p0, "provider"    # Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    .prologue
    .line 3063
    new-instance v20, Ljava/util/LinkedList;

    invoke-direct/range {v20 .. v20}, Ljava/util/LinkedList;-><init>()V

    .line 3064
    .local v20, "sessionsToDelete":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 3066
    .local v13, "blobsToDelete":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    const/4 v10, 0x0

    .line 3069
    .local v10, "blobEvents":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v2, "upload_blob_events"

    .line 3070
    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 3071
    const-string/jumbo v4, "_id"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    .line 3072
    const-string/jumbo v4, "events_key_ref"

    aput-object v4, v3, v1

    const/4 v1, 0x2

    .line 3073
    const-string/jumbo v4, "upload_blobs_key_ref"

    aput-object v4, v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    .line 3069
    invoke-virtual/range {v1 .. v6}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 3075
    const-string/jumbo v1, "upload_blobs_key_ref"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 3076
    .local v21, "uploadBlobIdColumn":I
    const-string/jumbo v1, "_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 3077
    .local v9, "blobEventIdColumn":I
    const-string/jumbo v1, "events_key_ref"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 3078
    .local v17, "eventIdColumn":I
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 3132
    if-eqz v10, :cond_0

    .line 3134
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 3135
    const/4 v10, 0x0

    .line 3140
    :cond_0
    invoke-virtual {v13}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    .line 3146
    invoke-virtual/range {v20 .. v20}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_7

    .line 3151
    return-void

    .line 3080
    :cond_1
    :try_start_1
    move/from16 v0, v21

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 3081
    .local v11, "blobId":J
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 3082
    .local v7, "blobEventId":J
    move/from16 v0, v17

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 3085
    .local v15, "eventId":J
    const-string/jumbo v1, "upload_blob_events"

    const-string/jumbo v2, "%s = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "_id"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3090
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3093
    const-string/jumbo v1, "attributes"

    const-string/jumbo v2, "%s = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "events_key_ref"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3098
    const/4 v14, 0x0

    .line 3101
    .local v14, "eventCursor":Landroid/database/Cursor;
    :try_start_2
    const-string/jumbo v2, "events"

    .line 3102
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v4, "session_key_ref"

    aput-object v4, v3, v1

    const-string/jumbo v1, "%s = ? AND %s = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "event_name"

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 3103
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 3104
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x1

    .line 3105
    sget-object v6, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->CLOSE_EVENT:Ljava/lang/String;

    aput-object v6, v5, v1

    const/4 v6, 0x0

    move-object/from16 v1, p0

    .line 3101
    invoke-virtual/range {v1 .. v6}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 3107
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3109
    const-string/jumbo v1, "session_key_ref"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 3111
    .local v18, "sessionId":J
    const-string/jumbo v1, "event_history"

    const-string/jumbo v2, "%s = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "session_key_ref"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 3112
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 3111
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3114
    const-string/jumbo v1, "session_key_ref"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3119
    .end local v18    # "sessionId":J
    :cond_2
    if-eqz v14, :cond_3

    .line 3121
    :try_start_3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 3122
    const/4 v14, 0x0

    .line 3127
    :cond_3
    const-string/jumbo v1, "events"

    const-string/jumbo v2, "%s = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "_id"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 3131
    .end local v7    # "blobEventId":J
    .end local v9    # "blobEventIdColumn":I
    .end local v11    # "blobId":J
    .end local v14    # "eventCursor":Landroid/database/Cursor;
    .end local v15    # "eventId":J
    .end local v17    # "eventIdColumn":I
    .end local v21    # "uploadBlobIdColumn":I
    :catchall_0
    move-exception v1

    .line 3132
    if-eqz v10, :cond_4

    .line 3134
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 3135
    const/4 v10, 0x0

    .line 3137
    :cond_4
    throw v1

    .line 3118
    .restart local v7    # "blobEventId":J
    .restart local v9    # "blobEventIdColumn":I
    .restart local v11    # "blobId":J
    .restart local v14    # "eventCursor":Landroid/database/Cursor;
    .restart local v15    # "eventId":J
    .restart local v17    # "eventIdColumn":I
    .restart local v21    # "uploadBlobIdColumn":I
    :catchall_1
    move-exception v1

    .line 3119
    if-eqz v14, :cond_5

    .line 3121
    :try_start_4
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 3122
    const/4 v14, 0x0

    .line 3124
    :cond_5
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3140
    .end local v7    # "blobEventId":J
    .end local v11    # "blobId":J
    .end local v14    # "eventCursor":Landroid/database/Cursor;
    .end local v15    # "eventId":J
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    .line 3142
    .local v22, "x":J
    const-string/jumbo v1, "upload_blobs"

    const-string/jumbo v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "_id"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3, v4}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3146
    .end local v22    # "x":J
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    .line 3148
    .restart local v22    # "x":J
    const-string/jumbo v1, "sessions"

    const-string/jumbo v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "_id"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3, v4}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method static getApiKeyCreationTime(Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;Ljava/lang/String;)J
    .locals 7
    .param p0, "provider"    # Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3163
    const/4 v6, 0x0

    .line 3166
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v1, "api_keys"

    const/4 v2, 0x0

    const-string/jumbo v0, "%s = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "api_key"

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3168
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3170
    const-string/jumbo v0, "created_time"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    int-to-long v0, v0

    .line 3180
    if-eqz v6, :cond_0

    .line 3182
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3183
    const/4 v6, 0x0

    .line 3170
    :cond_0
    return-wide v0

    .line 3176
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "API key entry couldn\'t be found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3179
    :catchall_0
    move-exception v0

    .line 3180
    if-eqz v6, :cond_2

    .line 3182
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3183
    const/4 v6, 0x0

    .line 3185
    :cond_2
    throw v0
.end method

.method static getAttributesFromSession(Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;Ljava/lang/String;J)Lorg/json/JSONObject;
    .locals 9
    .param p0, "provider"    # Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;
    .param p1, "apiKey"    # Ljava/lang/String;
    .param p2, "sessionId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 3199
    const/4 v6, 0x0

    .line 3202
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v1, "sessions"

    const/4 v2, 0x0

    const-string/jumbo v0, "%s = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "_id"

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3204
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3206
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 3207
    .local v8, "result":Lorg/json/JSONObject;
    const-string/jumbo v0, "av"

    const-string/jumbo v1, "app_version"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3208
    const-string/jumbo v0, "dac"

    const-string/jumbo v1, "network_type"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3209
    const-string/jumbo v0, "du"

    const-string/jumbo v1, "device_android_id_hash"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3210
    const-string/jumbo v0, "dc"

    const-string/jumbo v1, "device_country"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3211
    const-string/jumbo v0, "dma"

    const-string/jumbo v1, "device_manufacturer"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3212
    const-string/jumbo v0, "dmo"

    const-string/jumbo v1, "device_model"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3213
    const-string/jumbo v0, "dov"

    const-string/jumbo v1, "android_version"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3214
    const-string/jumbo v0, "dp"

    const-string/jumbo v1, "Android"

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3215
    const-string/jumbo v1, "dms"

    const-string/jumbo v0, "device_serial_number_hash"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v8, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3217
    const-string/jumbo v0, "dsdk"

    const-string/jumbo v1, "android_sdk"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3220
    const-string/jumbo v1, "tdid"

    const-string/jumbo v0, "device_telephony_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_1
    invoke-virtual {v8, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3228
    const-string/jumbo v1, "wmac"

    const-string/jumbo v0, "device_wifi_mac_hash"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_2
    invoke-virtual {v8, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3230
    const-string/jumbo v0, "au"

    invoke-virtual {v8, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3231
    const-string/jumbo v0, "lv"

    const-string/jumbo v1, "localytics_library_version"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3232
    const-string/jumbo v0, "dt"

    const-string/jumbo v1, "a"

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3235
    const-string/jumbo v0, "iu"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3236
    .local v7, "installationID":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 3238
    const-string/jumbo v0, "iu"

    invoke-virtual {v8, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3240
    :cond_0
    const-string/jumbo v0, "dlc"

    const-string/jumbo v1, "locale_country"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3241
    const-string/jumbo v0, "dll"

    const-string/jumbo v1, "locale_language"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3242
    const-string/jumbo v0, "nca"

    const-string/jumbo v1, "network_carrier"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3243
    const-string/jumbo v0, "nc"

    const-string/jumbo v1, "network_country"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3252
    if-eqz v6, :cond_1

    .line 3254
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3255
    const/4 v6, 0x0

    .line 3245
    :cond_1
    return-object v8

    .line 3216
    .end local v7    # "installationID":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string/jumbo v0, "device_serial_number_hash"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3221
    :cond_3
    const-string/jumbo v0, "device_telephony_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 3229
    :cond_4
    const-string/jumbo v0, "device_wifi_mac_hash"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 3248
    .end local v8    # "result":Lorg/json/JSONObject;
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "No session exists"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3251
    :catchall_0
    move-exception v0

    .line 3252
    if-eqz v6, :cond_6

    .line 3254
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3255
    const/4 v6, 0x0

    .line 3257
    :cond_6
    throw v0
.end method

.method static getSessionIdForBlobId(Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;J)J
    .locals 11
    .param p0, "provider"    # Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;
    .param p1, "blobId"    # J

    .prologue
    .line 3780
    const/4 v6, 0x0

    .line 3783
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v1, "upload_blob_events"

    .line 3784
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "events_key_ref"

    aput-object v3, v2, v0

    const-string/jumbo v0, "%s = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "upload_blobs_key_ref"

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 3785
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    .line 3783
    invoke-virtual/range {v0 .. v5}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3787
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3789
    const-string/jumbo v0, "events_key_ref"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v7

    .line 3801
    .local v7, "eventId":J
    if-eqz v6, :cond_0

    .line 3803
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3811
    :cond_0
    const/4 v6, 0x0

    .line 3814
    :try_start_1
    const-string/jumbo v1, "events"

    .line 3815
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "session_key_ref"

    aput-object v3, v2, v0

    const-string/jumbo v0, "%s = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "_id"

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 3816
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    .line 3814
    invoke-virtual/range {v0 .. v5}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3818
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3820
    const-string/jumbo v0, "session_key_ref"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v9

    .line 3832
    .local v9, "sessionId":J
    if-eqz v6, :cond_1

    .line 3834
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3840
    :cond_1
    return-wide v9

    .line 3796
    .end local v7    # "eventId":J
    .end local v9    # "sessionId":J
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "No events associated with blob"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3800
    :catchall_0
    move-exception v0

    .line 3801
    if-eqz v6, :cond_3

    .line 3803
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3804
    const/4 v6, 0x0

    .line 3806
    :cond_3
    throw v0

    .line 3827
    .restart local v7    # "eventId":J
    :cond_4
    :try_start_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "No session associated with event"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3831
    :catchall_1
    move-exception v0

    .line 3832
    if-eqz v6, :cond_5

    .line 3834
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3835
    const/4 v6, 0x0

    .line 3837
    :cond_5
    throw v0
.end method

.method static getSessionIdForEventId(Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;J)J
    .locals 7
    .param p0, "provider"    # Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;
    .param p1, "eventId"    # J

    .prologue
    .line 3624
    const/4 v6, 0x0

    .line 3627
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v1, "events"

    .line 3628
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "session_key_ref"

    aput-object v3, v2, v0

    const-string/jumbo v0, "%s = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "_id"

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    .line 3627
    invoke-virtual/range {v0 .. v5}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3630
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3632
    const-string/jumbo v0, "session_key_ref"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 3642
    if-eqz v6, :cond_0

    .line 3644
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3645
    const/4 v6, 0x0

    .line 3632
    :cond_0
    return-wide v0

    .line 3638
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3641
    :catchall_0
    move-exception v0

    .line 3642
    if-eqz v6, :cond_2

    .line 3644
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3645
    const/4 v6, 0x0

    .line 3647
    :cond_2
    throw v0
.end method

.method static getSessionStartTime(Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;J)J
    .locals 7
    .param p0, "provider"    # Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;
    .param p1, "sessionId"    # J

    .prologue
    .line 3694
    const/4 v6, 0x0

    .line 3697
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v1, "sessions"

    .line 3698
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "session_start_wall_time"

    aput-object v3, v2, v0

    const-string/jumbo v0, "%s = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "_id"

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    .line 3697
    invoke-virtual/range {v0 .. v5}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3700
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3702
    const-string/jumbo v0, "session_start_wall_time"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 3712
    if-eqz v6, :cond_0

    .line 3714
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3715
    const/4 v6, 0x0

    .line 3702
    :cond_0
    return-wide v0

    .line 3708
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3711
    :catchall_0
    move-exception v0

    .line 3712
    if-eqz v6, :cond_2

    .line 3714
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3715
    const/4 v6, 0x0

    .line 3717
    :cond_2
    throw v0
.end method

.method static getSessionUuid(Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;J)Ljava/lang/String;
    .locals 7
    .param p0, "provider"    # Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;
    .param p1, "sessionId"    # J

    .prologue
    .line 3659
    const/4 v6, 0x0

    .line 3662
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v1, "sessions"

    .line 3663
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "uuid"

    aput-object v3, v2, v0

    const-string/jumbo v0, "%s = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "_id"

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    .line 3662
    invoke-virtual/range {v0 .. v5}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3665
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3667
    const-string/jumbo v0, "uuid"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 3677
    if-eqz v6, :cond_0

    .line 3679
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3680
    const/4 v6, 0x0

    .line 3667
    :cond_0
    return-object v0

    .line 3673
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3676
    :catchall_0
    move-exception v0

    .line 3677
    if-eqz v6, :cond_2

    .line 3679
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3680
    const/4 v6, 0x0

    .line 3682
    :cond_2
    throw v0
.end method

.method static uploadSessions(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 19
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 2758
    invoke-static {}, Lcom/aviary/android/feather/library/external/tracking/DatapointHelper;->getApiLevel()I

    move-result v17

    const/16 v18, 0x9

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_b

    .line 2765
    const/4 v7, 0x0

    .line 2768
    .local v7, "gos":Ljava/util/zip/GZIPOutputStream;
    :try_start_0
    const-string/jumbo v17, "UTF-8"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    .line 2769
    .local v10, "originalBytes":[B
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    array-length v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-direct {v2, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2770
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v8, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v8, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2771
    .end local v7    # "gos":Ljava/util/zip/GZIPOutputStream;
    .local v8, "gos":Ljava/util/zip/GZIPOutputStream;
    :try_start_1
    invoke-virtual {v8, v10}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 2772
    invoke-virtual {v8}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 2773
    invoke-virtual {v8}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 2775
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_14
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-result-object v5

    .line 2795
    .local v5, "data":[B
    if-eqz v8, :cond_12

    .line 2799
    :try_start_2
    invoke-virtual {v8}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 2800
    const/4 v7, 0x0

    .line 2815
    .end local v8    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v7    # "gos":Ljava/util/zip/GZIPOutputStream;
    :goto_0
    const/4 v4, 0x0

    .line 2818
    .local v4, "connection":Ljava/net/HttpURLConnection;
    :try_start_3
    new-instance v17, Ljava/net/URL;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    .line 2820
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 2821
    const-string/jumbo v17, "Content-Type"

    const-string/jumbo v18, "application/x-gzip"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2822
    array-length v0, v5

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2824
    const/16 v16, 0x0

    .line 2827
    .local v16, "stream":Ljava/io/OutputStream;
    :try_start_4
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v16

    .line 2829
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/io/OutputStream;->write([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2833
    if-eqz v16, :cond_0

    .line 2835
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->flush()V

    .line 2836
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V

    .line 2837
    const/16 v16, 0x0

    .line 2841
    :cond_0
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result v13

    .line 2850
    .local v13, "responseCode":I
    const/16 v17, 0x1f4

    move/from16 v0, v17

    if-lt v13, v0, :cond_9

    const/16 v17, 0x257

    move/from16 v0, v17

    if-gt v13, v0, :cond_9

    .line 2876
    if-eqz v4, :cond_1

    .line 2878
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 2879
    const/4 v4, 0x0

    .line 2852
    :cond_1
    const/16 v17, 0x0

    .line 2968
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "connection":Ljava/net/HttpURLConnection;
    .end local v5    # "data":[B
    .end local v7    # "gos":Ljava/util/zip/GZIPOutputStream;
    .end local v10    # "originalBytes":[B
    .end local v13    # "responseCode":I
    .end local v16    # "stream":Ljava/io/OutputStream;
    :goto_1
    return v17

    .line 2777
    .restart local v7    # "gos":Ljava/util/zip/GZIPOutputStream;
    :catch_0
    move-exception v6

    .line 2795
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    :goto_2
    if-eqz v7, :cond_2

    .line 2799
    :try_start_6
    invoke-virtual {v7}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 2800
    const/4 v7, 0x0

    .line 2783
    :cond_2
    const/16 v17, 0x0

    goto :goto_1

    .line 2802
    :catch_1
    move-exception v6

    .line 2809
    .local v6, "e":Ljava/io/IOException;
    const/16 v17, 0x0

    goto :goto_1

    .line 2785
    .end local v6    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v6

    .line 2795
    .restart local v6    # "e":Ljava/io/IOException;
    :goto_3
    if-eqz v7, :cond_3

    .line 2799
    :try_start_7
    invoke-virtual {v7}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 2800
    const/4 v7, 0x0

    .line 2791
    :cond_3
    const/16 v17, 0x0

    goto :goto_1

    .line 2802
    :catch_3
    move-exception v6

    .line 2809
    const/16 v17, 0x0

    goto :goto_1

    .line 2794
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v17

    .line 2795
    :goto_4
    if-eqz v7, :cond_4

    .line 2799
    :try_start_8
    invoke-virtual {v7}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 2800
    const/4 v7, 0x0

    .line 2812
    :cond_4
    throw v17

    .line 2802
    :catch_4
    move-exception v6

    .line 2809
    .restart local v6    # "e":Ljava/io/IOException;
    const/16 v17, 0x0

    goto :goto_1

    .line 2802
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "data":[B
    .restart local v8    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v10    # "originalBytes":[B
    :catch_5
    move-exception v6

    .line 2809
    .restart local v6    # "e":Ljava/io/IOException;
    const/16 v17, 0x0

    goto :goto_1

    .line 2832
    .end local v6    # "e":Ljava/io/IOException;
    .end local v8    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v4    # "connection":Ljava/net/HttpURLConnection;
    .restart local v7    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v16    # "stream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v17

    .line 2833
    if-eqz v16, :cond_5

    .line 2835
    :try_start_9
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->flush()V

    .line 2836
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V

    .line 2837
    const/16 v16, 0x0

    .line 2839
    :cond_5
    throw v17
    :try_end_9
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 2855
    .end local v16    # "stream":Ljava/io/OutputStream;
    :catch_6
    move-exception v6

    .line 2876
    .local v6, "e":Ljava/net/MalformedURLException;
    if-eqz v4, :cond_6

    .line 2878
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 2879
    const/4 v4, 0x0

    .line 2862
    :cond_6
    const/16 v17, 0x0

    goto :goto_1

    .line 2864
    .end local v6    # "e":Ljava/net/MalformedURLException;
    :catch_7
    move-exception v6

    .line 2876
    .local v6, "e":Ljava/io/IOException;
    if-eqz v4, :cond_7

    .line 2878
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 2879
    const/4 v4, 0x0

    .line 2871
    :cond_7
    const/16 v17, 0x0

    goto :goto_1

    .line 2875
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v17

    .line 2876
    if-eqz v4, :cond_8

    .line 2878
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 2879
    const/4 v4, 0x0

    .line 2881
    :cond_8
    throw v17

    .line 2876
    .restart local v13    # "responseCode":I
    .restart local v16    # "stream":Ljava/io/OutputStream;
    :cond_9
    if-eqz v4, :cond_a

    .line 2878
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 2968
    .end local v4    # "connection":Ljava/net/HttpURLConnection;
    .end local v5    # "data":[B
    .end local v7    # "gos":Ljava/util/zip/GZIPOutputStream;
    .end local v13    # "responseCode":I
    .end local v16    # "stream":Ljava/io/OutputStream;
    :cond_a
    :goto_5
    const/16 v17, 0x1

    goto :goto_1

    .line 2890
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v10    # "originalBytes":[B
    :cond_b
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 2891
    .local v3, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v9, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 2892
    .local v9, "method":Lorg/apache/http/client/methods/HttpPost;
    const-string/jumbo v17, "Content-Type"

    const-string/jumbo v18, "application/x-gzip"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2894
    const/4 v7, 0x0

    .line 2897
    .restart local v7    # "gos":Ljava/util/zip/GZIPOutputStream;
    :try_start_a
    const-string/jumbo v17, "UTF-8"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    .line 2898
    .restart local v10    # "originalBytes":[B
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    array-length v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-direct {v2, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2899
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v8, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v8, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_a} :catch_9
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 2900
    .end local v7    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v8    # "gos":Ljava/util/zip/GZIPOutputStream;
    :try_start_b
    invoke-virtual {v8, v10}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 2901
    invoke-virtual {v8}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 2902
    invoke-virtual {v8}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 2904
    new-instance v11, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 2905
    .local v11, "postBody":Lorg/apache/http/entity/ByteArrayEntity;
    invoke-virtual {v9, v11}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 2907
    invoke-virtual {v3, v9}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v12

    .line 2909
    .local v12, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    .line 2910
    .local v14, "status":Lorg/apache/http/StatusLine;
    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b .. :try_end_b} :catch_13
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_b .. :try_end_b} :catch_12
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_11
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    move-result v15

    .line 2919
    .local v15, "statusCode":I
    const/16 v17, 0x1f4

    move/from16 v0, v17

    if-lt v15, v0, :cond_10

    const/16 v17, 0x257

    move/from16 v0, v17

    if-gt v15, v0, :cond_10

    .line 2950
    if-eqz v8, :cond_11

    .line 2954
    :try_start_c
    invoke-virtual {v8}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 2955
    const/4 v7, 0x0

    .line 2921
    .end local v8    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v7    # "gos":Ljava/util/zip/GZIPOutputStream;
    :goto_6
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 2957
    .end local v7    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v8    # "gos":Ljava/util/zip/GZIPOutputStream;
    :catch_8
    move-exception v17

    move-object v7, v8

    .end local v8    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v7    # "gos":Ljava/util/zip/GZIPOutputStream;
    goto :goto_6

    .line 2924
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v10    # "originalBytes":[B
    .end local v11    # "postBody":Lorg/apache/http/entity/ByteArrayEntity;
    .end local v12    # "response":Lorg/apache/http/HttpResponse;
    .end local v14    # "status":Lorg/apache/http/StatusLine;
    .end local v15    # "statusCode":I
    :catch_9
    move-exception v6

    .line 2950
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    :goto_7
    if-eqz v7, :cond_c

    .line 2954
    :try_start_d
    invoke-virtual {v7}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c

    .line 2955
    const/4 v7, 0x0

    .line 2930
    :cond_c
    :goto_8
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 2932
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_a
    move-exception v6

    .line 2950
    .local v6, "e":Lorg/apache/http/client/ClientProtocolException;
    :goto_9
    if-eqz v7, :cond_d

    .line 2954
    :try_start_e
    invoke-virtual {v7}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d

    .line 2955
    const/4 v7, 0x0

    .line 2938
    :cond_d
    :goto_a
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 2940
    .end local v6    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_b
    move-exception v6

    .line 2950
    .local v6, "e":Ljava/io/IOException;
    :goto_b
    if-eqz v7, :cond_e

    .line 2954
    :try_start_f
    invoke-virtual {v7}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_e

    .line 2955
    const/4 v7, 0x0

    .line 2946
    :cond_e
    :goto_c
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 2949
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v17

    .line 2950
    :goto_d
    if-eqz v7, :cond_f

    .line 2954
    :try_start_10
    invoke-virtual {v7}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_f

    .line 2955
    const/4 v7, 0x0

    .line 2965
    :cond_f
    :goto_e
    throw v17

    .line 2950
    .end local v7    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v10    # "originalBytes":[B
    .restart local v11    # "postBody":Lorg/apache/http/entity/ByteArrayEntity;
    .restart local v12    # "response":Lorg/apache/http/HttpResponse;
    .restart local v14    # "status":Lorg/apache/http/StatusLine;
    .restart local v15    # "statusCode":I
    :cond_10
    if-eqz v8, :cond_a

    .line 2954
    :try_start_11
    invoke-virtual {v8}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_10

    .line 2955
    const/4 v7, 0x0

    .end local v8    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v7    # "gos":Ljava/util/zip/GZIPOutputStream;
    goto/16 :goto_5

    .line 2957
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v10    # "originalBytes":[B
    .end local v11    # "postBody":Lorg/apache/http/entity/ByteArrayEntity;
    .end local v12    # "response":Lorg/apache/http/HttpResponse;
    .end local v14    # "status":Lorg/apache/http/StatusLine;
    .end local v15    # "statusCode":I
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    :catch_c
    move-exception v17

    goto :goto_8

    .local v6, "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_d
    move-exception v17

    goto :goto_a

    .local v6, "e":Ljava/io/IOException;
    :catch_e
    move-exception v17

    goto :goto_c

    .end local v6    # "e":Ljava/io/IOException;
    :catch_f
    move-exception v18

    goto :goto_e

    .end local v7    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v10    # "originalBytes":[B
    .restart local v11    # "postBody":Lorg/apache/http/entity/ByteArrayEntity;
    .restart local v12    # "response":Lorg/apache/http/HttpResponse;
    .restart local v14    # "status":Lorg/apache/http/StatusLine;
    .restart local v15    # "statusCode":I
    :catch_10
    move-exception v17

    goto/16 :goto_5

    .line 2949
    .end local v11    # "postBody":Lorg/apache/http/entity/ByteArrayEntity;
    .end local v12    # "response":Lorg/apache/http/HttpResponse;
    .end local v14    # "status":Lorg/apache/http/StatusLine;
    .end local v15    # "statusCode":I
    :catchall_4
    move-exception v17

    move-object v7, v8

    .end local v8    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v7    # "gos":Ljava/util/zip/GZIPOutputStream;
    goto :goto_d

    .line 2940
    .end local v7    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v8    # "gos":Ljava/util/zip/GZIPOutputStream;
    :catch_11
    move-exception v6

    move-object v7, v8

    .end local v8    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v7    # "gos":Ljava/util/zip/GZIPOutputStream;
    goto :goto_b

    .line 2932
    .end local v7    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v8    # "gos":Ljava/util/zip/GZIPOutputStream;
    :catch_12
    move-exception v6

    move-object v7, v8

    .end local v8    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v7    # "gos":Ljava/util/zip/GZIPOutputStream;
    goto :goto_9

    .line 2924
    .end local v7    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v8    # "gos":Ljava/util/zip/GZIPOutputStream;
    :catch_13
    move-exception v6

    move-object v7, v8

    .end local v8    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v7    # "gos":Ljava/util/zip/GZIPOutputStream;
    goto :goto_7

    .line 2794
    .end local v3    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v7    # "gos":Ljava/util/zip/GZIPOutputStream;
    .end local v9    # "method":Lorg/apache/http/client/methods/HttpPost;
    .restart local v8    # "gos":Ljava/util/zip/GZIPOutputStream;
    :catchall_5
    move-exception v17

    move-object v7, v8

    .end local v8    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v7    # "gos":Ljava/util/zip/GZIPOutputStream;
    goto/16 :goto_4

    .line 2785
    .end local v7    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v8    # "gos":Ljava/util/zip/GZIPOutputStream;
    :catch_14
    move-exception v6

    move-object v7, v8

    .end local v8    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v7    # "gos":Ljava/util/zip/GZIPOutputStream;
    goto/16 :goto_3

    .line 2777
    .end local v7    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v8    # "gos":Ljava/util/zip/GZIPOutputStream;
    :catch_15
    move-exception v6

    move-object v7, v8

    .end local v8    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v7    # "gos":Ljava/util/zip/GZIPOutputStream;
    goto/16 :goto_2

    .end local v7    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v8    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v9    # "method":Lorg/apache/http/client/methods/HttpPost;
    .restart local v11    # "postBody":Lorg/apache/http/entity/ByteArrayEntity;
    .restart local v12    # "response":Lorg/apache/http/HttpResponse;
    .restart local v14    # "status":Lorg/apache/http/StatusLine;
    .restart local v15    # "statusCode":I
    :cond_11
    move-object v7, v8

    .end local v8    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v7    # "gos":Ljava/util/zip/GZIPOutputStream;
    goto :goto_6

    .end local v3    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v7    # "gos":Ljava/util/zip/GZIPOutputStream;
    .end local v9    # "method":Lorg/apache/http/client/methods/HttpPost;
    .end local v11    # "postBody":Lorg/apache/http/entity/ByteArrayEntity;
    .end local v12    # "response":Lorg/apache/http/HttpResponse;
    .end local v14    # "status":Lorg/apache/http/StatusLine;
    .end local v15    # "statusCode":I
    .restart local v5    # "data":[B
    .restart local v8    # "gos":Ljava/util/zip/GZIPOutputStream;
    :cond_12
    move-object v7, v8

    .end local v8    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v7    # "gos":Ljava/util/zip/GZIPOutputStream;
    goto/16 :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2635
    :try_start_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2637
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 2706
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Fell through switch statement"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2710
    :catch_0
    move-exception v4

    .line 2722
    :goto_0
    return-void

    .line 2649
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2653
    .local v1, "callback":Ljava/lang/Runnable;
    :try_start_1
    iget-object v4, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$UploadHandler;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$UploadHandler;->mProvider:Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    iget-object v6, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$UploadHandler;->mApiKey:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$UploadHandler;->convertDatabaseToJson(Landroid/content/Context;Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 2655
    .local v3, "toUpload":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2658
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2664
    const-string/jumbo v4, "http://analytics.localytics.com/api/v2/applications/%s/uploads"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$UploadHandler;->mApiKey:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$UploadHandler;->uploadSessions(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2666
    iget-object v4, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$UploadHandler;->mProvider:Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    new-instance v5, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$UploadHandler$1;

    invoke-direct {v5, p0}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$UploadHandler$1;-><init>(Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$UploadHandler;)V

    invoke-virtual {v4, v5}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->runBatchTransaction(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2678
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_0
    if-eqz v1, :cond_1

    .line 2684
    :try_start_2
    new-instance v4, Ljava/lang/Thread;

    const-string/jumbo v5, "upload_callback"

    invoke-direct {v4, v1, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 2687
    :cond_1
    iget-object v4, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$UploadHandler;->mSessionHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 2658
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 2660
    .local v2, "json":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2661
    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2677
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "toUpload":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    :catchall_0
    move-exception v4

    .line 2678
    if-eqz v1, :cond_3

    .line 2684
    :try_start_4
    new-instance v5, Ljava/lang/Thread;

    const-string/jumbo v6, "upload_callback"

    invoke-direct {v5, v1, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 2687
    :cond_3
    iget-object v5, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$UploadHandler;->mSessionHandler:Landroid/os/Handler;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2688
    throw v4

    .line 2698
    .end local v1    # "callback":Ljava/lang/Runnable;
    :pswitch_1
    iget-object v4, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$UploadHandler;->mSessionHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$UploadHandler;->mSessionHandler:Landroid/os/Handler;

    const/4 v6, 0x4

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 2637
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
