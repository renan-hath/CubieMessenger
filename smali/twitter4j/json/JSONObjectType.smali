.class public final Ltwitter4j/json/JSONObjectType;
.super Ljava/lang/Object;
.source "JSONObjectType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltwitter4j/json/JSONObjectType$Type;
    }
.end annotation


# static fields
.field private static final logger:Ltwitter4j/internal/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Ltwitter4j/json/JSONObjectType;

    invoke-static {v0}, Ltwitter4j/internal/logging/Logger;->getLogger(Ljava/lang/Class;)Ltwitter4j/internal/logging/Logger;

    move-result-object v0

    sput-object v0, Ltwitter4j/json/JSONObjectType;->logger:Ltwitter4j/internal/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static determine(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/json/JSONObjectType$Type;
    .locals 5
    .param p0, "json"    # Ltwitter4j/internal/org/json/JSONObject;

    .prologue
    .line 72
    const-string/jumbo v2, "sender"

    invoke-virtual {p0, v2}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    sget-object v2, Ltwitter4j/json/JSONObjectType$Type;->SENDER:Ltwitter4j/json/JSONObjectType$Type;

    .line 132
    :goto_0
    return-object v2

    .line 74
    :cond_0
    const-string/jumbo v2, "text"

    invoke-virtual {p0, v2}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 75
    sget-object v2, Ltwitter4j/json/JSONObjectType$Type;->STATUS:Ltwitter4j/json/JSONObjectType$Type;

    goto :goto_0

    .line 76
    :cond_1
    const-string/jumbo v2, "direct_message"

    invoke-virtual {p0, v2}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 77
    sget-object v2, Ltwitter4j/json/JSONObjectType$Type;->DIRECT_MESSAGE:Ltwitter4j/json/JSONObjectType$Type;

    goto :goto_0

    .line 78
    :cond_2
    const-string/jumbo v2, "delete"

    invoke-virtual {p0, v2}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 79
    sget-object v2, Ltwitter4j/json/JSONObjectType$Type;->DELETE:Ltwitter4j/json/JSONObjectType$Type;

    goto :goto_0

    .line 80
    :cond_3
    const-string/jumbo v2, "limit"

    invoke-virtual {p0, v2}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 81
    sget-object v2, Ltwitter4j/json/JSONObjectType$Type;->LIMIT:Ltwitter4j/json/JSONObjectType$Type;

    goto :goto_0

    .line 82
    :cond_4
    const-string/jumbo v2, "warning"

    invoke-virtual {p0, v2}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 83
    sget-object v2, Ltwitter4j/json/JSONObjectType$Type;->STALL_WARNING:Ltwitter4j/json/JSONObjectType$Type;

    goto :goto_0

    .line 84
    :cond_5
    const-string/jumbo v2, "scrub_geo"

    invoke-virtual {p0, v2}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 85
    sget-object v2, Ltwitter4j/json/JSONObjectType$Type;->SCRUB_GEO:Ltwitter4j/json/JSONObjectType$Type;

    goto :goto_0

    .line 86
    :cond_6
    const-string/jumbo v2, "friends"

    invoke-virtual {p0, v2}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 87
    sget-object v2, Ltwitter4j/json/JSONObjectType$Type;->FRIENDS:Ltwitter4j/json/JSONObjectType$Type;

    goto :goto_0

    .line 88
    :cond_7
    const-string/jumbo v2, "event"

    invoke-virtual {p0, v2}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 91
    :try_start_0
    const-string/jumbo v2, "event"

    invoke-virtual {p0, v2}, Ltwitter4j/internal/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "event":Ljava/lang/String;
    const-string/jumbo v2, "favorite"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 93
    sget-object v2, Ltwitter4j/json/JSONObjectType$Type;->FAVORITE:Ltwitter4j/json/JSONObjectType$Type;

    goto :goto_0

    .line 94
    :cond_8
    const-string/jumbo v2, "unfavorite"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 95
    sget-object v2, Ltwitter4j/json/JSONObjectType$Type;->UNFAVORITE:Ltwitter4j/json/JSONObjectType$Type;

    goto :goto_0

    .line 96
    :cond_9
    const-string/jumbo v2, "follow"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 97
    sget-object v2, Ltwitter4j/json/JSONObjectType$Type;->FOLLOW:Ltwitter4j/json/JSONObjectType$Type;

    goto/16 :goto_0

    .line 98
    :cond_a
    const-string/jumbo v2, "unfollow"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 99
    sget-object v2, Ltwitter4j/json/JSONObjectType$Type;->UNFOLLOW:Ltwitter4j/json/JSONObjectType$Type;

    goto/16 :goto_0

    .line 100
    :cond_b
    const-string/jumbo v2, "list"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 101
    const-string/jumbo v2, "list_member_added"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 102
    sget-object v2, Ltwitter4j/json/JSONObjectType$Type;->USER_LIST_MEMBER_ADDED:Ltwitter4j/json/JSONObjectType$Type;

    goto/16 :goto_0

    .line 103
    :cond_c
    const-string/jumbo v2, "list_member_removed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 104
    sget-object v2, Ltwitter4j/json/JSONObjectType$Type;->USER_LIST_MEMBER_DELETED:Ltwitter4j/json/JSONObjectType$Type;

    goto/16 :goto_0

    .line 105
    :cond_d
    const-string/jumbo v2, "list_user_subscribed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 106
    sget-object v2, Ltwitter4j/json/JSONObjectType$Type;->USER_LIST_SUBSCRIBED:Ltwitter4j/json/JSONObjectType$Type;

    goto/16 :goto_0

    .line 107
    :cond_e
    const-string/jumbo v2, "list_user_unsubscribed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 108
    sget-object v2, Ltwitter4j/json/JSONObjectType$Type;->USER_LIST_UNSUBSCRIBED:Ltwitter4j/json/JSONObjectType$Type;

    goto/16 :goto_0

    .line 109
    :cond_f
    const-string/jumbo v2, "list_created"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 110
    sget-object v2, Ltwitter4j/json/JSONObjectType$Type;->USER_LIST_CREATED:Ltwitter4j/json/JSONObjectType$Type;

    goto/16 :goto_0

    .line 111
    :cond_10
    const-string/jumbo v2, "list_updated"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 112
    sget-object v2, Ltwitter4j/json/JSONObjectType$Type;->USER_LIST_UPDATED:Ltwitter4j/json/JSONObjectType$Type;

    goto/16 :goto_0

    .line 113
    :cond_11
    const-string/jumbo v2, "list_destroyed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 114
    sget-object v2, Ltwitter4j/json/JSONObjectType$Type;->USER_LIST_DESTROYED:Ltwitter4j/json/JSONObjectType$Type;

    goto/16 :goto_0

    .line 116
    :cond_12
    const-string/jumbo v2, "user_update"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 117
    sget-object v2, Ltwitter4j/json/JSONObjectType$Type;->USER_UPDATE:Ltwitter4j/json/JSONObjectType$Type;

    goto/16 :goto_0

    .line 118
    :cond_13
    const-string/jumbo v2, "block"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 119
    sget-object v2, Ltwitter4j/json/JSONObjectType$Type;->BLOCK:Ltwitter4j/json/JSONObjectType$Type;

    goto/16 :goto_0

    .line 120
    :cond_14
    const-string/jumbo v2, "unblock"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 121
    sget-object v2, Ltwitter4j/json/JSONObjectType$Type;->UNBLOCK:Ltwitter4j/json/JSONObjectType$Type;
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 123
    .end local v0    # "event":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 125
    .local v1, "jsone":Ltwitter4j/internal/org/json/JSONException;
    :try_start_1
    sget-object v2, Ltwitter4j/json/JSONObjectType;->logger:Ltwitter4j/internal/logging/Logger;

    const-string/jumbo v3, "Failed to get event element: "

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Ltwitter4j/internal/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ltwitter4j/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 132
    .end local v1    # "jsone":Ltwitter4j/internal/org/json/JSONException;
    :cond_15
    :goto_1
    sget-object v2, Ltwitter4j/json/JSONObjectType$Type;->UNKNOWN:Ltwitter4j/json/JSONObjectType$Type;

    goto/16 :goto_0

    .line 129
    :cond_16
    const-string/jumbo v2, "disconnect"

    invoke-virtual {p0, v2}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 130
    sget-object v2, Ltwitter4j/json/JSONObjectType$Type;->DISCONNECTION:Ltwitter4j/json/JSONObjectType$Type;

    goto/16 :goto_0

    .line 126
    .restart local v1    # "jsone":Ltwitter4j/internal/org/json/JSONException;
    :catch_1
    move-exception v2

    goto :goto_1
.end method
