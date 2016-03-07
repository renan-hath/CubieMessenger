.class public Lcom/liquable/nemo/util/Pref;
.super Ljava/lang/Object;
.source "Pref.java"


# static fields
.field private static final DEFAULT_END_HOUR:I = 0x17

.field private static final DEFAULT_END_MINUTE:I = 0x0

.field private static final DEFAULT_START_HOUR:I = 0x8

.field private static final DEFAULT_START_MINUTE:I = 0x0

.field static final ENABLE_NOTIFICATION:Ljava/lang/String; = "ENABLE_NOTIFICATION"

.field private static final ENDPOINT_SERVERS:Ljava/lang/String; = "ENDPOINT_SERVERS"

.field private static final FAVORITE_EMOJI_MAX_SIZE:I = 0x28

.field private static final FAVORITE_EMOJI_PREFERENCE_NAME:Ljava/lang/String; = "FAVORITE_EMOJI"

.field private static final FAVORITE_STICKER_PREFERENCE_NAME:Ljava/lang/String; = "FAVORITE_STICKER"

.field private static final NEMO_PREFERENCE_NAME:Ljava/lang/String; = "com.liquable.nemo.regist"

.field private static final NEXT_PICK_S3_END_POINT_TIME:Ljava/lang/String; = "nextPickS3EndPointTime"

.field static final NOTIFY_RING_TONE:Ljava/lang/String; = "NOTIFY_RING_TONE"

.field private static final NOTIFY_VIBRATION:Ljava/lang/String; = "NOTIFY_VIBRATION"

.field private static final PICK_S3_END_POINT_BACK_OFF_INDEX:Ljava/lang/String; = "pickS3EndPointBackOffIndex"

.field private static final S3_END_POINT:Ljava/lang/String; = "s3EndPoint"

.field private static final TOKEN_AVAILABLE_DURATION:I = 0x1b7740

.field private static final debugLogger:Lcom/liquable/nemo/util/Logger;

.field private static final keysToPreserved:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/liquable/nemo/db/PreferenceDao$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;

.field private final logger:Lcom/liquable/nemo/util/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/liquable/nemo/util/Pref;->keysToPreserved:Ljava/util/Map;

    .line 54
    sget-object v0, Lcom/liquable/nemo/util/Pref;->keysToPreserved:Ljava/util/Map;

    const-string/jumbo v1, "com.liquable.nemo.USER_ID"

    sget-object v2, Lcom/liquable/nemo/db/PreferenceDao$Type;->STRING:Lcom/liquable/nemo/db/PreferenceDao$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/liquable/nemo/util/Pref;->keysToPreserved:Ljava/util/Map;

    const-string/jumbo v1, "AUTO_SCHEDULE_SYNC_CONTACTS"

    sget-object v2, Lcom/liquable/nemo/db/PreferenceDao$Type;->BOOLEAN:Lcom/liquable/nemo/db/PreferenceDao$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/liquable/nemo/util/Pref;->keysToPreserved:Ljava/util/Map;

    const-string/jumbo v1, "show_double_tap_to_like_artwork_description"

    sget-object v2, Lcom/liquable/nemo/db/PreferenceDao$Type;->BOOLEAN:Lcom/liquable/nemo/db/PreferenceDao$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/liquable/nemo/util/Pref;->keysToPreserved:Ljava/util/Map;

    const-string/jumbo v1, "SHOW_DRAG_HANDLE_TIPS"

    sget-object v2, Lcom/liquable/nemo/db/PreferenceDao$Type;->BOOLEAN:Lcom/liquable/nemo/db/PreferenceDao$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/liquable/nemo/util/Pref;->keysToPreserved:Ljava/util/Map;

    const-string/jumbo v1, "SHOW_SECRET_MSG_LOCK_TIPS"

    sget-object v2, Lcom/liquable/nemo/db/PreferenceDao$Type;->BOOLEAN:Lcom/liquable/nemo/db/PreferenceDao$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/liquable/nemo/util/Pref;->keysToPreserved:Ljava/util/Map;

    const-string/jumbo v1, "SHOW_SECRET_MSG_UNLOCK_TIPS"

    sget-object v2, Lcom/liquable/nemo/db/PreferenceDao$Type;->BOOLEAN:Lcom/liquable/nemo/db/PreferenceDao$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/liquable/nemo/util/Pref;->keysToPreserved:Ljava/util/Map;

    const-string/jumbo v1, "SHOW_VOICE_MESSAGE_SETTING_TIPS"

    sget-object v2, Lcom/liquable/nemo/db/PreferenceDao$Type;->BOOLEAN:Lcom/liquable/nemo/db/PreferenceDao$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/liquable/nemo/util/Pref;->keysToPreserved:Ljava/util/Map;

    const-string/jumbo v1, "PLAY_VOICE_MESSAGE_USING_EARPIECE"

    sget-object v2, Lcom/liquable/nemo/db/PreferenceDao$Type;->BOOLEAN:Lcom/liquable/nemo/db/PreferenceDao$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/liquable/nemo/util/Pref;->keysToPreserved:Ljava/util/Map;

    const-string/jumbo v1, "ENABLE_ALL_NOTIFICATION"

    sget-object v2, Lcom/liquable/nemo/db/PreferenceDao$Type;->BOOLEAN:Lcom/liquable/nemo/db/PreferenceDao$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/liquable/nemo/util/Pref;->keysToPreserved:Ljava/util/Map;

    const-string/jumbo v1, "ENABLE_RINGTONE_NOTIFICATION"

    sget-object v2, Lcom/liquable/nemo/db/PreferenceDao$Type;->BOOLEAN:Lcom/liquable/nemo/db/PreferenceDao$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/liquable/nemo/util/Pref;->keysToPreserved:Ljava/util/Map;

    const-string/jumbo v1, "NOTIFICATION_SHOW_CONTENT"

    sget-object v2, Lcom/liquable/nemo/db/PreferenceDao$Type;->BOOLEAN:Lcom/liquable/nemo/db/PreferenceDao$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/liquable/nemo/util/Pref;->keysToPreserved:Ljava/util/Map;

    const-string/jumbo v1, "cubie_head_enabled"

    sget-object v2, Lcom/liquable/nemo/db/PreferenceDao$Type;->BOOLEAN:Lcom/liquable/nemo/db/PreferenceDao$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/liquable/nemo/util/Pref;->keysToPreserved:Ljava/util/Map;

    const-string/jumbo v1, "cubie_head_always_on"

    sget-object v2, Lcom/liquable/nemo/db/PreferenceDao$Type;->BOOLEAN:Lcom/liquable/nemo/db/PreferenceDao$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/liquable/nemo/util/Pref;->keysToPreserved:Ljava/util/Map;

    const-string/jumbo v1, "notify_new_arrival_at_bottom"

    sget-object v2, Lcom/liquable/nemo/db/PreferenceDao$Type;->BOOLEAN:Lcom/liquable/nemo/db/PreferenceDao$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/liquable/nemo/util/Pref;->keysToPreserved:Ljava/util/Map;

    const-string/jumbo v1, "forum_reply_notification"

    sget-object v2, Lcom/liquable/nemo/db/PreferenceDao$Type;->BOOLEAN:Lcom/liquable/nemo/db/PreferenceDao$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/liquable/nemo/util/Pref;->keysToPreserved:Ljava/util/Map;

    const-string/jumbo v1, "notification_time_enable"

    sget-object v2, Lcom/liquable/nemo/db/PreferenceDao$Type;->BOOLEAN:Lcom/liquable/nemo/db/PreferenceDao$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/liquable/nemo/util/Pref;->keysToPreserved:Ljava/util/Map;

    const-string/jumbo v1, "notification_start_time_hour"

    sget-object v2, Lcom/liquable/nemo/db/PreferenceDao$Type;->INT:Lcom/liquable/nemo/db/PreferenceDao$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/liquable/nemo/util/Pref;->keysToPreserved:Ljava/util/Map;

    const-string/jumbo v1, "notification_start_time_minute"

    sget-object v2, Lcom/liquable/nemo/db/PreferenceDao$Type;->INT:Lcom/liquable/nemo/db/PreferenceDao$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/liquable/nemo/util/Pref;->keysToPreserved:Ljava/util/Map;

    const-string/jumbo v1, "notification_end_time_hour"

    sget-object v2, Lcom/liquable/nemo/db/PreferenceDao$Type;->INT:Lcom/liquable/nemo/db/PreferenceDao$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/liquable/nemo/util/Pref;->keysToPreserved:Ljava/util/Map;

    const-string/jumbo v1, "notification_end_time_minute"

    sget-object v2, Lcom/liquable/nemo/db/PreferenceDao$Type;->INT:Lcom/liquable/nemo/db/PreferenceDao$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/liquable/nemo/util/Pref;->keysToPreserved:Ljava/util/Map;

    const-string/jumbo v1, "PRESS_ENTER_TO_SEND"

    sget-object v2, Lcom/liquable/nemo/db/PreferenceDao$Type;->BOOLEAN:Lcom/liquable/nemo/db/PreferenceDao$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/liquable/nemo/util/Pref;->keysToPreserved:Ljava/util/Map;

    const-string/jumbo v1, "REMOVE_MEDIA_FILES"

    sget-object v2, Lcom/liquable/nemo/db/PreferenceDao$Type;->BOOLEAN:Lcom/liquable/nemo/db/PreferenceDao$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/liquable/nemo/util/Pref;->keysToPreserved:Ljava/util/Map;

    const-string/jumbo v1, "offline_sync_mode"

    sget-object v2, Lcom/liquable/nemo/db/PreferenceDao$Type;->BOOLEAN:Lcom/liquable/nemo/db/PreferenceDao$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-class v0, Lcom/liquable/nemo/util/Pref;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/util/Pref;->debugLogger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-static {}, Lcom/liquable/nemo/util/Logger;->getInstance()Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/util/Pref;->logger:Lcom/liquable/nemo/util/Logger;

    .line 98
    iput-object p1, p0, Lcom/liquable/nemo/util/Pref;->context:Landroid/content/Context;

    .line 99
    return-void
