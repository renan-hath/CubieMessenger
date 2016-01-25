.class Lcom/mixpanel/android/mpmetrics/DecideChecker;
.super Ljava/lang/Object;
.source "DecideChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mixpanel/android/mpmetrics/DecideChecker$Result;
    }
.end annotation


# instance fields
.field private final mChecks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mixpanel/android/mpmetrics/DecideUpdates;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfig:Lcom/mixpanel/android/mpmetrics/MPConfig;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mixpanel/android/mpmetrics/MPConfig;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Lcom/mixpanel/android/mpmetrics/MPConfig;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/DecideChecker;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/mixpanel/android/mpmetrics/DecideChecker;->mConfig:Lcom/mixpanel/android/mpmetrics/MPConfig;

    .line 39
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/DecideChecker;->mChecks:Ljava/util/List;

    .line 40
    return-void
.end method

.method private getDecideResponseFromServer(Ljava/lang/String;Ljava/lang/String;Lcom/mixpanel/android/mpmetrics/ServerMessage;)Ljava/lang/String;
    .locals 11
    .param p1, "unescapedToken"    # Ljava/lang/String;
    .param p2, "unescapedDistinctId"    # Ljava/lang/String;
    .param p3, "poster"    # Lcom/mixpanel/android/mpmetrics/ServerMessage;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 151
    :try_start_0
    const-string/jumbo v6, "utf-8"

    invoke-static {p1, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, "escapedToken":Ljava/lang/String;
    const-string/jumbo v6, "utf-8"

    invoke-static {p2, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 156
    .local v2, "escapedId":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "?version=1&lib=android&token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "&distinct_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "checkQuery":Ljava/lang/String;
    const/4 v6, 0x2

    new-array v5, v6, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/mixpanel/android/mpmetrics/DecideChecker;->mConfig:Lcom/mixpanel/android/mpmetrics/MPConfig;

    invoke-virtual {v7}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getDecideEndpoint()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/mixpanel/android/mpmetrics/DecideChecker;->mConfig:Lcom/mixpanel/android/mpmetrics/MPConfig;

    invoke-virtual {v7}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getDecideFallbackEndpoint()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    .line 164
    .local v5, "urls":[Ljava/lang/String;
    sget-boolean v6, Lcom/mixpanel/android/mpmetrics/MPConfig;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 165
    const-string/jumbo v6, "MixpanelAPI DecideChecker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Querying decide server at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v5, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const-string/jumbo v6, "MixpanelAPI DecideChecker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "    (with fallback "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v5, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    iget-object v6, p0, Lcom/mixpanel/android/mpmetrics/DecideChecker;->mContext:Landroid/content/Context;

    invoke-virtual {p3, v6, v5}, Lcom/mixpanel/android/mpmetrics/ServerMessage;->getUrls(Landroid/content/Context;[Ljava/lang/String;)[B

    move-result-object v4

    .line 170
    .local v4, "response":[B
    if-nez v4, :cond_1

    .line 171
    const/4 v6, 0x0

    .line 174
    :goto_0
    return-object v6

    .line 153
    .end local v0    # "checkQuery":Ljava/lang/String;
    .end local v2    # "escapedId":Ljava/lang/String;
    .end local v3    # "escapedToken":Ljava/lang/String;
    .end local v4    # "response":[B
    .end local v5    # "urls":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 154
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Mixpanel library requires utf-8 string encoding to be available"

    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 174
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "checkQuery":Ljava/lang/String;
    .restart local v2    # "escapedId":Ljava/lang/String;
    .restart local v3    # "escapedToken":Ljava/lang/String;
    .restart local v4    # "response":[B
    .restart local v5    # "urls":[Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v6, Ljava/lang/String;

    const-string/jumbo v7, "UTF-8"

    invoke-direct {v6, v4, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 175
    :catch_1
    move-exception v1

    .line 176
    .restart local v1    # "e":Ljava/io/UnsupportedEncodingException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "UTF not supported on this platform?"

    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private static getDisplayWidth(Landroid/view/Display;)I
    .locals 3
    .param p0, "display"    # Landroid/view/Display;

    .prologue
    .line 205
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-ge v1, v2, :cond_0

    .line 206
    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 210
    :goto_0
    return v1

    .line 208
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 209
    .local v0, "displaySize":Landroid/graphics/Point;
    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 210
    iget v1, v0, Landroid/graphics/Point;->x:I

    goto :goto_0
.end method

.method private static getNotificationImage(Lcom/mixpanel/android/mpmetrics/InAppNotification;Landroid/content/Context;Lcom/mixpanel/android/mpmetrics/ServerMessage;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "notification"    # Lcom/mixpanel/android/mpmetrics/InAppNotification;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "poster"    # Lcom/mixpanel/android/mpmetrics/ServerMessage;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 181
    const/4 v3, 0x0

    .line 182
    .local v3, "ret":Landroid/graphics/Bitmap;
    new-array v4, v9, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/InAppNotification;->getImage2xUrl()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    .line 184
    .local v4, "urls":[Ljava/lang/String;
    const-string/jumbo v6, "window"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 185
    .local v5, "wm":Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 186
    .local v0, "display":Landroid/view/Display;
    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/DecideChecker;->getDisplayWidth(Landroid/view/Display;)I

    move-result v1

    .line 188
    .local v1, "displayWidth":I
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/InAppNotification;->getType()Lcom/mixpanel/android/mpmetrics/InAppNotification$Type;

    move-result-object v6

    sget-object v7, Lcom/mixpanel/android/mpmetrics/InAppNotification$Type;->TAKEOVER:Lcom/mixpanel/android/mpmetrics/InAppNotification$Type;

    if-ne v6, v7, :cond_0

    const/16 v6, 0x2d0

    if-lt v1, v6, :cond_0

    .line 189
    const/4 v6, 0x2

    new-array v4, v6, [Ljava/lang/String;

    .end local v4    # "urls":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/InAppNotification;->getImage4xUrl()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/InAppNotification;->getImage2xUrl()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v9

    .line 192
    .restart local v4    # "urls":[Ljava/lang/String;
    :cond_0
    invoke-virtual {p2, p1, v4}, Lcom/mixpanel/android/mpmetrics/ServerMessage;->getUrls(Landroid/content/Context;[Ljava/lang/String;)[B

    move-result-object v2

    .line 193
    .local v2, "response":[B
    if-eqz v2, :cond_1

    .line 194
    array-length v6, v2

    invoke-static {v2, v8, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 199
    :goto_0
    return-object v3

    .line 196
    :cond_1
    const-string/jumbo v6, "MixpanelAPI DecideChecker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to download images from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static parseDecideResponse(Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/DecideChecker$Result;
    .locals 14
    .param p0, "responseString"    # Ljava/lang/String;

    .prologue
    .line 86
    new-instance v7, Lcom/mixpanel/android/mpmetrics/DecideChecker$Result;

    invoke-direct {v7}, Lcom/mixpanel/android/mpmetrics/DecideChecker$Result;-><init>()V

    .line 89
    .local v7, "ret":Lcom/mixpanel/android/mpmetrics/DecideChecker$Result;
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .local v6, "response":Lorg/json/JSONObject;
    const/4 v10, 0x0

    .line 96
    .local v10, "surveys":Lorg/json/JSONArray;
    const-string/jumbo v11, "surveys"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 98
    :try_start_1
    const-string/jumbo v11, "surveys"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    .line 104
    :cond_0
    :goto_0
    if-eqz v10, :cond_2

    .line 105
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v1, v11, :cond_2

    .line 107
    :try_start_2
    invoke-virtual {v10, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 108
    .local v9, "surveyJson":Lorg/json/JSONObject;
    new-instance v8, Lcom/mixpanel/android/mpmetrics/Survey;

    invoke-direct {v8, v9}, Lcom/mixpanel/android/mpmetrics/Survey;-><init>(Lorg/json/JSONObject;)V

    .line 109
    .local v8, "survey":Lcom/mixpanel/android/mpmetrics/Survey;
    iget-object v11, v7, Lcom/mixpanel/android/mpmetrics/DecideChecker$Result;->surveys:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/mixpanel/android/mpmetrics/BadDecideObjectException; {:try_start_2 .. :try_end_2} :catch_3

    .line 105
    .end local v8    # "survey":Lcom/mixpanel/android/mpmetrics/Survey;
    .end local v9    # "surveyJson":Lorg/json/JSONObject;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 90
    .end local v1    # "i":I
    .end local v6    # "response":Lorg/json/JSONObject;
    .end local v10    # "surveys":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v11, "MixpanelAPI DecideChecker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Mixpanel endpoint returned unparsable result:\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    return-object v7

    .line 99
    .restart local v6    # "response":Lorg/json/JSONObject;
    .restart local v10    # "surveys":Lorg/json/JSONArray;
    :catch_1
    move-exception v0

    .line 100
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string/jumbo v11, "MixpanelAPI DecideChecker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Mixpanel endpoint returned non-array JSON for surveys: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "i":I
    :catch_2
    move-exception v0

    .line 111
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string/jumbo v11, "MixpanelAPI DecideChecker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Received a strange response from surveys service: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 112
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_3
    move-exception v0

    .line 113
    .local v0, "e":Lcom/mixpanel/android/mpmetrics/BadDecideObjectException;
    const-string/jumbo v11, "MixpanelAPI DecideChecker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Received a strange response from surveys service: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 118
    .end local v0    # "e":Lcom/mixpanel/android/mpmetrics/BadDecideObjectException;
    .end local v1    # "i":I
    :cond_2
    const/4 v4, 0x0

    .line 119
    .local v4, "notifications":Lorg/json/JSONArray;
    const-string/jumbo v11, "notifications"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 121
    :try_start_3
    const-string/jumbo v11, "notifications"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v4

    .line 127
    :cond_3
    :goto_3
    if-eqz v4, :cond_1

    .line 128
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v11

    const/4 v12, 0x2

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 129
    .local v5, "notificationsToRead":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    if-eqz v4, :cond_1

    if-ge v1, v5, :cond_1

    .line 131
    :try_start_4
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 132
    .local v3, "notificationJson":Lorg/json/JSONObject;
    new-instance v2, Lcom/mixpanel/android/mpmetrics/InAppNotification;

    invoke-direct {v2, v3}, Lcom/mixpanel/android/mpmetrics/InAppNotification;-><init>(Lorg/json/JSONObject;)V

    .line 133
    .local v2, "notification":Lcom/mixpanel/android/mpmetrics/InAppNotification;
    iget-object v11, v7, Lcom/mixpanel/android/mpmetrics/DecideChecker$Result;->notifications:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lcom/mixpanel/android/mpmetrics/BadDecideObjectException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_7

    .line 129
    .end local v2    # "notification":Lcom/mixpanel/android/mpmetrics/InAppNotification;
    .end local v3    # "notificationJson":Lorg/json/JSONObject;
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 122
    .end local v1    # "i":I
    .end local v5    # "notificationsToRead":I
    :catch_4
    move-exception v0

    .line 123
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v11, "MixpanelAPI DecideChecker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Mixpanel endpoint returned non-array JSON for notifications: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 134
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "i":I
    .restart local v5    # "notificationsToRead":I
    :catch_5
    move-exception v0

    .line 135
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string/jumbo v11, "MixpanelAPI DecideChecker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Received a strange response from notifications service: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 136
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_6
    move-exception v0

    .line 137
    .local v0, "e":Lcom/mixpanel/android/mpmetrics/BadDecideObjectException;
    const-string/jumbo v11, "MixpanelAPI DecideChecker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Received a strange response from notifications service: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 138
    .end local v0    # "e":Lcom/mixpanel/android/mpmetrics/BadDecideObjectException;
    :catch_7
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v11, "MixpanelAPI DecideChecker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Not enough memory to show load notification from package: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method private runDecideCheck(Ljava/lang/String;Ljava/lang/String;Lcom/mixpanel/android/mpmetrics/ServerMessage;)Lcom/mixpanel/android/mpmetrics/DecideChecker$Result;
    .locals 8
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "distinctId"    # Ljava/lang/String;
    .param p3, "poster"    # Lcom/mixpanel/android/mpmetrics/ServerMessage;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/mixpanel/android/mpmetrics/DecideChecker;->getDecideResponseFromServer(Ljava/lang/String;Ljava/lang/String;Lcom/mixpanel/android/mpmetrics/ServerMessage;)Ljava/lang/String;

    move-result-object v4

    .line 61
    .local v4, "responseString":Ljava/lang/String;
    sget-boolean v5, Lcom/mixpanel/android/mpmetrics/MPConfig;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "MixpanelAPI DecideChecker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Mixpanel decide server response was:\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    new-instance v3, Lcom/mixpanel/android/mpmetrics/DecideChecker$Result;

    invoke-direct {v3}, Lcom/mixpanel/android/mpmetrics/DecideChecker$Result;-><init>()V

    .line 64
    .local v3, "parsed":Lcom/mixpanel/android/mpmetrics/DecideChecker$Result;
    if-eqz v4, :cond_1

    .line 65
    invoke-static {v4}, Lcom/mixpanel/android/mpmetrics/DecideChecker;->parseDecideResponse(Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/DecideChecker$Result;

    move-result-object v3

    .line 68
    :cond_1
    iget-object v5, v3, Lcom/mixpanel/android/mpmetrics/DecideChecker$Result;->notifications:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 69
    .local v2, "notificationIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mixpanel/android/mpmetrics/InAppNotification;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 70
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mixpanel/android/mpmetrics/InAppNotification;

    .line 71
    .local v1, "notification":Lcom/mixpanel/android/mpmetrics/InAppNotification;
    iget-object v5, p0, Lcom/mixpanel/android/mpmetrics/DecideChecker;->mContext:Landroid/content/Context;

    invoke-static {v1, v5, p3}, Lcom/mixpanel/android/mpmetrics/DecideChecker;->getNotificationImage(Lcom/mixpanel/android/mpmetrics/InAppNotification;Landroid/content/Context;Lcom/mixpanel/android/mpmetrics/ServerMessage;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 72
    .local v0, "image":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 73
    const-string/jumbo v5, "MixpanelAPI DecideChecker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Could not retrieve image for notification "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/InAppNotification;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", will not show the notification."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {v1, v0}, Lcom/mixpanel/android/mpmetrics/InAppNotification;->setImage(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 81
    .end local v0    # "image":Landroid/graphics/Bitmap;
    .end local v1    # "notification":Lcom/mixpanel/android/mpmetrics/InAppNotification;
    :cond_3
    return-object v3
.end method


# virtual methods
.method public addDecideCheck(Lcom/mixpanel/android/mpmetrics/DecideUpdates;)V
    .locals 1
    .param p1, "check"    # Lcom/mixpanel/android/mpmetrics/DecideUpdates;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/DecideChecker;->mChecks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method

.method public runDecideChecks(Lcom/mixpanel/android/mpmetrics/ServerMessage;)V
    .locals 5
    .param p1, "poster"    # Lcom/mixpanel/android/mpmetrics/ServerMessage;

    .prologue
    .line 47
    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/DecideChecker;->mChecks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 48
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mixpanel/android/mpmetrics/DecideUpdates;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mixpanel/android/mpmetrics/DecideUpdates;

    .line 50
    .local v2, "updates":Lcom/mixpanel/android/mpmetrics/DecideUpdates;
    invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->getDistinctId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, p1}, Lcom/mixpanel/android/mpmetrics/DecideChecker;->runDecideCheck(Ljava/lang/String;Ljava/lang/String;Lcom/mixpanel/android/mpmetrics/ServerMessage;)Lcom/mixpanel/android/mpmetrics/DecideChecker$Result;

    move-result-object v1

    .line 54
    .local v1, "result":Lcom/mixpanel/android/mpmetrics/DecideChecker$Result;
    iget-object v3, v1, Lcom/mixpanel/android/mpmetrics/DecideChecker$Result;->surveys:Ljava/util/List;

    iget-object v4, v1, Lcom/mixpanel/android/mpmetrics/DecideChecker$Result;->notifications:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->reportResults(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 57
    .end local v1    # "result":Lcom/mixpanel/android/mpmetrics/DecideChecker$Result;
    .end local v2    # "updates":Lcom/mixpanel/android/mpmetrics/DecideUpdates;
    :cond_1
    return-void
.end method
