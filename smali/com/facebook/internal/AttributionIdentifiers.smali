.class public Lcom/facebook/internal/AttributionIdentifiers;
.super Ljava/lang/Object;
.source "AttributionIdentifiers.java"


# static fields
.field private static final ANDROID_ID_COLUMN_NAME:Ljava/lang/String; = "androidid"

.field private static final ATTRIBUTION_ID_COLUMN_NAME:Ljava/lang/String; = "aid"

.field private static final ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

.field private static final CONNECTION_RESULT_SUCCESS:I = 0x0

.field private static final IDENTIFIER_REFRESH_INTERVAL_MILLIS:J = 0x36ee80L

.field private static final LIMIT_TRACKING_COLUMN_NAME:Ljava/lang/String; = "limit_tracking"

.field private static final TAG:Ljava/lang/String;

.field private static recentlyFetchedIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;


# instance fields
.field private androidAdvertiserId:Ljava/lang/String;

.field private attributionId:Ljava/lang/String;

.field private fetchTime:J

.field private limitTracking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/facebook/internal/AttributionIdentifiers;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/AttributionIdentifiers;->TAG:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "content://com.facebook.katana.provider.AttributionIdProvider"

    .line 37
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/AttributionIdentifiers;->ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAndroidId(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    new-instance v5, Lcom/facebook/internal/AttributionIdentifiers;

    invoke-direct {v5}, Lcom/facebook/internal/AttributionIdentifiers;-><init>()V

    .line 59
    .local v5, "identifiers":Lcom/facebook/internal/AttributionIdentifiers;
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    if-ne v8, v9, :cond_1

    .line 60
    new-instance v8, Lcom/facebook/FacebookException;

    const-string/jumbo v9, "getAndroidId cannot be called on the main thread."

    invoke-direct {v8, v9}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :catch_0
    move-exception v2

    .line 99
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "android_id"

    invoke-static {v8, v2}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 101
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-object v5

    .line 62
    :cond_1
    :try_start_1
    const-string/jumbo v8, "com.google.android.gms.common.GooglePlayServicesUtil"

    const-string/jumbo v9, "isGooglePlayServicesAvailable"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/content/Context;

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Lcom/facebook/internal/Utility;->getMethodQuietly(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 68
    .local v6, "isGooglePlayServicesAvailable":Ljava/lang/reflect/Method;
    if-eqz v6, :cond_0

    .line 72
    const/4 v8, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p0, v9, v10

    invoke-static {v8, v6, v9}, Lcom/facebook/internal/Utility;->invokeMethodQuietly(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 73
    .local v1, "connectionResult":Ljava/lang/Object;
    instance-of v8, v1, Ljava/lang/Integer;

    if-eqz v8, :cond_0

    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "connectionResult":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_0

    .line 77
    const-string/jumbo v8, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    const-string/jumbo v9, "getAdvertisingIdInfo"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/content/Context;

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Lcom/facebook/internal/Utility;->getMethodQuietly(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 82
    .local v3, "getAdvertisingIdInfo":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    .line 85
    const/4 v8, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p0, v9, v10

    invoke-static {v8, v3, v9}, Lcom/facebook/internal/Utility;->invokeMethodQuietly(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 86
    .local v0, "advertisingInfo":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string/jumbo v9, "getId"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-static {v8, v9, v10}, Lcom/facebook/internal/Utility;->getMethodQuietly(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 91
    .local v4, "getId":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string/jumbo v9, "isLimitAdTrackingEnabled"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-static {v8, v9, v10}, Lcom/facebook/internal/Utility;->getMethodQuietly(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 92
    .local v7, "isLimitAdTrackingEnabled":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_0

    if-eqz v7, :cond_0

    .line 96
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0, v4, v8}, Lcom/facebook/internal/Utility;->invokeMethodQuietly(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, v5, Lcom/facebook/internal/AttributionIdentifiers;->androidAdvertiserId:Ljava/lang/String;

    .line 97
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0, v7, v8}, Lcom/facebook/internal/Utility;->invokeMethodQuietly(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iput-boolean v8, v5, Lcom/facebook/internal/AttributionIdentifiers;->limitTracking:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x0

    .line 105
    sget-object v0, Lcom/facebook/internal/AttributionIdentifiers;->recentlyFetchedIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

    if-eqz v0, :cond_1

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v3, Lcom/facebook/internal/AttributionIdentifiers;->recentlyFetchedIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

    iget-wide v3, v3, Lcom/facebook/internal/AttributionIdentifiers;->fetchTime:J

    sub-long/2addr v0, v3

    const-wide/32 v3, 0x36ee80

    cmp-long v0, v0, v3

    if-gez v0, :cond_1

    .line 107
    sget-object v10, Lcom/facebook/internal/AttributionIdentifiers;->recentlyFetchedIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

    .line 138
    :cond_0
    :goto_0
    return-object v10

    .line 110
    :cond_1
    invoke-static {p0}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidId(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v10

    .line 113
    .local v10, "identifiers":Lcom/facebook/internal/AttributionIdentifiers;
    const/4 v0, 0x3

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "aid"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "androidid"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string/jumbo v1, "limit_tracking"

    aput-object v1, v2, v0

    .line 114
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/facebook/internal/AttributionIdentifiers;->ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 115
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const-string/jumbo v0, "aid"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 119
    .local v7, "attributionColumnIndex":I
    const-string/jumbo v0, "androidid"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 120
    .local v6, "androidIdColumnIndex":I
    const-string/jumbo v0, "limit_tracking"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 122
    .local v11, "limitTrackingColumnIndex":I
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/facebook/internal/AttributionIdentifiers;->attributionId:Ljava/lang/String;

    .line 126
    if-lez v6, :cond_2

    if-lez v11, :cond_2

    invoke-virtual {v10}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 127
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/facebook/internal/AttributionIdentifiers;->androidAdvertiserId:Ljava/lang/String;

    .line 128
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v10, Lcom/facebook/internal/AttributionIdentifiers;->limitTracking:Z

    .line 130
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v10, Lcom/facebook/internal/AttributionIdentifiers;->fetchTime:J

    .line 137
    sput-object v10, Lcom/facebook/internal/AttributionIdentifiers;->recentlyFetchedIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

    goto :goto_0

    .line 131
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "androidIdColumnIndex":I
    .end local v7    # "attributionColumnIndex":I
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v11    # "limitTrackingColumnIndex":I
    :catch_0
    move-exception v9

    .line 132
    .local v9, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/facebook/internal/AttributionIdentifiers;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Caught unexpected exception in getAttributionId(): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v12

    .line 133
    goto/16 :goto_0
.end method


# virtual methods
.method public getAndroidAdvertiserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/facebook/internal/AttributionIdentifiers;->androidAdvertiserId:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/facebook/internal/AttributionIdentifiers;->attributionId:Ljava/lang/String;

    return-object v0
.end method

.method public isTrackingLimited()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/facebook/internal/AttributionIdentifiers;->limitTracking:Z

    return v0
.end method