.end method

.method private getFacebookAccessToken()Lcom/liquable/nemo/friend/facebook/FacebookAccessToken;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 315
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "FACEBOOK_ACCESS_TOKEN"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 316
    .local v2, "accessToken":Ljava/lang/String;
    const-string/jumbo v4, "FACEBOOK_ACCESS_EXPIRES"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 318
    .local v0, "accessExpires":J
    new-instance v4, Lcom/liquable/nemo/friend/facebook/FacebookAccessToken;

    invoke-direct {v4, v2, v0, v1}, Lcom/liquable/nemo/friend/facebook/FacebookAccessToken;-><init>(Ljava/lang/String;J)V

    return-object v4
.end method

.method private getNemoPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 461
    iget-object v0, p0, Lcom/liquable/nemo/util/Pref;->context:Landroid/content/Context;

    const-string/jumbo v1, "com.liquable.nemo.regist"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private isSharePaintToFacebook()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1146
    sget-object v1, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    sget-object v2, Lcom/liquable/nemo/client/ServerType;->TEST_ON_PRODUCTION:Lcom/liquable/nemo/client/ServerType;

    if-ne v1, v2, :cond_0

    .line 1147
    const/4 v1, 0x1

    .line 1151
    :goto_0
    return v1

    .line 1150
    :cond_0
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1151
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "SHARE_PAINT_TO_FACEBOOK"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method private listToString(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1375
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1376
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1377
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1378
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1379
    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1376
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1382
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private saveCodes(Ljava/lang/String;Ljava/util/List;)V
    .locals 10
    .param p1, "prefName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "newCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v9, 0x28

    const/4 v8, 0x0

    .line 1522
    iget-object v7, p0, Lcom/liquable/nemo/util/Pref;->context:Landroid/content/Context;

    invoke-virtual {v7, p1, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1524
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const/4 v7, 0x0

    invoke-interface {v4, p1, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1525
    .local v3, "existCodes":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1526
    .local v1, "currentCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 1527
    const-string/jumbo v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1530
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1531
    .local v6, "resultCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1532
    invoke-static {p2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1533
    invoke-interface {v6, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1534
    invoke-interface {v6, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1536
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v9, :cond_1

    .line 1537
    invoke-interface {v6, v8, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    .line 1540
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1541
    .local v5, "result":Ljava/lang/StringBuilder;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1542
    .local v0, "code":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1544
    .end local v0    # "code":Ljava/lang/String;
    :cond_2
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1545
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, p1, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1546
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1547
    return-void
.end method

.method private setFacebookAccessToken(Ljava/lang/String;J)V
    .locals 2
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "expire"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1646
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1648
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "FACEBOOK_ACCESS_TOKEN"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1649
    const-string/jumbo v1, "FACEBOOK_ACCESS_EXPIRES"

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1650
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1651
    return-void
.end method

.method private setPreviousNotification(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 1705
    iget-object v2, p0, Lcom/liquable/nemo/util/Pref;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1706
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1707
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "ENABLE_NOTIFICATION"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1708
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1709
    return-void
.end method

.method private setSharePaintToFacebook(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "isShared"    # Ljava/lang/Boolean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1156
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1158
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "SHARE_PAINT_TO_FACEBOOK"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1159
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1160
    return-void
.end method

.method private stringToList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1763
    const-string/jumbo v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1764
    .local v0, "codes":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method


# virtual methods
.method public addAdwaysCampaignRecord(Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;)V
    .locals 4
    .param p1, "adwaysCampaignRecord"    # Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/liquable/nemo/util/Pref;->getAdwaysCampaignRecords()Ljava/util/Map;

    move-result-object v0

    .line 104
    .local v0, "adwaysCampaignRecords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;>;"
    invoke-virtual {p1}, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 107
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "ADWAYS_CAMPAIGN_RECORDS"

    .line 108
    invoke-static {}, Lcom/liquable/nemo/json/SimpleJsonMapper;->getInstance()Lcom/liquable/nemo/json/SimpleJsonMapper;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/liquable/nemo/json/SimpleJsonMapper;->encode(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 107
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 109
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 110
    return-void
.end method

.method public addSendSmsCount()V
    .locals 5

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 118
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "send_sms_count"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 119
    .local v1, "sendSmsCount":I
    const-string/jumbo v2, "send_sms_count"

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 121
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 122
    return-void
.end method

.method public backup(Ljava/lang/String;Lcom/liquable/nemo/db/PreferenceDao;)Z
    .locals 6
    .param p1, "ownerUid"    # Ljava/lang/String;
    .param p2, "preferenceDao"    # Lcom/liquable/nemo/db/PreferenceDao;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 126
    .local v0, "allPrefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 127
    .local v1, "key":Ljava/lang/String;
    sget-object v2, Lcom/liquable/nemo/util/Pref;->keysToPreserved:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    sget-object v2, Lcom/liquable/nemo/util/Pref;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "backup:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 131
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/liquable/nemo/util/Pref;->keysToPreserved:Ljava/util/Map;

    .line 133
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 128
    invoke-virtual {v2, v4}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 134
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v2, Lcom/liquable/nemo/util/Pref;->keysToPreserved:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/db/PreferenceDao$Type;

    invoke-virtual {p2, v1, v4, v2}, Lcom/liquable/nemo/db/PreferenceDao;->put(Ljava/lang/String;Ljava/lang/Object;Lcom/liquable/nemo/db/PreferenceDao$Type;)Z

    goto :goto_0

    .line 137
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public clearAwsSessionCredentials()V
    .locals 2

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 142
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "AWS_ACCESS_KEY_ID"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 143
    const-string/jumbo v1, "AWS_SECRET_ACCESS_KEY"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 144
    const-string/jumbo v1, "AWS_SESSION_TOKEN"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 145
    const-string/jumbo v1, "AWS_EXPIRATION"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 146
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 147
    return-void
.end method

.method public deleteAdwaysProductId(Ljava/lang/String;)V
    .locals 4
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/liquable/nemo/util/Pref;->getAdwaysCampaignRecords()Ljava/util/Map;

    move-result-object v0

    .line 151
    .local v0, "adwaysCampaignRecords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 161
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 158
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "ADWAYS_CAMPAIGN_RECORDS"

    .line 159
    invoke-static {}, Lcom/liquable/nemo/json/SimpleJsonMapper;->getInstance()Lcom/liquable/nemo/json/SimpleJsonMapper;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/liquable/nemo/json/SimpleJsonMapper;->encode(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 158
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 160
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public findLiteSecureProtocolIncompatibleVersion()Lcom/liquable/nemo/NemoVersion;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 164
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 165
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "LITE_SECURE_PROTOCOL_INCOMPATIBLE_NEMO_VERSION"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "found":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 169
    :try_start_0
    invoke-static {v1}, Lcom/liquable/nemo/NemoVersion;->fromString(Ljava/lang/String;)Lcom/liquable/nemo/NemoVersion;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 175
    :cond_0
    :goto_0
    return-object v3

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public findRpcAccessToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1774
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1775
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "RPC_ACCESS_TOKEN"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public generateToken()Ljava/lang/String;
    .locals 10

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 182
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v6, "TOKEN"

    const-string/jumbo v7, ""

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 183
    .local v4, "token":Ljava/lang/String;
    const-string/jumbo v6, "LAST_GENERATE_TIME"

    const-wide/16 v7, 0x0

    invoke-interface {v1, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 184
    .local v2, "time":J
    invoke-static {v4}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    const-wide/32 v8, 0x1b7740

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    move-object v5, v4

    .line 193
    .end local v4    # "token":Ljava/lang/String;
    .local v5, "token":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 188
    .end local v5    # "token":Ljava/lang/String;
    .restart local v4    # "token":Ljava/lang/String;
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 189
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    .line 190
    const-string/jumbo v6, "TOKEN"

    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 191
    const-string/jumbo v6, "LAST_GENERATE_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-interface {v0, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 192
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object v5, v4

    .line 193
    .end local v4    # "token":Ljava/lang/String;
    .restart local v5    # "token":Ljava/lang/String;
    goto :goto_0
.end method

.method public getAdwaysCampaignRecords()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 198
    .local v1, "adwaysCampaignRecords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;>;"
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string/jumbo v6, "ADWAYS_CAMPAIGN_RECORDS"

    const-string/jumbo v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 200
    .local v4, "raw":Ljava/lang/String;
    invoke-static {v4}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v2, v1

    .line 212
    .end local v1    # "adwaysCampaignRecords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;>;"
    .local v2, "adwaysCampaignRecords":Ljava/lang/Object;, "Ljava/util/Map<Ljava/lang/String;Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;>;"
    :goto_0
    return-object v2

    .line 205
    .end local v2    # "adwaysCampaignRecords":Ljava/lang/Object;, "Ljava/util/Map<Ljava/lang/String;Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;>;"
    .restart local v1    # "adwaysCampaignRecords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;>;"
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/liquable/nemo/json/SimpleJsonMapper;->getInstance()Lcom/liquable/nemo/json/SimpleJsonMapper;

    move-result-object v5

    new-instance v6, Lcom/liquable/nemo/util/Pref$1;

    invoke-direct {v6, p0}, Lcom/liquable/nemo/util/Pref$1;-><init>(Lcom/liquable/nemo/util/Pref;)V

    .line 206
    invoke-virtual {v5, v4, v6}, Lcom/liquable/nemo/json/SimpleJsonMapper;->decode(Ljava/lang/String;Lorg/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/util/Map;

    move-object v1, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v2, v1

    .line 212
    .restart local v2    # "adwaysCampaignRecords":Ljava/lang/Object;, "Ljava/util/Map<Ljava/lang/String;Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;>;"
    goto :goto_0

    .line 208
    .end local v2    # "adwaysCampaignRecords":Ljava/lang/Object;, "Ljava/util/Map<Ljava/lang/String;Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;>;"
    :catch_0
    move-exception v3

    .line 209
    .local v3, "ignore":Ljava/io/IOException;
    iget-object v5, p0, Lcom/liquable/nemo/util/Pref;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "load AdwaysCampaignRecord failed, raw: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public getAwsSessionCredentials()Lcom/liquable/aws/AwsSessionCredentialsDto;
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 216
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v8

    .line 218
    .local v8, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v0, "AWS_EXPIRATION"

    const-wide/16 v1, 0x0

    invoke-interface {v8, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 219
    .local v4, "expiration":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, v4, v0

    const-wide/32 v2, 0x2932e00

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    move-object v0, v9

    .line 231
    :goto_0
    return-object v0

    .line 223
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/liquable/nemo/crypt/Encryption;->createDESEncryption()Lcom/liquable/nemo/crypt/Encryption;

    move-result-object v7

    .line 224
    .local v7, "encryption":Lcom/liquable/nemo/crypt/Encryption;
    new-instance v0, Lcom/liquable/aws/AwsSessionCredentialsDto;

    const-string/jumbo v1, "AWS_ACCESS_KEY_ID"

    const-string/jumbo v2, ""

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/liquable/nemo/crypt/Encryption;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "AWS_SECRET_ACCESS_KEY"

    const-string/jumbo v3, ""

    .line 226
    invoke-interface {v8, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/liquable/nemo/crypt/Encryption;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "AWS_SESSION_TOKEN"

    const-string/jumbo v10, ""

    .line 227
    invoke-interface {v8, v3, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/liquable/nemo/crypt/Encryption;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {v0 .. v5}, Lcom/liquable/aws/AwsSessionCredentialsDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 229
    .end local v7    # "encryption":Lcom/liquable/nemo/crypt/Encryption;
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/security/GeneralSecurityException;
    move-object v0, v9

    .line 231
    goto :goto_0
.end method

.method public getBestS3Endpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/liquable/nemo/util/Pref;->isUseDefaultS3EndPoint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    const-string/jumbo v0, "s3.amazonaws.com"

    .line 239
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/util/Pref;->getS3EndPoint()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getBillingSupportCheckTime(Ljava/lang/String;)J
    .locals 4
    .param p1, "productType"    # Ljava/lang/String;

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 244
    .local v0, "prefs":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IN_APP_BILLING_SUPPORT_TS_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public getCameraMode()Lcom/liquable/nemo/main/CameraMode;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 248
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 249
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v6, "CAMERA_TAB_VIDEO_MODE"

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 250
    .local v5, "videoMode":Z
    const-string/jumbo v6, "CAMERA_TAB_SECRET_MODE"

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 251
    .local v4, "secretMode":Z
    const-string/jumbo v6, "CAMERA_TAB_FLASH_MODE"

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, "flashMode":Ljava/lang/String;
    const-string/jumbo v6, "CAMERA_TAB_CAMERA_ID"

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 253
    .local v0, "cameraId":I
    new-instance v1, Lcom/liquable/nemo/main/CameraMode;

    invoke-direct {v1, v2, v0, v5, v4}, Lcom/liquable/nemo/main/CameraMode;-><init>(Ljava/lang/String;IZZ)V

    .line 254
    .local v1, "config":Lcom/liquable/nemo/main/CameraMode;
    return-object v1
.end method

.method public getComposteUid()Lcom/liquable/nemo/model/account/CompositeUid;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 267
    invoke-virtual {p0}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 270
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/liquable/nemo/model/account/CompositeUid;

    invoke-virtual {p0}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/liquable/nemo/model/account/CompositeUid;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public getCountryCodeIso3166()Ljava/lang/String;
    .locals 3

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 275
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "COUNTRY_CODE_ISO3166"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCubieHeadPosition()Landroid/graphics/Point;
    .locals 5

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 286
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "CUBIE_HEAD_POSITION_X"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 287
    .local v1, "x":I
    const-string/jumbo v3, "CUBIE_HEAD_POSITION_Y"

    const/16 v4, 0x64

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 288
    .local v2, "y":I
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v3
.end method

.method public getCurrentForumCountry()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1806
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1807
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "CURRENT_FORUM_COUNTRY"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDefaultWallpaperFileName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 293
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "DEFAULT_WALLPAPER_CODE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDisabledStickerCategories()Ljava/util/List;
    .locals 3
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
    .line 297
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 298
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "DISABLED_STICKER_CATEGORIES"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/liquable/nemo/util/Pref;->stringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getFavoriteEmojis()Ljava/util/List;
    .locals 6
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
    const/4 v5, 0x0

    .line 324
    iget-object v3, p0, Lcom/liquable/nemo/util/Pref;->context:Landroid/content/Context;

    const-string/jumbo v4, "FAVORITE_EMOJI"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 326
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "FAVORITE_EMOJI"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "emojiString":Ljava/lang/String;
    invoke-static {v0}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 328
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 331
    :goto_0
    return-object v3

    .line 330
    :cond_0
    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 331
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v3, 0x14

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-interface {v1, v5, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    goto :goto_0
.end method

.method public getFavoriteStickers()Ljava/util/List;
    .locals 6
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
    const/4 v5, 0x0

    .line 337
    iget-object v3, p0, Lcom/liquable/nemo/util/Pref;->context:Landroid/content/Context;

    const-string/jumbo v4, "FAVORITE_STICKER"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 339
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "FAVORITE_STICKER"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 340
    .local v2, "stickers":Ljava/lang/String;
    invoke-static {v2}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 341
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 344
    :goto_0
    return-object v3

    .line 343
    :cond_0
    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 344
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v3, 0x14

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-interface {v0, v5, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    goto :goto_0
.end method

.method public getFbuid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 352
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "fbuid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getFontSize()I
    .locals 4

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 364
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "FONT_SIZE"

    iget-object v2, p0, Lcom/liquable/nemo/util/Pref;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c002f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getForumSupportedCountry()Ljava/util/List;
    .locals 4
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
    .line 1791
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1792
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "FORUM_SUPPORTED_COUNTRY"

    const-string/jumbo v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1793
    .local v1, "supportStrs":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1794
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 1796
    :goto_0
    return-object v2

    :cond_0
    invoke-direct {p0, v1}, Lcom/liquable/nemo/util/Pref;->stringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method public declared-synchronized getInstallId()Ljava/lang/String;
    .locals 6

    .prologue
    .line 375
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 377
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "INSTALL_ID"

    const-string/jumbo v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, "installId":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    move-object v2, v1

    .line 385
    .end local v1    # "installId":Ljava/lang/String;
    .local v2, "installId":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-object v2

    .line 381
    .end local v2    # "installId":Ljava/lang/String;
    .restart local v1    # "installId":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 382
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 383
    const-string/jumbo v4, "INSTALL_ID"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 384
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v1

    .line 385
    .end local v1    # "installId":Ljava/lang/String;
    .restart local v2    # "installId":Ljava/lang/String;
    goto :goto_0

    .line 375
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "installId":Ljava/lang/String;
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getInstallReferrer()Lcom/liquable/nemo/util/InstallReferrer;
    .locals 4

    .prologue
    .line 389
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 390
    .local v0, "prefs":Landroid/content/SharedPreferences;
    new-instance v1, Lcom/liquable/nemo/util/InstallReferrer;

    const-string/jumbo v2, "install_referrer"

    const-string/jumbo v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/liquable/nemo/util/InstallReferrer;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public getLastDetectedExternalImageMediaId()I
    .locals 3

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 401
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "LAST_DETECTED_EXTERNAL_IMAGE_MEDIA_ID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getLastQueryRecommendFriendTime()J
    .locals 4

    .prologue
    .line 413
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 414
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "LAST_QUERY_RECOMMEND_FRIEND_LIST_TIME"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public getLastReadNoticeId()J
    .locals 4

    .prologue
    .line 418
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 419
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "LAST_READ_NOTICE_ID"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public getLastResumeTime()J
    .locals 4

    .prologue
    .line 430
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 431
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "LAST_RESUME_TIME"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public getLastSubmitActivationTime()J
    .locals 4

    .prologue
    .line 435
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 436
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "LAST_SUBMIT_ACTIVATION_TIME"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public getLastTrimArtworkCacheTime()J
    .locals 4

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 441
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "LAST_TRIM_ARTWORK_CACHE_TIME"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public getLastTrimTempCacheTime()J
    .locals 4

    .prologue
    .line 445
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 446
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "LAST_TRIM_TEMP_CACHE_TIME"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public getMyIP()Ljava/lang/String;
    .locals 3

    .prologue
    .line 450
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 451
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "CLIENT_IP_ADDRESS"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNemoVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 465
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 466
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "NEMO_VERSION"

    sget-object v2, Lcom/liquable/nemo/Constants;->CURRENT_VERSION:Lcom/liquable/nemo/NemoVersion;

    invoke-virtual {v2}, Lcom/liquable/nemo/NemoVersion;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNextPickS3EndPointTime()J
    .locals 4

    .prologue
    .line 477
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 478
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "nextPickS3EndPointTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public getNickname()Ljava/lang/String;
    .locals 3

    .prologue
    .line 488
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 489
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "com.liquable.nemo.NICKNAME"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNotificationEndTime()Ljava/util/Date;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 494
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    .line 495
    .local v6, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v0, "notification_end_time_hour"

    const/16 v2, 0x17

    invoke-interface {v6, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 496
    .local v4, "hour":I
    const-string/jumbo v0, "notification_end_time_minute"

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 497
    .local v5, "minute":I
    new-instance v0, Ljava/util/Date;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v5}, Ljava/util/Date;-><init>(IIIII)V

    return-object v0
.end method

.method public getNotificationSound()Ljava/lang/String;
    .locals 3

    .prologue
    .line 501
    iget-object v1, p0, Lcom/liquable/nemo/util/Pref;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 502
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "NOTIFY_RING_TONE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNotificationStartTime()Ljava/util/Date;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 514
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    .line 515
    .local v6, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v0, "notification_start_time_hour"

    const/16 v2, 0x8

    invoke-interface {v6, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 516
    .local v4, "hour":I
    const-string/jumbo v0, "notification_start_time_minute"

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 518
    .local v5, "minute":I
    new-instance v0, Ljava/util/Date;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v5}, Ljava/util/Date;-><init>(IIIII)V

    return-object v0
.end method

.method public getPasscode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 522
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 523
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "PASSCODE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 535
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 536
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "PHONE_NUMBER"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPickS3EndPointBackOffIndex()I
    .locals 3

    .prologue
    .line 540
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 541
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "pickS3EndPointBackOffIndex"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getProfileCreateTime()J
    .locals 4

    .prologue
    .line 551
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 552
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "PROFILE_CREATE_TIME"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public getRegionCode()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 563
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 564
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "REGION_CODE"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRegistrationType()Lcom/liquable/nemo/regist/RegistrationType;
    .locals 4

    .prologue
    .line 568
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 569
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "REGISTRATION_TYPE"

    sget-object v3, Lcom/liquable/nemo/regist/RegistrationType;->PHONE:Lcom/liquable/nemo/regist/RegistrationType;

    invoke-virtual {v3}, Lcom/liquable/nemo/regist/RegistrationType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 570
    .local v1, "type":Ljava/lang/String;
    invoke-static {v1}, Lcom/liquable/nemo/regist/RegistrationType;->valueOf(Ljava/lang/String;)Lcom/liquable/nemo/regist/RegistrationType;

    move-result-object v2

    return-object v2
.end method

.method public getRestoreTransactionsTime()J
    .locals 4

    .prologue
    .line 582
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 583
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "RESTORE_TRANSACTIONS_TS"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public getRingtoneSetting()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 587
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 588
    .local v1, "settings":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "ENABLE_RINGTONE_NOTIFICATION"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 589
    invoke-virtual {p0}, Lcom/liquable/nemo/util/Pref;->isAllNotificationEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 590
    .local v0, "enableNotify":Z
    :goto_0
    return v0

    .line 589
    .end local v0    # "enableNotify":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getS3EndPoint()Ljava/lang/String;
    .locals 3

    .prologue
    .line 601
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 602
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "s3EndPoint"

    const-string/jumbo v2, "s3.amazonaws.com"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getScheduleTaskLastRunTime(Ljava/lang/String;)J
    .locals 4
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 612
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 613
    .local v0, "prefs":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "LAST_RUN_TIME_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public getSelectedStickerCategories()Ljava/util/List;
    .locals 5
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
    .line 617
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 618
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "STICKER_CATEGORY"

    const-string/jumbo v4, "cupcake,rabbit,rageface"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 619
    .local v0, "code":Ljava/lang/String;
    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 620
    .local v2, "split":[Ljava/lang/String;
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public getSendSmsCount()I
    .locals 3

    .prologue
    .line 627
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 629
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "send_sms_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getSortedStickerCategories()Ljava/util/List;
    .locals 3
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
    .line 633
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 634
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "SORTED_STICKER_CATEGORIES"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/liquable/nemo/util/Pref;->stringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 644
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 645
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "TOKEN"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTwilioCapabilityToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 649
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 650
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "TWILIO_CAPABILITY_TOKEN"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTwitterCredential()Lcom/liquable/nemo/friend/twitter/TwitterAccessToken;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 660
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 661
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "TWITTER_CREDENTIAL_TOKEN"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 662
    .local v1, "token":Ljava/lang/String;
    const-string/jumbo v4, "TWITTER_CREDENTIAL_TOKEN_SECRET"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 664
    .local v2, "tokenSecret":Ljava/lang/String;
    invoke-static {v1}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 665
    new-instance v3, Lcom/liquable/nemo/friend/twitter/TwitterAccessToken;

    invoke-direct {v3, v1, v2}, Lcom/liquable/nemo/friend/twitter/TwitterAccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    :cond_0
    return-object v3
.end method

.method public getTwitterId()Ljava/lang/Long;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 671
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 672
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "twitterId"

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 673
    .local v1, "twitterId":J
    cmp-long v3, v1, v4

    if-nez v3, :cond_0

    .line 674
    const/4 v3, 0x0

    .line 676
    :goto_0
    return-object v3

    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0
.end method

.method public getUid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 688
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 689
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "com.liquable.nemo.USER_ID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getUsername()Ljava/lang/String;
    .locals 3

    .prologue
    .line 693
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 694
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "com.liquable.nemo.USER_NAME"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getVibrationSetting()Z
    .locals 4

    .prologue
    .line 698
    iget-object v2, p0, Lcom/liquable/nemo/util/Pref;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 699
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/liquable/nemo/util/Pref;->isAllNotificationEnable()Z

    move-result v0

    .line 700
    .local v0, "enableNotify":Z
    if-nez v0, :cond_0

    .line 701
    const/4 v2, 0x0

    .line 703
    :goto_0
    return v2

    :cond_0
    const-string/jumbo v2, "NOTIFY_VIBRATION"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_0
.end method

.method public getVisibleChatGroupCount()I
    .locals 3

    .prologue
    .line 715
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 716
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "VISIBLE_CHAT_GROUP_COUNT"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getYoutubeRecentSearchKeys()Ljava/util/List;
    .locals 5
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
    .line 726
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 727
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "YOUTUBE_RECENT_SEARCH_KEY"

    const-string/jumbo v4, "Cubie Messenger,K-pop,funny"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 728
    .local v0, "code":Ljava/lang/String;
    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 729
    .local v2, "split":[Ljava/lang/String;
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public hasDeletedChatGroup()Z
    .locals 3

    .prologue
    .line 743
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 744
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "HAS_DELETED_CHAT_GROUP"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public hasSetPasscode()Z
    .locals 1

    .prologue
    .line 748
    invoke-virtual {p0}, Lcom/liquable/nemo/util/Pref;->getPasscode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAccountExists()Z
    .locals 1

    .prologue
    .line 752
    invoke-virtual {p0}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAllNotificationEnable()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 758
    invoke-virtual {p0}, Lcom/liquable/nemo/util/Pref;->isPreviousNotificationEnable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 759
    invoke-virtual {p0, v2}, Lcom/liquable/nemo/util/Pref;->setVibrationSetting(Z)V

    .line 760
    invoke-virtual {p0, v2}, Lcom/liquable/nemo/util/Pref;->setRingtoneSetting(Z)V

    .line 761
    invoke-virtual {p0, v2}, Lcom/liquable/nemo/util/Pref;->setNotificationTimeEnable(Z)V

    .line 763
    invoke-direct {p0, v3}, Lcom/liquable/nemo/util/Pref;->setPreviousNotification(Z)V

    .line 765
    :cond_0
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 766
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "ENABLE_ALL_NOTIFICATION"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isAllowFacebookDisconnect()Z
    .locals 1

    .prologue
    .line 778
    invoke-virtual {p0}, Lcom/liquable/nemo/util/Pref;->isFacebookConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/liquable/nemo/util/Pref;->isPhoneConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAndroidAccountCreated()Z
    .locals 3

    .prologue
    .line 782
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 783
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "ANDROID_ACCOUNT_CREATED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isAutoRotateInChattingActivity()Z
    .locals 3

    .prologue
    .line 806
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 807
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "AUTO_ROTATE_CHATTING_ACTIVITY"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isAutoScheduleSyncContactsEnable()Z
    .locals 3

    .prologue
    .line 817
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 818
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "AUTO_SCHEDULE_SYNC_CONTACTS"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isAutoSyncContactsEnable()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 833
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 834
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "AUTO_SYNC_CONTACTS"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isAutomaticallyInstalledShortcut()Z
    .locals 3

    .prologue
    .line 794
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 795
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "automatically_installed_shortcut"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isBillingSupport(Ljava/lang/String;)Z
    .locals 3
    .param p1, "productType"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 839
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 840
    .local v0, "prefs":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IN_APP_BILLING_SUPPORT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isClickOnNoticeAds()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 845
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 846
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "click_on_notice_ads"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isCubieHeadAlwaysOn()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 870
    invoke-virtual {p0}, Lcom/liquable/nemo/util/Pref;->isCubieHeadEnabled()Z

    move-result v0

    .line 871
    .local v0, "enable":Z
    if-nez v0, :cond_0

    .line 875
    :goto_0
    return v2

    .line 874
    :cond_0
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 875
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "cubie_head_always_on"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_0
.end method

.method public isCubieHeadEnabled()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 885
    invoke-virtual {p0}, Lcom/liquable/nemo/util/Pref;->isAllNotificationEnable()Z

    move-result v0

    .line 886
    .local v0, "enable":Z
    if-nez v0, :cond_0

    .line 890
    :goto_0
    return v2

    .line 889
    :cond_0
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 890
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "cubie_head_enabled"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_0
.end method

.method public isDeleteLocalRedundantArtworkDirs()Z
    .locals 3

    .prologue
    .line 900
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 901
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "DELETE_LOCAL_REDUNDANT_ARTWORK_DIRS"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isDetectExternalImage()Z
    .locals 4

    .prologue
    .line 912
    invoke-virtual {p0}, Lcom/liquable/nemo/util/Pref;->isAllNotificationEnable()Z

    move-result v0

    .line 913
    .local v0, "enable":Z
    if-nez v0, :cond_0

    .line 914
    const/4 v1, 0x0

    .line 916
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "DETECT_EXTERNAL_IMAGE"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public isEnterDeleteAccount()Z
    .locals 3

    .prologue
    .line 927
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 928
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "ENTER_DELETE_ACCOUNT"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isExcludeInRecommend()Z
    .locals 3

    .prologue
    .line 939
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 940
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "EXCLUDE_IN_RECOMMEND"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isFacebookConnected()Z
    .locals 1

    .prologue
    .line 956
    invoke-virtual {p0}, Lcom/liquable/nemo/util/Pref;->getFbuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isForumReplyNotificationEnable()Z
    .locals 3

    .prologue
    .line 1822
    invoke-virtual {p0}, Lcom/liquable/nemo/util/Pref;->isAllNotificationEnable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1823
    const/4 v1, 0x0

    .line 1826
    :goto_0
    return v1

    .line 1825
    :cond_0
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1826
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "forum_reply_notification"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public isHasRecentPictureFlag()Z
    .locals 3

    .prologue
    .line 960
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 961
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "HAS_RECENT_PICTURE_FLAG"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isHideContactList()Z
    .locals 3

    .prologue
    .line 971
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 972
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "HIDE_CONTACT_LIST"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isHidePicturesFromGallery()Z
    .locals 4

    .prologue
    .line 982
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 983
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "hide_pictures_from_gallery"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 984
    .local v1, "value":Z
    return v1
.end method

.method public isHideRecommendList()Z
    .locals 3

    .prologue
    .line 994
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 995
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "HIDE_RECOMMEND_LIST"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isImageFilesWrittenToFileSystem()Z
    .locals 3

    .prologue
    .line 1005
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1006
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "IMAGE_FILES_WRITTEN_TO_FILE_SYSTEM"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isMainActivityEntered()Z
    .locals 3

    .prologue
    .line 1017
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1018
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "MAIN_ACTIVITY_ENTERED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isMe(Ljava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 1028
    invoke-virtual {p0}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isMicAvailable()Z
    .locals 3

    .prologue
    .line 1032
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1033
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "MIC_AVAILABLE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public declared-synchronized isNewInstallation()Z
    .locals 4

    .prologue
    .line 1043
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1044
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "INSTALL_ID"

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1045
    .local v0, "installId":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    monitor-exit p0

    return v2

    .line 1043
    .end local v0    # "installId":Ljava/lang/String;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public isNotificationShowContent()Z
    .locals 4

    .prologue
    .line 1049
    invoke-virtual {p0}, Lcom/liquable/nemo/util/Pref;->isAllNotificationEnable()Z

    move-result v0

    .line 1050
    .local v0, "enable":Z
    if-nez v0, :cond_0

    .line 1051
    const/4 v2, 0x0

    .line 1054
    :goto_0
    return v2

    .line 1053
    :cond_0
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1054
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "NOTIFICATION_SHOW_CONTENT"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_0
.end method

.method public isNotificationTimeEnable()Z
    .locals 3

    .prologue
    .line 1066
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1067
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "notification_time_enable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isPhoneConnected()Z
    .locals 3

    .prologue
    .line 1085
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1086
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "com.liquable.nemo.PHONE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPlayVoiceMessageUsingEarpiece()Z
    .locals 3

    .prologue
    .line 1090
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1091
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "PLAY_VOICE_MESSAGE_USING_EARPIECE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isPressEnterToSend()Z
    .locals 4

    .prologue
    .line 1101
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1102
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "PRESS_ENTER_TO_SEND"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1103
    .local v1, "value":Z
    return v1
.end method

.method public isPreviousNotificationEnable()Z
    .locals 3

    .prologue
    .line 1116
    iget-object v1, p0, Lcom/liquable/nemo/util/Pref;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1117
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "ENABLE_NOTIFICATION"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isRemoveMediaFiles()Z
    .locals 3

    .prologue
    .line 1121
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1122
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "REMOVE_MEDIA_FILES"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isSaveOriginalPhoto()Z
    .locals 4

    .prologue
    .line 1132
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1133
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "SAVE_ORIGINAL_PHOTO"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1134
    .local v1, "value":Z
    return v1
.end method

.method public isShowCaseEffectButton()Z
    .locals 3

    .prologue
    .line 1163
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1164
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "SHOW_CASE_EFFECT_BUTTON"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isShowCaseEmojiCustomStickerButton()Z
    .locals 3

    .prologue
    .line 1174
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "SHOW_CASE_EMOJI_CUSTOM_STICKER_BUTTON"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isShowCaseGalleryButton()Z
    .locals 3

    .prologue
    .line 1184
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1185
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "SHOW_CASE_GALLERY_BUTTON"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isShowCustomStickerTips()Z
    .locals 3

    .prologue
    .line 1195
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1196
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "SHOW_CUSTOM_STICKER_TIPS"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isShowDoubleTapToLikeArtworkDescription()Z
    .locals 3

    .prologue
    .line 1207
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1208
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "show_double_tap_to_like_artwork_description"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isShowDragHandleTips()Z
    .locals 3

    .prologue
    .line 1218
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1219
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "SHOW_DRAG_HANDLE_TIPS"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isShowRecentPictureGroup()Z
    .locals 3

    .prologue
    .line 1229
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1230
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "SHOW_RECENT_PICTURE_GROUP"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isShowSDCardMemoryLowWarning()Z
    .locals 3

    .prologue
    .line 1240
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "SHOW_SD_CARD_MEMORY_LOW_WARNING"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isShowSecretMessageLockTips()Z
    .locals 3

    .prologue
    .line 1248
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1249
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "SHOW_SECRET_MSG_LOCK_TIPS"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isShowSecretMessageUnlockTips()Z
    .locals 3

    .prologue
    .line 1259
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1260
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "SHOW_SECRET_MSG_UNLOCK_TIPS"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isShowVoiceMessageSettingTips()Z
    .locals 3

    .prologue
    .line 1270
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1271
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "SHOW_VOICE_MESSAGE_SETTING_TIPS"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isSmartNotificationOn()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1281
    invoke-virtual {p0}, Lcom/liquable/nemo/util/Pref;->isAllNotificationEnable()Z

    move-result v0

    .line 1282
    .local v0, "enable":Z
    if-nez v0, :cond_0

    .line 1287
    :goto_0
    return v2

    .line 1285
    :cond_0
    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1287
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "notify_new_arrival_at_bottom"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_0
.end method

.method public isSpacePublicProfile()Z
    .locals 3

    .prologue
    .line 1811
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1812
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "SPACE_PUBLIC_PROFILE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isStickerShopUpdated()Z
    .locals 3

    .prologue
    .line 1291
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1292
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "IS_STICKER_INDEX_UPDATED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isTokenAvailable()Z
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1304
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1305
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "LAST_GENERATE_TIME"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 1306
    .local v1, "time":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/32 v5, 0x1b7740

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isTriggerGetCallerId()Z
    .locals 3

    .prologue
    .line 1311
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1312
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "TRIGGER_GET_CALLER_ID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isUseDefaultS3EndPoint()Z
    .locals 3

    .prologue
    .line 1323
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1324
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "USE_DEFAULT_S3_END_POINT"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isUseNativeCamera()Z
    .locals 5

    .prologue
    .line 1334
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1335
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "USE_NATIVE_CAMERA"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-ge v2, v4, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1337
    .local v1, "value":Z
    return v1

    .line 1335
    .end local v1    # "value":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isUseNativeGallery()Z
    .locals 4

    .prologue
    .line 1347
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1348
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "USE_NATIVE_GALLERY"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1349
    .local v1, "value":Z
    return v1
.end method

.method public isUseOfflineSequence()Z
    .locals 3

    .prologue
    .line 858
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 859
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "offline_sync_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public listEndPointServers()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/client/ServerInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1359
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1361
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v6, "ENDPOINT_SERVERS"

    const/4 v8, 0x0

    invoke-interface {v1, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1362
    .local v2, "rawData":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1364
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/client/ServerInfo;>;"
    const-string/jumbo v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1365
    .local v4, "serverDatas":[Ljava/lang/String;
    array-length v8, v4

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v3, v4, v6

    .line 1366
    .local v3, "serverData":Ljava/lang/String;
    const-string/jumbo v9, ":"

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1367
    .local v5, "splitServerData":[Ljava/lang/String;
    new-instance v9, Lcom/liquable/nemo/client/ServerInfo;

    aget-object v10, v5, v7

    const/4 v11, 0x1

    aget-object v11, v5, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-direct {v9, v10, v11}, Lcom/liquable/nemo/client/ServerInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1365
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1371
    .end local v0    # "infos":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/client/ServerInfo;>;"
    .end local v3    # "serverData":Ljava/lang/String;
    .end local v4    # "serverDatas":[Ljava/lang/String;
    .end local v5    # "splitServerData":[Ljava/lang/String;
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public needToInputName()Z
    .locals 4

    .prologue
    .line 1386
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1387
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "NEED_TO_INPUT_NAME"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1388
    .local v1, "value":Z
    return v1
.end method

.method public removeAccountInfo()V
    .locals 2

    .prologue
    .line 1392
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1394
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "com.liquable.nemo.USER_ID"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1395
    const-string/jumbo v1, "com.liquable.nemo.NICKNAME"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1396
    const-string/jumbo v1, "com.liquable.nemo.USER_NAME"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1397
    const-string/jumbo v1, "com.liquable.nemo.PHONE"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1399
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1400
    return-void
.end method

.method public removeAllPreferences()V
    .locals 2

    .prologue
    .line 1403
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1404
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 1405
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1406
    return-void
.end method

.method public requirePatchChatGroupOwner()Z
    .locals 3

    .prologue
    .line 1409
    sget-object v1, Lcom/liquable/nemo/Constants;->CURRENT_VERSION:Lcom/liquable/nemo/NemoVersion;

    invoke-virtual {v1}, Lcom/liquable/nemo/NemoVersion;->getPatch()I

    move-result v1

    const/16 v2, 0x190

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1410
    .local v0, "defaultPatched":Z
    :goto_0
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "REQUIRE_PATCH_CHAT_GROUP_OWNER"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1

    .line 1409
    .end local v0    # "defaultPatched":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetSendSmsCount()V
    .locals 3

    .prologue
    .line 1417
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1419
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "send_sms_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1421
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1422
    return-void
.end method

.method public restore(Ljava/lang/String;Lcom/liquable/nemo/db/PreferenceDao;)Z
    .locals 9
    .param p1, "ownerUid"    # Ljava/lang/String;
    .param p2, "backupPreferenceDao"    # Lcom/liquable/nemo/db/PreferenceDao;

    .prologue
    .line 1425
    const-string/jumbo v5, "com.liquable.nemo.USER_ID"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Lcom/liquable/nemo/db/PreferenceDao;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1427
    .local v3, "uuid":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 1429
    sget-object v5, Lcom/liquable/nemo/util/Pref;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v6, "uuid is null"

    invoke-virtual {v5, v6}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 1432
    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1433
    sget-object v5, Lcom/liquable/nemo/util/Pref;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "uuid not matched:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    .line 1434
    const/4 v5, 0x0

    .line 1457
    :goto_0
    return v5

    .line 1437
    :cond_1
    invoke-virtual {p2}, Lcom/liquable/nemo/db/PreferenceDao;->listAll()Ljava/util/Map;

    move-result-object v0

    .line 1438
    .local v0, "backupPrefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1439
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1440
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1441
    .local v4, "value":Ljava/lang/Object;
    sget-object v6, Lcom/liquable/nemo/util/Pref;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restore:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " => "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 1442
    instance-of v6, v4, Ljava/lang/Boolean;

    if-eqz v6, :cond_2

    .line 1443
    check-cast v4, Ljava/lang/Boolean;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 1444
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v6, v4, Ljava/lang/Float;

    if-eqz v6, :cond_3

    .line 1445
    check-cast v4, Ljava/lang/Float;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 1446
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v6, v4, Ljava/lang/Integer;

    if-eqz v6, :cond_4

    .line 1447
    check-cast v4, Ljava/lang/Integer;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 1448
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v6, v4, Ljava/lang/Long;

    if-eqz v6, :cond_5

    .line 1449
    check-cast v4, Ljava/lang/Long;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v1, v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 1450
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v6, v4, Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 1451
    check-cast v4, Ljava/lang/String;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 1453
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_6
    sget-object v6, Lcom/liquable/nemo/util/Pref;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "undefined type:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " => "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1456
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_7
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1457
    const/4 v5, 0x1

    goto/16 :goto_0
.end method

.method public restoreAccountPreferenceFromProfile(Lcom/liquable/nemo/model/account/ProfileDto;)V
    .locals 1
    .param p1, "profile"    # Lcom/liquable/nemo/model/account/ProfileDto;

    .prologue
    .line 1461
    invoke-virtual {p1}, Lcom/liquable/nemo/model/account/ProfileDto;->isExcludeInRecommendFriends()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/util/Pref;->setExcludeInRecommend(Z)V

    .line 1462
    invoke-virtual {p1}, Lcom/liquable/nemo/model/account/ProfileDto;->isPublicProfile()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/util/Pref;->setSpacePublicProfile(Ljava/lang/Boolean;)V

    .line 1463
    invoke-virtual {p1}, Lcom/liquable/nemo/model/account/ProfileDto;->getFbuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/util/Pref;->setFbuid(Ljava/lang/String;)V

    .line 1464
    invoke-virtual {p1}, Lcom/liquable/nemo/model/account/ProfileDto;->getTwitterId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/util/Pref;->setTwitterId(Ljava/lang/Long;)V

    .line 1465
    return-void
.end method

.method public saveAccountInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "nickname"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "phone"    # Ljava/lang/String;

    .prologue
    .line 1472
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    .line 1473
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1475
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "com.liquable.nemo.USER_ID"

    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1476
    const-string/jumbo v3, "com.liquable.nemo.NICKNAME"

    invoke-interface {v1, v3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1477
    const-string/jumbo v3, "com.liquable.nemo.USER_NAME"

    invoke-interface {v1, v3, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1478
    const-string/jumbo v3, "com.liquable.nemo.PHONE"

    invoke-interface {v1, v3, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1480
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1481
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 1482
    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->getNickname()Ljava/lang/String;

    move-result-object v3

    .line 1481
    invoke-static {p2, v3}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1483
    if-lez v2, :cond_0

    .line 1485
    :try_start_0
    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "saveAccountInfo succeeded after :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1486
    :catch_0
    move-exception v0

    .line 1487
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->logHandledException(Ljava/lang/Throwable;)V

    .line 1490
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x1

    .line 1500
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_1
    return v3

    .line 1472
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1495
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    :try_start_1
    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "saveAccountInfo failed"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1496
    :catch_1
    move-exception v0

    .line 1497
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->logHandledException(Ljava/lang/Throwable;)V

    .line 1499
    invoke-virtual {p0}, Lcom/liquable/nemo/util/Pref;->removeAccountInfo()V

    .line 1500
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public saveAwsSessionCredentials(Lcom/liquable/aws/AwsSessionCredentialsDto;)V
    .locals 6
    .param p1, "awsSessionCredentialsDto"    # Lcom/liquable/aws/AwsSessionCredentialsDto;

    .prologue
    .line 1505
    :try_start_0
    invoke-static {}, Lcom/liquable/nemo/crypt/Encryption;->createDESEncryption()Lcom/liquable/nemo/crypt/Encryption;

    move-result-object v2

    .line 1506
    .local v2, "encryption":Lcom/liquable/nemo/crypt/Encryption;
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1507
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "AWS_ACCESS_KEY_ID"

    .line 1508
    invoke-virtual {p1}, Lcom/liquable/aws/AwsSessionCredentialsDto;->getAccessKeyId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/liquable/nemo/crypt/Encryption;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1507
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1509
    const-string/jumbo v3, "AWS_SECRET_ACCESS_KEY"

    .line 1510
    invoke-virtual {p1}, Lcom/liquable/aws/AwsSessionCredentialsDto;->getSecretAccessKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/liquable/nemo/crypt/Encryption;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1509
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1511
    const-string/jumbo v3, "AWS_SESSION_TOKEN"

    .line 1512
    invoke-virtual {p1}, Lcom/liquable/aws/AwsSessionCredentialsDto;->getSessionToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/liquable/nemo/crypt/Encryption;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1511
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1513
    const-string/jumbo v3, "AWS_EXPIRATION"

    invoke-virtual {p1}, Lcom/liquable/aws/AwsSessionCredentialsDto;->getExpiration()J

    move-result-wide v4

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1514
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1518
    return-void

    .line 1515
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "encryption":Lcom/liquable/nemo/crypt/Encryption;
    :catch_0
    move-exception v0

    .line 1516
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public saveCubieHeadPosition(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1550
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1551
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "CUBIE_HEAD_POSITION_X"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1552
    const-string/jumbo v1, "CUBIE_HEAD_POSITION_Y"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1553
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1554
    return-void
.end method

.method public saveCurrentForumCountry(Ljava/lang/String;)V
    .locals 2
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 1800
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1801
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "CURRENT_FORUM_COUNTRY"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1802
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1803
    return-void
.end method

.method public saveDefaultWallpaperCode(Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 1557
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1558
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "DEFAULT_WALLPAPER_CODE"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1559
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1560
    return-void
.end method

.method public saveEndPointServers(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/client/ServerInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1563
    .local p1, "endPointServers":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/client/ServerInfo;>;"
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1564
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1565
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/client/ServerInfo;

    .line 1566
    .local v2, "serverInfo":Lcom/liquable/nemo/client/ServerInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/liquable/nemo/client/ServerInfo;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/liquable/nemo/client/ServerInfo;->getPort()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1568
    .end local v2    # "serverInfo":Lcom/liquable/nemo/client/ServerInfo;
    :cond_0
    const-string/jumbo v3, "ENDPOINT_SERVERS"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1569
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1570
    return-void
.end method

.method public saveFavoriteEmoji(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1573
    .local p1, "newCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1577
    :goto_0
    return-void

    .line 1576
    :cond_0
    const-string/jumbo v0, "FAVORITE_EMOJI"

    invoke-direct {p0, v0, p1}, Lcom/liquable/nemo/util/Pref;->saveCodes(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method public saveFavoriteSticker(Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 1580
    invoke-static {p1}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1584
    :goto_0
    return-void

    .line 1583
    :cond_0
    const-string/jumbo v0, "FAVORITE_STICKER"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/util/Pref;->saveCodes(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method public saveForumSupportedCountry(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1785
    .local p1, "countries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1786
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "FORUM_SUPPORTED_COUNTRY"

    invoke-direct {p0, p1}, Lcom/liquable/nemo/util/Pref;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1787
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1788
    return-void
.end method

.method public saveLastQueryRecommendFriendTime()V
    .locals 4

    .prologue
    .line 1587
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1588
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "LAST_QUERY_RECOMMEND_FRIEND_LIST_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1589
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1590
    return-void
.end method

.method public saveLastSubmitActivationTime()V
    .locals 4

    .prologue
    .line 1593
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1594
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "LAST_SUBMIT_ACTIVATION_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1595
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1596
    return-void
.end method

.method public saveLastTrimArtworkCacheTime()V
    .locals 4

    .prologue
    .line 1599
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1600
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "LAST_TRIM_ARTWORK_CACHE_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1601
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1602
    return-void
.end method

.method public saveLastTrimTempCacheTime()V
    .locals 4

    .prologue
    .line 1605
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1606
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "LAST_TRIM_TEMP_CACHE_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1607
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1608
    return-void
.end method

.method public savePhoneAndNickname(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "rawPhoneNumber"    # Ljava/lang/String;
    .param p2, "regionCode"    # Ljava/lang/String;
    .param p3, "nickname"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1614
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1615
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "PHONE_NUMBER"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1616
    const-string/jumbo v1, "NICKNAME"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1617
    const-string/jumbo v1, "REGION_CODE"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1618
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1619
    return-void
.end method

.method public saveTwitterCredential(Lcom/liquable/nemo/friend/twitter/TwitterAccessToken;)V
    .locals 3
    .param p1, "accessToken"    # Lcom/liquable/nemo/friend/twitter/TwitterAccessToken;

    .prologue
    .line 1622
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1624
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "TWITTER_CREDENTIAL_TOKEN"

    invoke-virtual {p1}, Lcom/liquable/nemo/friend/twitter/TwitterAccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1625
    const-string/jumbo v1, "TWITTER_CREDENTIAL_TOKEN_SECRET"

    invoke-virtual {p1}, Lcom/liquable/nemo/friend/twitter/TwitterAccessToken;->getTokenSecret()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1627
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1628
    return-void
.end method

.method public setAllNotificationEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 770
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 772
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "ENABLE_ALL_NOTIFICATION"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 774
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 775
    return-void
.end method

.method public setAndroidAccountCreated(Z)V
    .locals 2
    .param p1, "accountCreated"    # Z

    .prologue
    .line 787
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 789
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "ANDROID_ACCOUNT_CREATED"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 790
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 791
    return-void
.end method

.method public setAutoRotateInChattingActivity(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 811
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 812
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "AUTO_ROTATE_CHATTING_ACTIVITY"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 813
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 814
    return-void
.end method

.method public setAutoScheduleSyncContactsEnable(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 822
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 824
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "AUTO_SCHEDULE_SYNC_CONTACTS"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 825
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 826
    return-void
.end method

.method public setAutomaticallyInstalledShortcut(Z)V
    .locals 2
    .param p1, "installed"    # Z

    .prologue
    .line 799
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 801
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "automatically_installed_shortcut"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 802
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 803
    return-void
.end method

.method public setBillingSupport(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "productType"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1632
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1633
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IN_APP_BILLING_SUPPORT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1634
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IN_APP_BILLING_SUPPORT_TS_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1635
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1636
    return-void
.end method

.method public setCameraMode(Lcom/liquable/nemo/main/CameraMode;)V
    .locals 3
    .param p1, "config"    # Lcom/liquable/nemo/main/CameraMode;

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 259
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "CAMERA_TAB_VIDEO_MODE"

    iget-boolean v2, p1, Lcom/liquable/nemo/main/CameraMode;->isVideoMode:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 260
    const-string/jumbo v1, "CAMERA_TAB_SECRET_MODE"

    iget-boolean v2, p1, Lcom/liquable/nemo/main/CameraMode;->isSecretMode:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 261
    const-string/jumbo v1, "CAMERA_TAB_FLASH_MODE"

    iget-object v2, p1, Lcom/liquable/nemo/main/CameraMode;->flashMode:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 262
    const-string/jumbo v1, "CAMERA_TAB_CAMERA_ID"

    iget v2, p1, Lcom/liquable/nemo/main/CameraMode;->cameraId:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 263
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 264
    return-void
.end method

.method public setClickOnNoticeAds(Z)V
    .locals 2
    .param p1, "clicked"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 851
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 853
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "click_on_notice_ads"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 854
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 855
    return-void
.end method

.method public setCountryCodeIso3166(Ljava/lang/String;)V
    .locals 2
    .param p1, "countryCodeIso3166"    # Ljava/lang/String;

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 280
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "COUNTRY_CODE_ISO3166"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 281
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 282
    return-void
.end method

.method public setCubieHeadAlwaysOn(Z)V
    .locals 2
    .param p1, "alwaysOn"    # Z

    .prologue
    .line 879
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 880
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "cubie_head_always_on"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 881
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 882
    return-void
.end method

.method public setCubieHeadEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 894
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 895
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "cubie_head_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 896
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 897
    return-void
.end method

.method public setDeleteLocalRedundantArtworkDirs(Z)V
    .locals 2
    .param p1, "deleted"    # Z

    .prologue
    .line 905
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 907
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "DELETE_LOCAL_REDUNDANT_ARTWORK_DIRS"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 908
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 909
    return-void
.end method

.method public setDetectExternalImage(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 920
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 921
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "DETECT_EXTERNAL_IMAGE"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 923
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 924
    return-void
.end method

.method public setDisabledStickerCategories(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 302
    .local p1, "codes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 303
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "DISABLED_STICKER_CATEGORIES"

    invoke-direct {p0, p1}, Lcom/liquable/nemo/util/Pref;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 304
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 305
    return-void
.end method

.method public setEnterDeleteAccount(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 932
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 934
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "ENTER_DELETE_ACCOUNT"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 935
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 936
    return-void
.end method

.method public setExcludeInRecommend(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 944
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 945
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "EXCLUDE_IN_RECOMMEND"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 946
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 947
    return-void
.end method

.method public setFbuid(Ljava/lang/String;)V
    .locals 2
    .param p1, "fbuid"    # Ljava/lang/String;

    .prologue
    .line 356
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 358
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "fbuid"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 359
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 360
    return-void
.end method

.method public setFontSize(I)V
    .locals 2
    .param p1, "fontSize"    # I

    .prologue
    .line 368
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 370
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "FONT_SIZE"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 371
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 372
    return-void
.end method

.method public setForumReplyNotification(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1830
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1831
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "forum_reply_notification"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1832
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1833
    return-void
.end method

.method public setHasDeletedChatGroup(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1654
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1655
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "HAS_DELETED_CHAT_GROUP"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1656
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1657
    return-void
.end method

.method public setHasRecentPictureFlag(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 965
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 966
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "HAS_RECENT_PICTURE_FLAG"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 967
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 968
    return-void
.end method

.method public setHideContactList(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 976
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 977
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "HIDE_CONTACT_LIST"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 978
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 979
    return-void
.end method

.method public setHidePicturesFromGallery(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 988
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 989
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "hide_pictures_from_gallery"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 990
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 991
    return-void
.end method

.method public setHideRecommendList(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 999
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1000
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "HIDE_RECOMMEND_LIST"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1001
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1002
    return-void
.end method

.method public setImageFilesWrittenToFileSystem(Z)V
    .locals 2
    .param p1, "written"    # Z

    .prologue
    .line 1010
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1012
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "IMAGE_FILES_WRITTEN_TO_FILE_SYSTEM"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1013
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1014
    return-void
.end method

.method public setInstallReferrer(Lcom/liquable/nemo/util/InstallReferrer;)V
    .locals 3
    .param p1, "installReferrer"    # Lcom/liquable/nemo/util/InstallReferrer;

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 395
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "install_referrer"

    invoke-virtual {p1}, Lcom/liquable/nemo/util/InstallReferrer;->getReferrer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/liquable/util/StringLean;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 396
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 397
    return-void
.end method

.method public setLastDetectedExternalImageMediaId(I)V
    .locals 2
    .param p1, "mediaId"    # I

    .prologue
    .line 405
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 407
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "LAST_DETECTED_EXTERNAL_IMAGE_MEDIA_ID"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 409
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 410
    return-void
.end method

.method public setLastReadNoticeId(J)V
    .locals 2
    .param p1, "noticeId"    # J

    .prologue
    .line 423
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 425
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "LAST_READ_NOTICE_ID"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 426
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 427
    return-void
.end method

.method public setLastResumeTime()V
    .locals 4

    .prologue
    .line 1660
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1662
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "LAST_RESUME_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1664
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1665
    return-void
.end method

.method public setLiteSecureProtocolIncompatibleVersion(Lcom/liquable/nemo/NemoVersion;)V
    .locals 3
    .param p1, "nemoVersion"    # Lcom/liquable/nemo/NemoVersion;

    .prologue
    .line 1668
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1669
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "LITE_SECURE_PROTOCOL_INCOMPATIBLE_NEMO_VERSION"

    invoke-virtual {p1}, Lcom/liquable/nemo/NemoVersion;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1670
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1671
    return-void
.end method

.method public setMainActivityEntered(Z)V
    .locals 2
    .param p1, "firstTimeEnteringMainActivity"    # Z

    .prologue
    .line 1022
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1023
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "MAIN_ACTIVITY_ENTERED"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1024
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1025
    return-void
.end method

.method public setMicAvailable(Z)V
    .locals 2
    .param p1, "micAvailable"    # Z

    .prologue
    .line 1037
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1038
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "MIC_AVAILABLE"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1039
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1040
    return-void
.end method

.method public setMyIP(Ljava/lang/String;)V
    .locals 2
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 455
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 456
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "CLIENT_IP_ADDRESS"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 457
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 458
    return-void
.end method

.method public setNeedToInputName(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1674
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1675
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "NEED_TO_INPUT_NAME"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1676
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1677
    return-void
.end method

.method public setNemoVersion(Ljava/lang/String;)V
    .locals 2
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 470
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 472
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "NEMO_VERSION"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 473
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 474
    return-void
.end method

.method public setNextPickS3EndPointTime(J)V
    .locals 2
    .param p1, "date"    # J

    .prologue
    .line 482
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 483
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "nextPickS3EndPointTime"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 484
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 485
    return-void
.end method

.method public setNotificationEndTime(II)V
    .locals 2
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .prologue
    .line 1680
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1682
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "notification_end_time_hour"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1683
    const-string/jumbo v1, "notification_end_time_minute"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1685
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1686
    return-void
.end method

.method public setNotificationShowContent(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 1058
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1060
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "NOTIFICATION_SHOW_CONTENT"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1062
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1063
    return-void
.end method

.method public setNotificationSound(Landroid/net/Uri;)V
    .locals 4
    .param p1, "soundUri"    # Landroid/net/Uri;

    .prologue
    .line 506
    iget-object v2, p0, Lcom/liquable/nemo/util/Pref;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 507
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 508
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "NOTIFY_RING_TONE"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 509
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 510
    return-void
.end method

.method public setNotificationStartTime(II)V
    .locals 2
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .prologue
    .line 1689
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1691
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "notification_start_time_hour"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1692
    const-string/jumbo v1, "notification_start_time_minute"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1694
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1695
    return-void
.end method

.method public setNotificationTimeEnable(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .prologue
    .line 1071
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1073
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "notification_time_enable"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1075
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1076
    return-void
.end method

.method public setPasscode(Ljava/lang/String;)V
    .locals 2
    .param p1, "passcode"    # Ljava/lang/String;

    .prologue
    .line 527
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 529
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "PASSCODE"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 530
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 531
    return-void
.end method

.method public setPatchChatGroupOwnerDone()V
    .locals 3

    .prologue
    .line 1698
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1699
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "REQUIRE_PATCH_CHAT_GROUP_OWNER"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1701
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1702
    return-void
.end method

.method public setPickS3EndPointBackOffIndex(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 545
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 546
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "pickS3EndPointBackOffIndex"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 547
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 548
    return-void
.end method

.method public setPlayVoiceMessageUsingEarpiece(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1095
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1096
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "PLAY_VOICE_MESSAGE_USING_EARPIECE"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1097
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1098
    return-void
.end method

.method public setPressEnterToSend(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1107
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1108
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "PRESS_ENTER_TO_SEND"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1109
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1110
    return-void
.end method

.method public setProfileCreateTime(J)V
    .locals 2
    .param p1, "createTime"    # J

    .prologue
    .line 556
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 557
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "PROFILE_CREATE_TIME"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 558
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 559
    return-void
.end method

.method public setRegistrationType(Lcom/liquable/nemo/regist/RegistrationType;)V
    .locals 3
    .param p1, "registrationType"    # Lcom/liquable/nemo/regist/RegistrationType;

    .prologue
    .line 574
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 576
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "REGISTRATION_TYPE"

    invoke-virtual {p1}, Lcom/liquable/nemo/regist/RegistrationType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 578
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 579
    return-void
.end method

.method public setRemoveMediaFiles(Z)V
    .locals 2
    .param p1, "autoRemove"    # Z

    .prologue
    .line 1126
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1127
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "REMOVE_MEDIA_FILES"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1128
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1129
    return-void
.end method

.method public setRestoreTransactionsTime()V
    .locals 4

    .prologue
    .line 1712
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1714
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "RESTORE_TRANSACTIONS_TS"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1715
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1716
    return-void
.end method

.method public setRingtoneSetting(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 594
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 596
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "ENABLE_RINGTONE_NOTIFICATION"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 597
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 598
    return-void
.end method

.method public setRpcAccessToken(Ljava/lang/String;)V
    .locals 2
    .param p1, "rpcAccessToken"    # Ljava/lang/String;

    .prologue
    .line 1779
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1780
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "RPC_ACCESS_TOKEN"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1781
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1782
    return-void
.end method

.method public setS3EndPoint(Ljava/lang/String;)V
    .locals 2
    .param p1, "s3EndPoint"    # Ljava/lang/String;

    .prologue
    .line 606
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 607
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "s3EndPoint"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 608
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 609
    return-void
.end method

.method public setSaveOriginalPhoto(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1138
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1139
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "SAVE_ORIGINAL_PHOTO"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1140
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1141
    return-void
.end method

.method public setScheduleTaskLastRunTime(Ljava/lang/String;J)V
    .locals 3
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 1719
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1721
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "LAST_RUN_TIME_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1722
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1723
    return-void
.end method

.method public setShowCaseEffectButton(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1168
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1169
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "SHOW_CASE_EFFECT_BUTTON"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1170
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1171
    return-void
.end method

.method public setShowCaseEmojiCustomStickerButton(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 1178
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1179
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "SHOW_CASE_EMOJI_CUSTOM_STICKER_BUTTON"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1180
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1181
    return-void
.end method

.method public setShowCaseForum(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1726
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1727
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "SHOW_CASE_FORUM"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1728
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1729
    return-void
.end method

.method public setShowCaseForumArticleList(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1732
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1733
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "SHOW_CASE_FORUM_ARTICLE_LIST"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1734
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1735
    return-void
.end method

.method public setShowCaseGalleryButton(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1189
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1190
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "SHOW_CASE_GALLERY_BUTTON"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1191
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1192
    return-void
.end method

.method public setShowCustomStickerTips(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1201
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1202
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "SHOW_CUSTOM_STICKER_TIPS"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1203
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1204
    return-void
.end method

.method public setShowDoubleTapToLikeArtworkDescription(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1212
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1213
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "show_double_tap_to_like_artwork_description"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1214
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1215
    return-void
.end method

.method public setShowDragHandleTips(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1223
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1224
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "SHOW_DRAG_HANDLE_TIPS"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1225
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1226
    return-void
.end method

.method public setShowRecentPictureGroup(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1234
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1235
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "SHOW_RECENT_PICTURE_GROUP"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1236
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1237
    return-void
.end method

.method public setShowSDCardMemoryLowWarning(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1244
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "SHOW_SD_CARD_MEMORY_LOW_WARNING"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1245
    return-void
.end method

.method public setShowSecretMessageLockTips(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1253
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1254
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "SHOW_SECRET_MSG_LOCK_TIPS"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1255
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1256
    return-void
.end method

.method public setShowSecretMessageUnlockTips(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1264
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1265
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "SHOW_SECRET_MSG_UNLOCK_TIPS"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1266
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1267
    return-void
.end method

.method public setShowVoiceMessageSettingTips(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1275
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1276
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "SHOW_VOICE_MESSAGE_SETTING_TIPS"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1277
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1278
    return-void
.end method

.method public setSmartNotification(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 1738
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1740
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "notify_new_arrival_at_bottom"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1741
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1742
    return-void
.end method

.method public setSortedStickerCategories(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 638
    .local p1, "codes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 639
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "SORTED_STICKER_CATEGORIES"

    invoke-direct {p0, p1}, Lcom/liquable/nemo/util/Pref;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 640
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 641
    return-void
.end method

.method public setSpaceNewsIcon()V
    .locals 5

    .prologue
    .line 1745
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1746
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "SHOW_SPACE_NEWS_ICON"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1747
    .local v0, "count":I
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1748
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "SHOW_SPACE_NEWS_ICON"

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1749
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1750
    return-void
.end method

.method public setSpacePublicProfile(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "isChecked"    # Ljava/lang/Boolean;

    .prologue
    .line 1816
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1817
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "SPACE_PUBLIC_PROFILE"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1818
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1819
    return-void
.end method

.method public setStickerShopUpdated(Z)V
    .locals 2
    .param p1, "isNew"    # Z

    .prologue
    .line 1296
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1298
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "IS_STICKER_INDEX_UPDATED"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1299
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1300
    return-void
.end method

.method public setTriggerGetCallerId(Z)V
    .locals 2
    .param p1, "hasCalled"    # Z

    .prologue
    .line 1316
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1318
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "TRIGGER_GET_CALLER_ID"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1319
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1320
    return-void
.end method

.method public setTwilioCapabilityToken(Ljava/lang/String;)V
    .locals 2
    .param p1, "newToken"    # Ljava/lang/String;

    .prologue
    .line 654
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 655
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "TWILIO_CAPABILITY_TOKEN"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 656
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 657
    return-void
.end method

.method public setTwitterId(Ljava/lang/Long;)V
    .locals 4
    .param p1, "twitterId"    # Ljava/lang/Long;

    .prologue
    .line 680
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 683
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "twitterId"

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 684
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 685
    return-void
.end method

.method public setUseDefaultS3EndPoint(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 1328
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1329
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "USE_DEFAULT_S3_END_POINT"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1330
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1331
    return-void
.end method

.method public setUseNativeCamera(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1341
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1342
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "USE_NATIVE_CAMERA"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1343
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1344
    return-void
.end method

.method public setUseNativeGallery(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1353
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1354
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "USE_NATIVE_GALLERY"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1355
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1356
    return-void
.end method

.method public setUseOfflineSequence(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 863
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 865
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "offline_sync_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 866
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 867
    return-void
.end method

.method public setVibrationSetting(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 707
    iget-object v2, p0, Lcom/liquable/nemo/util/Pref;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 708
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 710
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "NOTIFY_VIBRATION"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 711
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 712
    return-void
.end method

.method public setVisibleChatGroupCount(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 720
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 721
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "VISIBLE_CHAT_GROUP_COUNT"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 722
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 723
    return-void
.end method

.method public setYoutubeRecentSearchKeys(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 733
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 734
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-nez p1, :cond_0

    .line 735
    const-string/jumbo v1, "YOUTUBE_RECENT_SEARCH_KEY"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 739
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 740
    return-void

    .line 737
    :cond_0
    const-string/jumbo v1, "YOUTUBE_RECENT_SEARCH_KEY"

    invoke-direct {p0, p1}, Lcom/liquable/nemo/util/Pref;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public shouldShowCaseForum()Z
    .locals 3

    .prologue
    .line 1753
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1754
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "SHOW_CASE_FORUM"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public shouldShowCaseForumArticleList()Z
    .locals 3

    .prologue
    .line 1758
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1759
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "SHOW_CASE_FORUM_ARTICLE_LIST"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public updateNickname(Ljava/lang/String;)V
    .locals 2
    .param p1, "nickname"    # Ljava/lang/String;

    .prologue
    .line 1768
    invoke-direct {p0}, Lcom/liquable/nemo/util/Pref;->getNemoPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1769
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "com.liquable.nemo.NICKNAME"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1770
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1771
    return-void
.end method
