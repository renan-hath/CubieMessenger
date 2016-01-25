.class final Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;
.super Landroid/os/Handler;
.source "LocalyticsSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SessionHandler"
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$android$database$CursorJoiner$Result:[I

.field private static final EVENTS_SORT_ORDER:Ljava/lang/String;

.field private static final JOINER_ARG_UPLOAD_EVENTS_COLUMNS:[Ljava/lang/String;

.field private static final PROJECTION_FLOW_BLOBS:[Ljava/lang/String;

.field private static final PROJECTION_FLOW_EVENTS:[Ljava/lang/String;

.field private static final PROJECTION_GET_INSTALLATION_ID:[Ljava/lang/String;

.field private static final PROJECTION_GET_NUMBER_OF_SESSIONS:[Ljava/lang/String;

.field private static final PROJECTION_GET_OPEN_SESSION_ID_EVENT_COUNT:[Ljava/lang/String;

.field private static final PROJECTION_GET_OPEN_SESSION_ID_SESSION_ID:[Ljava/lang/String;

.field private static final PROJECTION_INIT_API_KEY:[Ljava/lang/String;

.field private static final PROJECTION_IS_OPTED_OUT:[Ljava/lang/String;

.field private static final PROJECTION_OPEN_BLOB_EVENTS:[Ljava/lang/String;

.field private static final PROJECTION_OPEN_CLOSED_SESSION:[Ljava/lang/String;

.field private static final PROJECTION_OPEN_DELETE_EMPTIES_EVENT_ID:[Ljava/lang/String;

.field private static final PROJECTION_OPEN_DELETE_EMPTIES_PROCESSED_IN_BLOB:[Ljava/lang/String;

.field private static final PROJECTION_OPEN_EVENT_ID:[Ljava/lang/String;

.field private static final PROJECTION_OPEN_SESSIONS:[Ljava/lang/String;

.field private static final PROJECTION_TAG_EVENT:[Ljava/lang/String;

.field private static final PROJECTION_TAG_SCREEN:[Ljava/lang/String;

.field private static final PROJECTION_UPLOAD_BLOBS:[Ljava/lang/String;

.field private static final PROJECTION_UPLOAD_EVENTS:[Ljava/lang/String;

.field private static final SELECTION_ARGS_FLOW_EVENTS:[Ljava/lang/String;

.field private static final SELECTION_FLOW_EVENTS:Ljava/lang/String;

.field private static final SELECTION_GET_INSTALLATION_ID:Ljava/lang/String;

.field private static final SELECTION_GET_OPEN_SESSION_ID_EVENT_COUNT:Ljava/lang/String;

.field private static final SELECTION_INIT_API_KEY:Ljava/lang/String;

.field private static final SELECTION_IS_OPTED_OUT:Ljava/lang/String;

.field private static final SELECTION_OPEN:Ljava/lang/String;

.field private static final SELECTION_OPEN_CLOSED_SESSION:Ljava/lang/String;

.field private static final SELECTION_OPEN_CLOSED_SESSION_ATTRIBUTES:Ljava/lang/String;

.field private static final SELECTION_OPEN_DELETE_EMPTIES_EVENTS_SESSION_KEY_REF:Ljava/lang/String;

.field private static final SELECTION_OPEN_DELETE_EMPTIES_EVENT_HISTORY_SESSION_KEY_REF:Ljava/lang/String;

.field private static final SELECTION_OPEN_DELETE_EMPTIES_SESSIONS_ID:Ljava/lang/String;

.field private static final SELECTION_OPEN_DELETE_EMPTIES_UPLOAD_BLOBS_ID:Ljava/lang/String;

.field private static final SELECTION_OPEN_NEW_SESSION:Ljava/lang/String;

.field private static final SELECTION_OPT_IN_OUT:Ljava/lang/String;

.field private static final SELECTION_TAG_EVENT:Ljava/lang/String;

.field private static final SELECTION_TAG_SCREEN:Ljava/lang/String;

.field private static final SELECTION_UPLOAD_NULL_BLOBS:Ljava/lang/String;

.field private static final SORT_ORDER_TAG_SCREEN:Ljava/lang/String;

.field private static final UPLOAD_BLOBS_EVENTS_SORT_ORDER:Ljava/lang/String;


# instance fields
.field private final mApiKey:Ljava/lang/String;

.field private mApiKeyId:J

.field private mAppVersion:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field protected mProvider:Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

.field private mUploadHandler:Landroid/os/Handler;


# direct methods
.method static synthetic $SWITCH_TABLE$android$database$CursorJoiner$Result()[I
    .locals 3

    .prologue
    .line 901
    sget-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->$SWITCH_TABLE$android$database$CursorJoiner$Result:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/database/CursorJoiner$Result;->values()[Landroid/database/CursorJoiner$Result;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/database/CursorJoiner$Result;->BOTH:Landroid/database/CursorJoiner$Result;

    invoke-virtual {v1}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Landroid/database/CursorJoiner$Result;->LEFT:Landroid/database/CursorJoiner$Result;

    invoke-virtual {v1}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Landroid/database/CursorJoiner$Result;->RIGHT:Landroid/database/CursorJoiner$Result;

    invoke-virtual {v1}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->$SWITCH_TABLE$android$database$CursorJoiner$Result:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 964
    const-string/jumbo v0, "CAST(%s AS TEXT)"

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "events_key_ref"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->UPLOAD_BLOBS_EVENTS_SORT_ORDER:Ljava/lang/String;

    .line 971
    const-string/jumbo v0, "CAST(%s as TEXT)"

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->EVENTS_SORT_ORDER:Ljava/lang/String;

    .line 1260
    new-array v0, v6, [Ljava/lang/String;

    .line 1261
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 1262
    const-string/jumbo v1, "opt_out"

    aput-object v1, v0, v4

    .line 1263
    const-string/jumbo v1, "uuid"

    aput-object v1, v0, v5

    .line 1259
    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->PROJECTION_INIT_API_KEY:[Ljava/lang/String;

    .line 1268
    const-string/jumbo v0, "%s = ?"

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "api_key"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->SELECTION_INIT_API_KEY:Ljava/lang/String;

    .line 1340
    const-string/jumbo v0, "%s = ?"

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->SELECTION_OPT_IN_OUT:Ljava/lang/String;

    .line 1397
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 1396
    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->PROJECTION_GET_OPEN_SESSION_ID_SESSION_ID:[Ljava/lang/String;

    .line 1403
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "_count"

    aput-object v1, v0, v3

    .line 1402
    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->PROJECTION_GET_OPEN_SESSION_ID_EVENT_COUNT:[Ljava/lang/String;

    .line 1408
    const-string/jumbo v0, "%s = ? AND %s = ?"

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "session_key_ref"

    aput-object v2, v1, v3

    const-string/jumbo v2, "event_name"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->SELECTION_GET_OPEN_SESSION_ID_EVENT_COUNT:Ljava/lang/String;

    .line 1486
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 1485
    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->PROJECTION_OPEN_EVENT_ID:[Ljava/lang/String;

    .line 1491
    const-string/jumbo v0, "%s = ? AND %s >= ?"

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "event_name"

    aput-object v2, v1, v3

    const-string/jumbo v2, "wall_time"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->SELECTION_OPEN:Ljava/lang/String;

    .line 1497
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "events_key_ref"

    aput-object v1, v0, v3

    .line 1496
    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->PROJECTION_OPEN_BLOB_EVENTS:[Ljava/lang/String;

    .line 1503
    new-array v0, v5, [Ljava/lang/String;

    .line 1504
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 1505
    const-string/jumbo v1, "session_start_wall_time"

    aput-object v1, v0, v4

    .line 1502
    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->PROJECTION_OPEN_SESSIONS:[Ljava/lang/String;

    .line 1510
    const-string/jumbo v0, "%s = ?"

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "api_key"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->SELECTION_OPEN_NEW_SESSION:Ljava/lang/String;

    .line 1515
    const-string/jumbo v0, "%s = ?"

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "session_key_ref"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->SELECTION_OPEN_DELETE_EMPTIES_EVENT_HISTORY_SESSION_KEY_REF:Ljava/lang/String;

    .line 1520
    const-string/jumbo v0, "%s = ?"

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "session_key_ref"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->SELECTION_OPEN_DELETE_EMPTIES_EVENTS_SESSION_KEY_REF:Ljava/lang/String;

    .line 1526
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 1525
    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->PROJECTION_OPEN_DELETE_EMPTIES_EVENT_ID:[Ljava/lang/String;

    .line 1532
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "processed_in_blob"

    aput-object v1, v0, v3

    .line 1531
    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->PROJECTION_OPEN_DELETE_EMPTIES_PROCESSED_IN_BLOB:[Ljava/lang/String;

    .line 1537
    const-string/jumbo v0, "%s = ?"

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->SELECTION_OPEN_DELETE_EMPTIES_UPLOAD_BLOBS_ID:Ljava/lang/String;

    .line 1542
    const-string/jumbo v0, "%s = ?"

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->SELECTION_OPEN_DELETE_EMPTIES_SESSIONS_ID:Ljava/lang/String;

    .line 1848
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "uuid"

    aput-object v1, v0, v3

    .line 1847
    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->PROJECTION_GET_INSTALLATION_ID:[Ljava/lang/String;

    .line 1853
    const-string/jumbo v0, "%s = ?"

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "api_key"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->SELECTION_GET_INSTALLATION_ID:Ljava/lang/String;

    .line 1894
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "session_key_ref"

    aput-object v1, v0, v3

    .line 1893
    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->PROJECTION_OPEN_CLOSED_SESSION:[Ljava/lang/String;

    .line 1899
    const-string/jumbo v0, "%s = ?"

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->SELECTION_OPEN_CLOSED_SESSION:Ljava/lang/String;

    .line 1904
    const-string/jumbo v0, "%s = ?"

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "events_key_ref"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->SELECTION_OPEN_CLOSED_SESSION_ATTRIBUTES:Ljava/lang/String;

    .line 1955
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 1954
    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->PROJECTION_GET_NUMBER_OF_SESSIONS:[Ljava/lang/String;

    .line 2014
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "session_start_wall_time"

    aput-object v1, v0, v3

    .line 2013
    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->PROJECTION_TAG_EVENT:[Ljava/lang/String;

    .line 2019
    const-string/jumbo v0, "%s = ?"

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->SELECTION_TAG_EVENT:Ljava/lang/String;

    .line 2157
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "name"

    aput-object v1, v0, v3

    .line 2156
    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->PROJECTION_TAG_SCREEN:[Ljava/lang/String;

    .line 2162
    const-string/jumbo v0, "%s = ? AND %s = ?"

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "type"

    aput-object v2, v1, v3

    const-string/jumbo v2, "session_key_ref"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->SELECTION_TAG_SCREEN:Ljava/lang/String;

    .line 2167
    const-string/jumbo v0, "%s DESC"

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->SORT_ORDER_TAG_SCREEN:Ljava/lang/String;

    .line 2245
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 2244
    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->PROJECTION_FLOW_EVENTS:[Ljava/lang/String;

    .line 2250
    const-string/jumbo v0, "%s = ?"

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "event_name"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->SELECTION_FLOW_EVENTS:Ljava/lang/String;

    .line 2256
    new-array v0, v4, [Ljava/lang/String;

    sget-object v1, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->FLOW_EVENT:Ljava/lang/String;

    aput-object v1, v0, v3

    .line 2255
    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->SELECTION_ARGS_FLOW_EVENTS:[Ljava/lang/String;

    .line 2262
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "events_key_ref"

    aput-object v1, v0, v3

    .line 2261
    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->PROJECTION_FLOW_BLOBS:[Ljava/lang/String;

    .line 2326
    new-array v0, v6, [Ljava/lang/String;

    .line 2327
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 2328
    const-string/jumbo v1, "event_name"

    aput-object v1, v0, v4

    .line 2329
    const-string/jumbo v1, "wall_time"

    aput-object v1, v0, v5

    .line 2325
    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->PROJECTION_UPLOAD_EVENTS:[Ljava/lang/String;

    .line 2335
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "events_key_ref"

    aput-object v1, v0, v3

    .line 2334
    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->PROJECTION_UPLOAD_BLOBS:[Ljava/lang/String;

    .line 2340
    const-string/jumbo v0, "%s IS NULL"

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "processed_in_blob"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->SELECTION_UPLOAD_NULL_BLOBS:Ljava/lang/String;

    .line 2346
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 2345
    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->JOINER_ARG_UPLOAD_EVENTS_COLUMNS:[Ljava/lang/String;

    .line 2501
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "opt_out"

    aput-object v1, v0, v3

    .line 2500
    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->PROJECTION_IS_OPTED_OUT:[Ljava/lang/String;

    .line 2508
    const-string/jumbo v0, "%s = ?"

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "api_key"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->SELECTION_IS_OPTED_OUT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Looper;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "appVersion"    # Ljava/lang/String;
    .param p4, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1015
    invoke-direct {p0, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1029
    iput-object p1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mContext:Landroid/content/Context;

    .line 1030
    iput-object p2, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mApiKey:Ljava/lang/String;

    .line 1031
    iput-object p3, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mAppVersion:Ljava/lang/String;

    .line 1032
    return-void
.end method

.method private conditionallyAddFlowEvent()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 2274
    const/4 v8, 0x0

    .line 2276
    .local v8, "foundUnassociatedFlowEvent":Z
    const/4 v7, 0x0

    .line 2277
    .local v7, "eventsCursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 2280
    .local v6, "blob_eventsCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mProvider:Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    const-string/jumbo v1, "events"

    sget-object v2, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->PROJECTION_FLOW_EVENTS:[Ljava/lang/String;

    sget-object v3, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->SELECTION_FLOW_EVENTS:Ljava/lang/String;

    sget-object v4, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->SELECTION_ARGS_FLOW_EVENTS:[Ljava/lang/String;

    sget-object v5, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->EVENTS_SORT_ORDER:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2282
    iget-object v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mProvider:Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    const-string/jumbo v1, "upload_blob_events"

    sget-object v2, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->PROJECTION_FLOW_BLOBS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->UPLOAD_BLOBS_EVENTS_SORT_ORDER:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2284
    new-instance v9, Landroid/database/CursorJoiner;

    sget-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->PROJECTION_FLOW_EVENTS:[Ljava/lang/String;

    sget-object v1, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->PROJECTION_FLOW_BLOBS:[Ljava/lang/String;

    invoke-direct {v9, v7, v0, v6, v1}, Landroid/database/CursorJoiner;-><init>(Landroid/database/Cursor;[Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 2285
    .local v9, "joiner":Landroid/database/CursorJoiner;
    invoke-virtual {v9}, Landroid/database/CursorJoiner;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    :pswitch_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_3

    .line 2303
    if-eqz v7, :cond_0

    .line 2305
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2306
    const/4 v7, 0x0

    .line 2309
    :cond_0
    if-eqz v6, :cond_1

    .line 2311
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2312
    const/4 v6, 0x0

    .line 2316
    :cond_1
    if-nez v8, :cond_2

    .line 2318
    sget-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->FLOW_EVENT:Ljava/lang/String;

    invoke-virtual {p0, v0, v11}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 2320
    :cond_2
    return-void

    .line 2285
    :cond_3
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/database/CursorJoiner$Result;

    .line 2287
    .local v10, "joinerResult":Landroid/database/CursorJoiner$Result;
    invoke-static {}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->$SWITCH_TABLE$android$database$CursorJoiner$Result()[I

    move-result-object v1

    invoke-virtual {v10}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v2

    aget v1, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 2291
    :pswitch_1
    const/4 v8, 0x1

    .line 2292
    goto :goto_0

    .line 2302
    .end local v9    # "joiner":Landroid/database/CursorJoiner;
    .end local v10    # "joinerResult":Landroid/database/CursorJoiner$Result;
    :catchall_0
    move-exception v0

    .line 2303
    if-eqz v7, :cond_4

    .line 2305
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2306
    const/4 v7, 0x0

    .line 2309
    :cond_4
    if-eqz v6, :cond_5

    .line 2311
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2312
    const/4 v6, 0x0

    .line 2314
    :cond_5
    throw v0

    .line 2287
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getInstallationId(Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "provider"    # Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;
    .param p1, "apiKey"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1860
    const/4 v6, 0x0

    .line 1863
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v1, "api_keys"

    sget-object v2, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->PROJECTION_GET_INSTALLATION_ID:[Ljava/lang/String;

    sget-object v3, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->SELECTION_GET_INSTALLATION_ID:Ljava/lang/String;

    .line 1864
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    .line 1863
    invoke-virtual/range {v0 .. v5}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1866
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1868
    const-string/jumbo v0, "uuid"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1873
    if-eqz v6, :cond_0

    .line 1875
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1876
    const/4 v6, 0x0

    .line 1887
    :cond_0
    :goto_0
    return-object v0

    .line 1872
    :catchall_0
    move-exception v0

    .line 1873
    if-eqz v6, :cond_1

    .line 1875
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1876
    const/4 v6, 0x0

    .line 1878
    :cond_1
    throw v0

    .line 1873
    :cond_2
    if-eqz v6, :cond_3

    .line 1875
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1876
    const/4 v6, 0x0

    :cond_3
    move-object v0, v7

    .line 1887
    goto :goto_0
.end method

.method static getNumberOfSessions(Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;)J
    .locals 7
    .param p0, "provider"    # Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    .prologue
    .line 1965
    const/4 v6, 0x0

    .line 1968
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v1, "sessions"

    sget-object v2, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->PROJECTION_GET_NUMBER_OF_SESSIONS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1970
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    int-to-long v0, v0

    .line 1974
    if-eqz v6, :cond_0

    .line 1976
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1977
    const/4 v6, 0x0

    .line 1970
    :cond_0
    return-wide v0

    .line 1973
    :catchall_0
    move-exception v0

    .line 1974
    if-eqz v6, :cond_1

    .line 1976
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1977
    const/4 v6, 0x0

    .line 1979
    :cond_1
    throw v0
.end method

.method static getOpenSessionId(Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;)Ljava/lang/Long;
    .locals 10
    .param p0, "provider"    # Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    .prologue
    const/4 v9, 0x0

    .line 1422
    const/4 v8, 0x0

    .line 1430
    .local v8, "sessionsCursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v1, "sessions"

    sget-object v2, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->PROJECTION_GET_OPEN_SESSION_ID_SESSION_ID:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "_id"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1432
    invoke-interface {v8}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1434
    const-string/jumbo v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 1443
    .local v7, "sessionId":Ljava/lang/Long;
    if-eqz v8, :cond_0

    .line 1445
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1454
    :cond_0
    const/4 v6, 0x0

    .line 1457
    .local v6, "eventsCursor":Landroid/database/Cursor;
    :try_start_1
    const-string/jumbo v1, "events"

    sget-object v2, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->PROJECTION_GET_OPEN_SESSION_ID_EVENT_COUNT:[Ljava/lang/String;

    sget-object v3, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->SELECTION_GET_OPEN_SESSION_ID_EVENT_COUNT:Ljava/lang/String;

    .line 1458
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 1459
    invoke-virtual {v7}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x1

    .line 1460
    sget-object v5, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->CLOSE_EVENT:Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    .line 1457
    invoke-virtual/range {v0 .. v5}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1462
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1464
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_6

    .line 1472
    if-eqz v6, :cond_1

    .line 1474
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1475
    const/4 v6, 0x0

    .line 1479
    .end local v6    # "eventsCursor":Landroid/database/Cursor;
    .end local v7    # "sessionId":Ljava/lang/Long;
    :cond_1
    :goto_0
    return-object v7

    .line 1443
    :cond_2
    if-eqz v8, :cond_3

    .line 1445
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1446
    const/4 v8, 0x0

    :cond_3
    move-object v7, v9

    .line 1438
    goto :goto_0

    .line 1442
    :catchall_0
    move-exception v0

    .line 1443
    if-eqz v8, :cond_4

    .line 1445
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1446
    const/4 v8, 0x0

    .line 1448
    :cond_4
    throw v0

    .line 1471
    .restart local v6    # "eventsCursor":Landroid/database/Cursor;
    .restart local v7    # "sessionId":Ljava/lang/Long;
    :catchall_1
    move-exception v0

    .line 1472
    if-eqz v6, :cond_5

    .line 1474
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1475
    const/4 v6, 0x0

    .line 1477
    :cond_5
    throw v0

    .line 1472
    :cond_6
    if-eqz v6, :cond_7

    .line 1474
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1475
    const/4 v6, 0x0

    :cond_7
    move-object v7, v9

    .line 1479
    goto :goto_0
.end method

.method static isOptedOut(Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;Ljava/lang/String;)Z
    .locals 9
    .param p0, "provider"    # Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;
    .param p1, "apiKey"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2533
    const/4 v6, 0x0

    .line 2536
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v1, "api_keys"

    sget-object v2, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->PROJECTION_IS_OPTED_OUT:[Ljava/lang/String;

    sget-object v3, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->SELECTION_IS_OPTED_OUT:Ljava/lang/String;

    .line 2537
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    .line 2536
    invoke-virtual/range {v0 .. v5}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2539
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2541
    const-string/jumbo v0, "opt_out"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    move v0, v7

    .line 2546
    :goto_0
    if-eqz v6, :cond_0

    .line 2548
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2549
    const/4 v6, 0x0

    .line 2553
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v8

    .line 2541
    goto :goto_0

    .line 2545
    :catchall_0
    move-exception v0

    .line 2546
    if-eqz v6, :cond_2

    .line 2548
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2549
    const/4 v6, 0x0

    .line 2551
    :cond_2
    throw v0

    .line 2546
    :cond_3
    if-eqz v6, :cond_4

    .line 2548
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2549
    const/4 v6, 0x0

    :cond_4
    move v0, v8

    .line 2553
    goto :goto_1
.end method

.method private openClosedSession(J)V
    .locals 7
    .param p1, "closeEventId"    # J

    .prologue
    .line 1915
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1917
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 1920
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mProvider:Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    const-string/jumbo v1, "events"

    sget-object v2, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->PROJECTION_OPEN_CLOSED_SESSION:[Ljava/lang/String;

    sget-object v3, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->SELECTION_OPEN_CLOSED_SESSION:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1922
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1924
    iget-object v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mProvider:Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    const-string/jumbo v1, "attributes"

    sget-object v2, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->SELECTION_OPEN_CLOSED_SESSION_ATTRIBUTES:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v4}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1925
    iget-object v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mProvider:Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    const-string/jumbo v1, "events"

    sget-object v2, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->SELECTION_OPEN_CLOSED_SESSION:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v4}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1943
    :goto_0
    if-eqz v6, :cond_0

    .line 1945
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1946
    const/4 v6, 0x0

    .line 1949
    :cond_0
    return-void

    .line 1938
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->openNewSession(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1942
    :catchall_0
    move-exception v0

    .line 1943
    if-eqz v6, :cond_2

    .line 1945
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1946
    const/4 v6, 0x0

    .line 1948
    :cond_2
    throw v0
.end method

.method private openNewSession(Ljava/util/Map;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1771
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 1773
    .local v10, "telephonyManager":Landroid/telephony/TelephonyManager;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1774
    .local v11, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "api_key_ref"

    iget-wide v1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mApiKeyId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1775
    const-string/jumbo v0, "session_start_wall_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1776
    const-string/jumbo v0, "uuid"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1778
    iget-object v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mAppVersion:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1779
    const-string/jumbo v0, "app_version"

    iget-object v1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mAppVersion:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1784
    :goto_0
    const-string/jumbo v0, "android_sdk"

    sget v1, Lcom/aviary/android/feather/library/external/tracking/Constants;->CURRENT_API_LEVEL:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1785
    const-string/jumbo v0, "android_version"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1788
    iget-object v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/aviary/android/feather/library/external/tracking/DatapointHelper;->getAndroidIdHashOrNull(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 1789
    .local v7, "deviceId":Ljava/lang/String;
    if-nez v7, :cond_1

    .line 1791
    const/4 v6, 0x0

    .line 1794
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mProvider:Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    const-string/jumbo v1, "api_keys"

    const/4 v2, 0x0

    sget-object v3, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->SELECTION_OPEN_NEW_SESSION:Ljava/lang/String;

    .line 1795
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v12, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mApiKey:Ljava/lang/String;

    aput-object v12, v4, v5

    const/4 v5, 0x0

    .line 1794
    invoke-virtual/range {v0 .. v5}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1796
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1798
    const-string/jumbo v0, "uuid"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 1803
    :cond_0
    if-eqz v6, :cond_1

    .line 1805
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1811
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    const-string/jumbo v0, "device_android_id_hash"

    invoke-virtual {v11, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1812
    const-string/jumbo v0, "device_country"

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1813
    const-string/jumbo v0, "device_manufacturer"

    invoke-static {}, Lcom/aviary/android/feather/library/external/tracking/DatapointHelper;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1814
    const-string/jumbo v0, "device_model"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1815
    const-string/jumbo v0, "device_serial_number_hash"

    invoke-static {}, Lcom/aviary/android/feather/library/external/tracking/DatapointHelper;->getSerialNumberHashOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1816
    const-string/jumbo v0, "device_telephony_id"

    iget-object v1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/aviary/android/feather/library/external/tracking/DatapointHelper;->getTelephonyDeviceIdOrNull(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1817
    const-string/jumbo v0, "device_telephony_id_hash"

    iget-object v1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/aviary/android/feather/library/external/tracking/DatapointHelper;->getTelephonyDeviceIdHashOrNull(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1818
    const-string/jumbo v0, "device_wifi_mac_hash"

    iget-object v1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/aviary/android/feather/library/external/tracking/DatapointHelper;->getWifiMacHashOrNull(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1819
    const-string/jumbo v0, "locale_country"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1820
    const-string/jumbo v0, "locale_language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1821
    const-string/jumbo v0, "localytics_library_version"

    const-string/jumbo v1, "android_2.4"

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1822
    const-string/jumbo v0, "iu"

    iget-object v1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mProvider:Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    iget-object v2, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mApiKey:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->getInstallationId(Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1824
    const-string/jumbo v0, "latitude"

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1825
    const-string/jumbo v0, "longitude"

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1826
    const-string/jumbo v0, "network_carrier"

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    const-string/jumbo v0, "network_country"

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1828
    const-string/jumbo v0, "network_type"

    iget-object v1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mContext:Landroid/content/Context;

    invoke-static {v1, v10}, Lcom/aviary/android/feather/library/external/tracking/DatapointHelper;->getNetworkType(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1830
    iget-object v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mProvider:Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    const-string/jumbo v1, "sessions"

    invoke-virtual {v0, v1, v11}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    .line 1831
    .local v8, "sessionId":J
    const-wide/16 v0, -0x1

    cmp-long v0, v8, v0

    if-nez v0, :cond_4

    .line 1833
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "session insert failed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1781
    .end local v7    # "deviceId":Ljava/lang/String;
    .end local v8    # "sessionId":J
    :cond_2
    const-string/jumbo v0, "app_version"

    iget-object v1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/aviary/android/feather/library/external/tracking/DatapointHelper;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1802
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "deviceId":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 1803
    if-eqz v6, :cond_3

    .line 1805
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1806
    const/4 v6, 0x0

    .line 1808
    :cond_3
    throw v0

    .line 1836
    .end local v6    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "sessionId":J
    :cond_4
    sget-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->OPEN_EVENT:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1841
    iget-object v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->deleteOldFiles(Landroid/content/Context;)V

    .line 1842
    return-void
.end method

.method static preUploadBuildBlobs(Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;)V
    .locals 15
    .param p0, "provider"    # Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    .prologue
    .line 2366
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 2368
    .local v8, "eventIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v9, 0x0

    .line 2369
    .local v9, "eventsCursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 2372
    .local v7, "blob_eventsCursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v1, "events"

    sget-object v2, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->PROJECTION_UPLOAD_EVENTS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->EVENTS_SORT_ORDER:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2374
    const-string/jumbo v1, "upload_blob_events"

    sget-object v2, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->PROJECTION_UPLOAD_BLOBS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->UPLOAD_BLOBS_EVENTS_SORT_ORDER:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2376
    const-string/jumbo v0, "_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 2377
    .local v10, "idColumn":I
    new-instance v11, Landroid/database/CursorJoiner;

    sget-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->JOINER_ARG_UPLOAD_EVENTS_COLUMNS:[Ljava/lang/String;

    sget-object v1, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->PROJECTION_UPLOAD_BLOBS:[Ljava/lang/String;

    invoke-direct {v11, v9, v0, v7, v1}, Landroid/database/CursorJoiner;-><init>(Landroid/database/Cursor;[Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 2378
    .local v11, "joiner":Landroid/database/CursorJoiner;
    invoke-virtual {v11}, Landroid/database/CursorJoiner;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_4

    .line 2403
    if-eqz v9, :cond_1

    .line 2405
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2406
    const/4 v9, 0x0

    .line 2409
    :cond_1
    if-eqz v7, :cond_2

    .line 2411
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2412
    const/4 v7, 0x0

    .line 2416
    :cond_2
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 2419
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 2423
    .local v13, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "uuid"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2424
    const-string/jumbo v0, "upload_blobs"

    invoke-virtual {p0, v0, v13}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 2425
    .local v6, "blobId":Ljava/lang/Long;
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    .line 2428
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_8

    .line 2438
    const-string/jumbo v0, "processed_in_blob"

    invoke-virtual {v13, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2439
    const-string/jumbo v0, "event_history"

    sget-object v1, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->SELECTION_UPLOAD_NULL_BLOBS:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v13, v1, v2}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2440
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    .line 2442
    .end local v6    # "blobId":Ljava/lang/Long;
    .end local v13    # "values":Landroid/content/ContentValues;
    :cond_3
    return-void

    .line 2378
    :cond_4
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/database/CursorJoiner$Result;

    .line 2380
    .local v12, "joinerResult":Landroid/database/CursorJoiner$Result;
    invoke-static {}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->$SWITCH_TABLE$android$database$CursorJoiner$Result()[I

    move-result-object v1

    invoke-virtual {v12}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 2384
    :pswitch_1
    sget-object v1, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->CLOSE_EVENT:Ljava/lang/String;

    const-string/jumbo v2, "event_name"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2386
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string/jumbo v3, "wall_time"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3a98

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 2391
    :cond_5
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 2402
    .end local v10    # "idColumn":I
    .end local v11    # "joiner":Landroid/database/CursorJoiner;
    .end local v12    # "joinerResult":Landroid/database/CursorJoiner$Result;
    :catchall_0
    move-exception v0

    .line 2403
    if-eqz v9, :cond_6

    .line 2405
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2406
    const/4 v9, 0x0

    .line 2409
    :cond_6
    if-eqz v7, :cond_7

    .line 2411
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2412
    const/4 v7, 0x0

    .line 2414
    :cond_7
    throw v0

    .line 2428
    .restart local v6    # "blobId":Ljava/lang/Long;
    .restart local v10    # "idColumn":I
    .restart local v11    # "joiner":Landroid/database/CursorJoiner;
    .restart local v13    # "values":Landroid/content/ContentValues;
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    .line 2430
    .local v14, "x":Ljava/lang/Long;
    const-string/jumbo v1, "upload_blobs_key_ref"

    invoke-virtual {v13, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2431
    const-string/jumbo v1, "events_key_ref"

    invoke-virtual {v13, v1, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2433
    const-string/jumbo v1, "upload_blob_events"

    invoke-virtual {p0, v1, v13}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2435
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    goto/16 :goto_1

    .line 2380
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method close(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1998
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mProvider:Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    invoke-static {v0}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->getOpenSessionId(Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2008
    :goto_0
    return-void

    .line 2007
    :cond_0
    sget-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->CLOSE_EVENT:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1039
    :try_start_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1046
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 1238
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Fell through switch statement"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1242
    :catch_0
    move-exception v6

    .line 1254
    :goto_0
    return-void

    .line 1055
    :pswitch_0
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->init()V

    goto :goto_0

    .line 1066
    :pswitch_1
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-nez v6, :cond_0

    const/4 v3, 0x0

    .line 1068
    .local v3, "isOptingOut":Z
    :goto_1
    iget-object v6, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mProvider:Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    new-instance v7, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$1;

    invoke-direct {v7, p0, v3}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$1;-><init>(Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;Z)V

    invoke-virtual {v6, v7}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1066
    .end local v3    # "isOptingOut":Z
    :cond_0
    const/4 v3, 0x1

    goto :goto_1

    .line 1085
    :pswitch_2
    iget-object v6, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mProvider:Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    new-instance v7, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$2;

    invoke-direct {v7, p0, p1}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$2;-><init>(Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;Landroid/os/Message;)V

    invoke-virtual {v6, v7}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1103
    :pswitch_3
    iget-object v6, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mProvider:Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    new-instance v7, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$3;

    invoke-direct {v7, p0, p1}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$3;-><init>(Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;Landroid/os/Message;)V

    invoke-virtual {v6, v7}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1122
    :pswitch_4
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$Pair;

    .line 1123
    .local v4, "pair":Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$Pair;, "Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$Pair<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v2, v4, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1124
    .local v2, "event":Ljava/lang/String;
    iget-object v0, v4, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    .line 1126
    .local v0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mProvider:Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    new-instance v7, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$4;

    invoke-direct {v7, p0, v2, v0}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$4;-><init>(Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v6, v7}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1188
    .end local v0    # "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "event":Ljava/lang/String;
    .end local v4    # "pair":Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$Pair;, "Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$Pair<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :pswitch_5
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 1190
    .local v5, "screen":Ljava/lang/String;
    iget-object v6, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mProvider:Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    new-instance v7, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$5;

    invoke-direct {v7, p0, v5}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$5;-><init>(Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1210
    .end local v5    # "screen":Ljava/lang/String;
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    .line 1212
    .local v1, "callback":Ljava/lang/Runnable;
    iget-object v6, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mProvider:Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    new-instance v7, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$6;

    invoke-direct {v7, p0, v1}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$6;-><init>(Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;Ljava/lang/Runnable;)V

    invoke-virtual {v6, v7}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1229
    .end local v1    # "callback":Ljava/lang/Runnable;
    :pswitch_7
    sget-object v6, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->sIsUploadingMap:Ljava/util/Map;

    iget-object v7, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mApiKey:Ljava/lang/String;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1046
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method init()V
    .locals 9

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mApiKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mProvider:Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    .line 1284
    const/4 v6, 0x0

    .line 1287
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mProvider:Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    const-string/jumbo v1, "api_keys"

    sget-object v2, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->PROJECTION_INIT_API_KEY:[Ljava/lang/String;

    sget-object v3, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->SELECTION_INIT_API_KEY:Ljava/lang/String;

    .line 1288
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mApiKey:Ljava/lang/String;

    aput-object v8, v4, v5

    const/4 v5, 0x0

    .line 1287
    invoke-virtual/range {v0 .. v5}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1290
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1298
    const-string/jumbo v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mApiKeyId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1319
    :goto_0
    if-eqz v6, :cond_0

    .line 1321
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1322
    const/4 v6, 0x0

    .line 1326
    :cond_0
    sget-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->sIsUploadingMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mApiKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1328
    sget-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->sIsUploadingMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mApiKey:Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1334
    :cond_1
    new-instance v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$UploadHandler;

    iget-object v1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mApiKey:Ljava/lang/String;

    sget-object v3, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->sUploadHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$UploadHandler;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mUploadHandler:Landroid/os/Handler;

    .line 1335
    return-void

    .line 1308
    :cond_2
    :try_start_1
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1309
    .local v7, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "api_key"

    iget-object v1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mApiKey:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    const-string/jumbo v0, "uuid"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    const-string/jumbo v0, "opt_out"

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1312
    const-string/jumbo v0, "created_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1314
    iget-object v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mProvider:Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    const-string/jumbo v1, "api_keys"

    invoke-virtual {v0, v1, v7}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mApiKeyId:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1318
    .end local v7    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    .line 1319
    if-eqz v6, :cond_3

    .line 1321
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1322
    const/4 v6, 0x0

    .line 1324
    :cond_3
    throw v0
.end method

.method open(ZLjava/util/Map;)V
    .locals 27
    .param p1, "ignoreLimits"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1570
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mProvider:Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mApiKey:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->isOptedOut(Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1761
    :cond_0
    :goto_0
    return-void

    .line 1584
    :cond_1
    const-wide/16 v12, -0x1

    .line 1587
    .local v12, "closeEventId":J
    const/4 v15, 0x0

    .line 1588
    .local v15, "eventsCursor":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 1591
    .local v10, "blob_eventsCursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mProvider:Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    const-string/jumbo v3, "events"

    sget-object v4, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->PROJECTION_OPEN_EVENT_ID:[Ljava/lang/String;

    sget-object v5, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->SELECTION_OPEN:Ljava/lang/String;

    .line 1592
    const/4 v7, 0x2

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 1593
    sget-object v23, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->CLOSE_EVENT:Ljava/lang/String;

    aput-object v23, v6, v7

    const/4 v7, 0x1

    .line 1594
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    const-wide/16 v25, 0x3a98

    sub-long v23, v23, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v6, v7

    sget-object v7, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->EVENTS_SORT_ORDER:Ljava/lang/String;

    .line 1591
    invoke-virtual/range {v2 .. v7}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1595
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mProvider:Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    const-string/jumbo v3, "upload_blob_events"

    sget-object v4, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->PROJECTION_OPEN_BLOB_EVENTS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->UPLOAD_BLOBS_EVENTS_SORT_ORDER:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1597
    const-string/jumbo v2, "_id"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 1598
    .local v16, "idColumn":I
    new-instance v17, Landroid/database/CursorJoiner;

    sget-object v2, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->PROJECTION_OPEN_EVENT_ID:[Ljava/lang/String;

    sget-object v3, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->PROJECTION_OPEN_BLOB_EVENTS:[Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v15, v2, v10, v3}, Landroid/database/CursorJoiner;-><init>(Landroid/database/Cursor;[Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 1600
    .local v17, "joiner":Landroid/database/CursorJoiner;
    invoke-virtual/range {v17 .. v17}, Landroid/database/CursorJoiner;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    :pswitch_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_5

    .line 1643
    if-eqz v15, :cond_3

    .line 1645
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1646
    const/4 v15, 0x0

    .line 1648
    :cond_3
    if-eqz v10, :cond_4

    .line 1650
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1656
    :cond_4
    const-wide/16 v2, -0x1

    cmp-long v2, v2, v12

    if-eqz v2, :cond_9

    .line 1658
    const-string/jumbo v2, "Localytics-SDK"

    const-string/jumbo v3, "Opening old closed session and reconnecting"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->openClosedSession(J)V

    goto :goto_0

    .line 1600
    :cond_5
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/database/CursorJoiner$Result;

    .line 1602
    .local v18, "joinerResult":Landroid/database/CursorJoiner$Result;
    invoke-static {}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->$SWITCH_TABLE$android$database$CursorJoiner$Result()[I

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 1607
    :pswitch_1
    const-wide/16 v3, -0x1

    cmp-long v3, v3, v12

    if-eqz v3, :cond_6

    .line 1617
    const-string/jumbo v3, "_id"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 1618
    .local v19, "newClose":J
    cmp-long v3, v19, v12

    if-lez v3, :cond_6

    .line 1620
    move-wide/from16 v12, v19

    .line 1624
    .end local v19    # "newClose":J
    :cond_6
    const-wide/16 v3, -0x1

    cmp-long v3, v3, v12

    if-nez v3, :cond_2

    .line 1626
    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v12

    .line 1629
    goto :goto_1

    .line 1642
    .end local v16    # "idColumn":I
    .end local v17    # "joiner":Landroid/database/CursorJoiner;
    .end local v18    # "joinerResult":Landroid/database/CursorJoiner$Result;
    :catchall_0
    move-exception v2

    .line 1643
    if-eqz v15, :cond_7

    .line 1645
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1646
    const/4 v15, 0x0

    .line 1648
    :cond_7
    if-eqz v10, :cond_8

    .line 1650
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1651
    const/4 v10, 0x0

    .line 1653
    :cond_8
    throw v2

    .line 1664
    .restart local v16    # "idColumn":I
    .restart local v17    # "joiner":Landroid/database/CursorJoiner;
    :cond_9
    const/16 v22, 0x0

    .line 1667
    .local v22, "sessionsCursor":Landroid/database/Cursor;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mProvider:Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    const-string/jumbo v3, "sessions"

    sget-object v4, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->PROJECTION_OPEN_SESSIONS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "_id"

    invoke-virtual/range {v2 .. v7}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 1669
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToLast()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1671
    const-string/jumbo v2, "session_start_wall_time"

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1672
    const-wide/16 v23, 0x3a98

    sub-long v4, v4, v23

    cmp-long v2, v2, v4

    if-ltz v2, :cond_a

    .line 1675
    const-string/jumbo v2, "Localytics-SDK"

    const-string/jumbo v3, "Opening old unclosed session and reconnecting"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1734
    if-eqz v22, :cond_0

    .line 1736
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 1737
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 1680
    :cond_a
    const/4 v15, 0x0

    .line 1683
    :try_start_3
    const-string/jumbo v2, "_id"

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    .line 1685
    .local v21, "sessionId":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v21, v6, v2

    .line 1686
    .local v6, "sessionIdSelection":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mProvider:Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    const-string/jumbo v3, "events"

    sget-object v4, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->PROJECTION_OPEN_DELETE_EMPTIES_EVENT_ID:[Ljava/lang/String;

    sget-object v5, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->SELECTION_OPEN_DELETE_EMPTIES_EVENTS_SESSION_KEY_REF:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1688
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_c

    .line 1690
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1693
    .local v11, "blobsToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v14, 0x0

    .line 1696
    .local v14, "eventHistory":Landroid/database/Cursor;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mProvider:Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    const-string/jumbo v3, "event_history"

    sget-object v4, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->PROJECTION_OPEN_DELETE_EMPTIES_PROCESSED_IN_BLOB:[Ljava/lang/String;

    sget-object v5, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->SELECTION_OPEN_DELETE_EMPTIES_EVENT_HISTORY_SESSION_KEY_REF:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1697
    :goto_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v2

    if-nez v2, :cond_10

    .line 1704
    if-eqz v14, :cond_b

    .line 1706
    :try_start_5
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1707
    const/4 v14, 0x0

    .line 1711
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mProvider:Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    const-string/jumbo v3, "event_history"

    sget-object v4, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->SELECTION_OPEN_DELETE_EMPTIES_EVENT_HISTORY_SESSION_KEY_REF:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v6}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1712
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_14

    .line 1719
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mProvider:Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    const-string/jumbo v3, "sessions"

    sget-object v4, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->SELECTION_OPEN_DELETE_EMPTIES_SESSIONS_ID:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v6}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1724
    .end local v11    # "blobsToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v14    # "eventHistory":Landroid/database/Cursor;
    :cond_c
    if-eqz v15, :cond_d

    .line 1726
    :try_start_6
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1734
    .end local v6    # "sessionIdSelection":[Ljava/lang/String;
    .end local v21    # "sessionId":Ljava/lang/String;
    :cond_d
    if-eqz v22, :cond_e

    .line 1736
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 1737
    const/16 v22, 0x0

    .line 1744
    :cond_e
    if-nez p1, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mProvider:Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    invoke-static {v2}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->getNumberOfSessions(Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;)J

    move-result-wide v2

    const-wide/16 v4, 0xa

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 1758
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->openNewSession(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 1699
    .restart local v6    # "sessionIdSelection":[Ljava/lang/String;
    .restart local v11    # "blobsToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v14    # "eventHistory":Landroid/database/Cursor;
    .restart local v21    # "sessionId":Ljava/lang/String;
    :cond_10
    :try_start_7
    const-string/jumbo v2, "processed_in_blob"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    .line 1703
    :catchall_1
    move-exception v2

    .line 1704
    if-eqz v14, :cond_11

    .line 1706
    :try_start_8
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1707
    const/4 v14, 0x0

    .line 1709
    :cond_11
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1723
    .end local v6    # "sessionIdSelection":[Ljava/lang/String;
    .end local v11    # "blobsToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v14    # "eventHistory":Landroid/database/Cursor;
    .end local v21    # "sessionId":Ljava/lang/String;
    :catchall_2
    move-exception v2

    .line 1724
    if-eqz v15, :cond_12

    .line 1726
    :try_start_9
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1727
    const/4 v15, 0x0

    .line 1729
    :cond_12
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1733
    :catchall_3
    move-exception v2

    .line 1734
    if-eqz v22, :cond_13

    .line 1736
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 1737
    const/16 v22, 0x0

    .line 1739
    :cond_13
    throw v2

    .line 1712
    .restart local v6    # "sessionIdSelection":[Ljava/lang/String;
    .restart local v11    # "blobsToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v14    # "eventHistory":Landroid/database/Cursor;
    .restart local v21    # "sessionId":Ljava/lang/String;
    :cond_14
    :try_start_a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 1714
    .local v8, "blobId":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mProvider:Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    const-string/jumbo v4, "upload_blobs"

    sget-object v5, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->SELECTION_OPEN_DELETE_EMPTIES_UPLOAD_BLOBS_ID:Ljava/lang/String;

    .line 1715
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/16 v23, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v7, v23

    .line 1714
    invoke-virtual {v2, v4, v5, v7}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto/16 :goto_3

    .line 1602
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method optOut(Z)V
    .locals 8
    .param p1, "isOptingOut"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1368
    iget-object v1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mProvider:Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    iget-object v2, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mApiKey:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->isOptedOut(Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;Ljava/lang/String;)Z

    move-result v1

    if-ne v1, p1, :cond_0

    .line 1391
    :goto_0
    return-void

    .line 1373
    :cond_0
    iget-object v1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mProvider:Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    invoke-static {v1}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->getOpenSessionId(Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;)Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1378
    invoke-virtual {p0, v4, v3}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->open(ZLjava/util/Map;)V

    .line 1379
    if-eqz p1, :cond_1

    sget-object v1, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->OPT_OUT_EVENT:Ljava/lang/String;

    :goto_1
    invoke-virtual {p0, v1, v3}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1380
    invoke-virtual {p0, v3}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->close(Ljava/util/Map;)V

    .line 1387
    :goto_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1388
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "opt_out"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1389
    iget-object v1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mProvider:Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    const-string/jumbo v2, "api_keys"

    sget-object v3, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->SELECTION_OPT_IN_OUT:Ljava/lang/String;

    .line 1390
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mApiKeyId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1389
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 1379
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_1
    sget-object v1, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->OPT_IN_EVENT:Ljava/lang/String;

    goto :goto_1

    .line 1384
    :cond_2
    if-eqz p1, :cond_3

    sget-object v1, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->OPT_OUT_EVENT:Ljava/lang/String;

    :goto_3
    invoke-virtual {p0, v1, v3}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->OPT_IN_EVENT:Ljava/lang/String;

    goto :goto_3
.end method

.method tagEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 19
    .param p1, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2036
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mProvider:Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    invoke-static {v2}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->getOpenSessionId(Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;)Ljava/lang/Long;

    move-result-object v16

    .line 2037
    .local v16, "openSessionId":Ljava/lang/Long;
    if-nez v16, :cond_1

    .line 2151
    :cond_0
    :goto_0
    return-void

    .line 2051
    :cond_1
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 2052
    .local v17, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "session_key_ref"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2053
    const-string/jumbo v2, "uuid"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2054
    const-string/jumbo v2, "event_name"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2055
    const-string/jumbo v2, "real_time"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2056
    const-string/jumbo v2, "wall_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2061
    sget-object v2, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->OPEN_EVENT:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2063
    const/4 v10, 0x0

    .line 2066
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mProvider:Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    const-string/jumbo v3, "sessions"

    sget-object v4, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->PROJECTION_TAG_EVENT:[Ljava/lang/String;

    sget-object v5, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->SELECTION_TAG_EVENT:Ljava/lang/String;

    .line 2067
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v6, v7

    const/4 v7, 0x0

    .line 2066
    invoke-virtual/range {v2 .. v7}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2069
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2071
    const-string/jumbo v2, "wall_time"

    const-string/jumbo v3, "session_start_wall_time"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2081
    if-eqz v10, :cond_2

    .line 2083
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2089
    .end local v10    # "cursor":Landroid/database/Cursor;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mProvider:Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    const-string/jumbo v3, "events"

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v12

    .line 2091
    .local v12, "eventId":J
    const-wide/16 v2, -0x1

    cmp-long v2, v2, v12

    if-nez v2, :cond_5

    .line 2093
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Inserting event failed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2076
    .end local v12    # "eventId":J
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :cond_3
    :try_start_1
    new-instance v2, Ljava/lang/AssertionError;

    const-string/jumbo v3, "During tag of open event, session didn\'t exist"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2080
    :catchall_0
    move-exception v2

    .line 2081
    if-eqz v10, :cond_4

    .line 2083
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2084
    const/4 v10, 0x0

    .line 2086
    :cond_4
    throw v2

    .line 2100
    .end local v10    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "eventId":J
    :cond_5
    if-eqz p2, :cond_7

    .line 2103
    new-instance v17, Landroid/content/ContentValues;

    .end local v17    # "values":Landroid/content/ContentValues;
    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 2105
    .restart local v17    # "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "%s:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, ""

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 2106
    .local v9, "applicationAttributePrefix":Ljava/lang/String;
    const/4 v8, 0x0

    .line 2108
    .local v8, "applicationAttributeCount":I
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_8

    .line 2140
    .end local v8    # "applicationAttributeCount":I
    .end local v9    # "applicationAttributePrefix":Ljava/lang/String;
    :cond_7
    sget-object v2, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->OPEN_EVENT:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->CLOSE_EVENT:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->OPT_IN_EVENT:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->OPT_OUT_EVENT:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->FLOW_EVENT:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2142
    new-instance v17, Landroid/content/ContentValues;

    .end local v17    # "values":Landroid/content/ContentValues;
    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 2143
    .restart local v17    # "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "name"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2144
    const-string/jumbo v2, "type"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2145
    const-string/jumbo v2, "session_key_ref"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2146
    const-string/jumbo v2, "processed_in_blob"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 2147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mProvider:Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    const-string/jumbo v3, "event_history"

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2149
    invoke-direct/range {p0 .. p0}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->conditionallyAddFlowEvent()V

    goto/16 :goto_0

    .line 2108
    .restart local v8    # "applicationAttributeCount":I
    .restart local v9    # "applicationAttributePrefix":Ljava/lang/String;
    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 2113
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2115
    add-int/lit8 v8, v8, 0x1

    .line 2116
    const/16 v2, 0xa

    if-gt v8, v2, :cond_6

    .line 2122
    :cond_9
    const-string/jumbo v2, "events_key_ref"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2123
    const-string/jumbo v4, "attribute_key"

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2124
    const-string/jumbo v4, "attribute_value"

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mProvider:Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    const-string/jumbo v4, "attributes"

    move-object/from16 v0, v17

    invoke-virtual {v2, v4, v0}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v14

    .line 2128
    .local v14, "id":J
    const-wide/16 v4, -0x1

    cmp-long v2, v4, v14

    if-nez v2, :cond_a

    .line 2130
    new-instance v2, Ljava/lang/AssertionError;

    const-string/jumbo v3, "Inserting attribute failed"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 2133
    :cond_a
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentValues;->clear()V

    goto/16 :goto_1
.end method

.method tagScreen(Ljava/lang/String;)V
    .locals 11
    .param p1, "screen"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    .line 2186
    iget-object v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mProvider:Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    invoke-static {v0}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->getOpenSessionId(Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;)Ljava/lang/Long;

    move-result-object v7

    .line 2187
    .local v7, "openSessionId":Ljava/lang/Long;
    if-nez v7, :cond_1

    .line 2239
    :cond_0
    :goto_0
    return-void

    .line 2199
    :cond_1
    const/4 v6, 0x0

    .line 2202
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mProvider:Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    const-string/jumbo v1, "event_history"

    sget-object v2, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->PROJECTION_TAG_SCREEN:[Ljava/lang/String;

    sget-object v3, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->SELECTION_TAG_SCREEN:Ljava/lang/String;

    .line 2203
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 2204
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x1

    .line 2205
    invoke-virtual {v7}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    sget-object v5, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->SORT_ORDER_TAG_SCREEN:Ljava/lang/String;

    .line 2202
    invoke-virtual/range {v0 .. v5}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2207
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2209
    const-string/jumbo v0, "name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 2221
    if-eqz v6, :cond_0

    .line 2223
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2224
    const/4 v6, 0x0

    goto :goto_0

    .line 2220
    :catchall_0
    move-exception v0

    .line 2221
    if-eqz v6, :cond_2

    .line 2223
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2224
    const/4 v6, 0x0

    .line 2226
    :cond_2
    throw v0

    .line 2221
    :cond_3
    if-eqz v6, :cond_4

    .line 2223
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2224
    const/4 v6, 0x0

    .line 2231
    :cond_4
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 2232
    .local v8, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "name"

    invoke-virtual {v8, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2233
    const-string/jumbo v0, "type"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2234
    const-string/jumbo v0, "session_key_ref"

    invoke-virtual {v8, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2235
    const-string/jumbo v0, "processed_in_blob"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 2236
    iget-object v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mProvider:Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    const-string/jumbo v1, "event_history"

    invoke-virtual {v0, v1, v8}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2238
    invoke-direct {p0}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->conditionallyAddFlowEvent()V

    goto :goto_0
.end method

.method upload(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 2458
    sget-object v1, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->sIsUploadingMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mApiKey:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2465
    iget-object v1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mUploadHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mUploadHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2495
    :cond_0
    :goto_0
    return-void

    .line 2471
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mProvider:Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    invoke-static {v1}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->preUploadBuildBlobs(Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;)V

    .line 2473
    sget-object v1, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->sIsUploadingMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mApiKey:Ljava/lang/String;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2474
    iget-object v1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mUploadHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mUploadHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2476
    :catch_0
    move-exception v0

    .line 2483
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->sIsUploadingMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mApiKey:Ljava/lang/String;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2486
    if-eqz p1, :cond_0

    .line 2492
    new-instance v1, Ljava/lang/Thread;

    const-string/jumbo v2, "upload_callback"

    invoke-direct {v1, p1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
