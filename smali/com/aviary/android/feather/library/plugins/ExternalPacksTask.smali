.class public Lcom/aviary/android/feather/library/plugins/ExternalPacksTask;
.super Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable;
.source "ExternalPacksTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/library/plugins/ExternalPacksTask$ExternalPluginsComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable",
        "<",
        "Landroid/os/Bundle;",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# static fields
.field static final sDateFormatter:Ljava/text/SimpleDateFormat;

.field static final sSimpleDateFormatter:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/aviary/android/feather/library/plugins/ExternalPacksTask;->sSimpleDateFormatter:Ljava/text/SimpleDateFormat;

    .line 54
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/aviary/android/feather/library/plugins/ExternalPacksTask;->sDateFormatter:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable;-><init>()V

    .line 57
    return-void
.end method

.method private convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v2, 0x0

    .line 105
    new-instance v1, Ljava/util/Scanner;

    invoke-direct {v1, p1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 106
    .local v1, "scanner":Ljava/util/Scanner;
    const-string/jumbo v3, "\\A"

    invoke-virtual {v1, v3}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v1

    .line 109
    :try_start_0
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/util/Scanner;->next()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 117
    :cond_0
    :goto_0
    return-object v2

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 113
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 114
    .local v0, "e":Ljava/util/NoSuchElementException;
    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public call(Lcom/aviary/android/feather/library/services/IAviaryController;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10
    .param p1, "controller"    # Lcom/aviary/android/feather/library/services/IAviaryController;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-interface {p1}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    .line 63
    .local v2, "context":Landroid/content/Context;
    const-class v7, Lcom/aviary/android/feather/library/services/FileCacheService;

    invoke-interface {p1, v7}, Lcom/aviary/android/feather/library/services/IAviaryController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/library/services/FileCacheService;

    .line 65
    .local v1, "cacheService":Lcom/aviary/android/feather/library/services/FileCacheService;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/aviary/android/feather/library/plugins/ExternalType;>;"
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 68
    .local v5, "updateDate":Ljava/util/Date;
    const/4 v6, 0x1

    .line 69
    .local v6, "useCache":Z
    if-eqz p2, :cond_0

    .line 70
    const-string/jumbo v7, "use-cache"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 71
    const-string/jumbo v7, "use-cache"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 75
    :cond_0
    invoke-virtual {p0, v1, v2, v6}, Lcom/aviary/android/feather/library/plugins/ExternalPacksTask;->download(Lcom/aviary/android/feather/library/services/FileCacheService;Landroid/content/Context;Z)Ljava/io/ByteArrayInputStream;

    move-result-object v4

    .line 76
    .local v4, "stream":Ljava/io/ByteArrayInputStream;
    if-eqz v4, :cond_1

    .line 77
    invoke-virtual {p0, v4, v3, v5}, Lcom/aviary/android/feather/library/plugins/ExternalPacksTask;->parseJSON(Ljava/io/InputStream;Ljava/util/List;Ljava/util/Date;)Z

    .line 80
    :cond_1
    if-eqz v3, :cond_2

    .line 81
    new-instance v7, Lcom/aviary/android/feather/library/plugins/ExternalPacksTask$ExternalPluginsComparator;

    invoke-direct {v7}, Lcom/aviary/android/feather/library/plugins/ExternalPacksTask$ExternalPluginsComparator;-><init>()V

    invoke-static {v3, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 84
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 85
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v7, "list"

    invoke-virtual {v0, v7, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 86
    const-string/jumbo v7, "update-time"

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 87
    return-object v0
.end method

.method public bridge synthetic call(Lcom/aviary/android/feather/library/services/IAviaryController;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Lcom/aviary/android/feather/library/plugins/ExternalPacksTask;->call(Lcom/aviary/android/feather/library/services/IAviaryController;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public download(Lcom/aviary/android/feather/library/services/FileCacheService;Landroid/content/Context;Z)Ljava/io/ByteArrayInputStream;
    .locals 7
    .param p1, "cache"    # Lcom/aviary/android/feather/library/services/FileCacheService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "useCache"    # Z

    .prologue
    const/4 v3, 0x0

    .line 131
    sget-boolean v4, Lcom/aviary/android/feather/library/log/LoggerFactory;->LOG_ENABLED:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "external-packs-task"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "download, useCache: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/aviary/android/feather/library/services/PluginService;->getCDSContentUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/aviary/android/feather/library/services/FileCacheService;->createConnection(Ljava/lang/String;)Lcom/aviary/android/feather/library/services/FileCacheService$SimpleCachedHttpUrlConnection;

    move-result-object v0

    .line 138
    .local v0, "conn":Lcom/aviary/android/feather/library/services/FileCacheService$SimpleCachedHttpUrlConnection;
    const-string/jumbo v4, "external-packs-task"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "uri: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/aviary/android/feather/library/services/FileCacheService$SimpleCachedHttpUrlConnection;->getUri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :try_start_1
    invoke-virtual {v0, p3}, Lcom/aviary/android/feather/library/services/FileCacheService$SimpleCachedHttpUrlConnection;->getInputStream(Z)Ljava/io/ByteArrayInputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 159
    .end local v0    # "conn":Lcom/aviary/android/feather/library/services/FileCacheService$SimpleCachedHttpUrlConnection;
    :cond_1
    :goto_0
    return-object v3

    .line 139
    :catch_0
    move-exception v1

    .line 140
    .local v1, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 146
    .end local v1    # "e":Ljava/net/MalformedURLException;
    .restart local v0    # "conn":Lcom/aviary/android/feather/library/services/FileCacheService$SimpleCachedHttpUrlConnection;
    :catch_1
    move-exception v1

    .line 147
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v4, "external-packs-task"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Failed to download using cache? "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 150
    if-nez p3, :cond_1

    .line 152
    const/4 v4, 0x1

    :try_start_2
    invoke-virtual {v0, v4}, Lcom/aviary/android/feather/library/services/FileCacheService$SimpleCachedHttpUrlConnection;->getInputStream(Z)Ljava/io/ByteArrayInputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    goto :goto_0

    .line 153
    :catch_2
    move-exception v2

    .line 154
    .local v2, "e1":Ljava/io/IOException;
    const-string/jumbo v4, "external-packs-task"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Failed to download using cache: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public parseJSON(Ljava/io/InputStream;Ljava/util/List;Ljava/util/Date;)Z
    .locals 32
    .param p1, "is1"    # Ljava/io/InputStream;
    .param p3, "updateDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/List",
            "<",
            "Lcom/aviary/android/feather/library/plugins/ExternalType;",
            ">;",
            "Ljava/util/Date;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 168
    .local p2, "outputList":Ljava/util/List;, "Ljava/util/List<Lcom/aviary/android/feather/library/plugins/ExternalType;>;"
    invoke-direct/range {p0 .. p1}, Lcom/aviary/android/feather/library/plugins/ExternalPacksTask;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v23

    .line 170
    .local v23, "json":Ljava/lang/String;
    sget-boolean v4, Lcom/aviary/android/feather/library/log/LoggerFactory;->LOG_ENABLED:Z

    if-eqz v4, :cond_0

    .line 171
    const-string/jumbo v4, "external-packs-task"

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    if-nez v23, :cond_1

    const/4 v4, 0x0

    .line 260
    :goto_0
    return v4

    .line 176
    :cond_1
    const/16 v28, 0x0

    .line 178
    .local v28, "object":Lorg/json/JSONObject;
    :try_start_0
    new-instance v4, Lorg/json/JSONTokener;

    move-object/from16 v0, v23

    invoke-direct {v4, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v28

    .end local v28    # "object":Lorg/json/JSONObject;
    check-cast v28, Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    .line 187
    .restart local v28    # "object":Lorg/json/JSONObject;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->clear()V

    .line 189
    const-string/jumbo v4, "updateDate"

    const-string/jumbo v5, "2000-01-01"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 191
    .local v30, "updateDateStr":Ljava/lang/String;
    :try_start_1
    sget-object v4, Lcom/aviary/android/feather/library/plugins/ExternalPacksTask;->sDateFormatter:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v14

    .line 192
    .local v14, "date":Ljava/util/Date;
    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Ljava/util/Date;->setTime(J)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_2

    .line 197
    .end local v14    # "date":Ljava/util/Date;
    :goto_1
    sget-boolean v4, Lcom/aviary/android/feather/library/log/LoggerFactory;->LOG_ENABLED:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "external-packs-task"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v31, "updateDate: "

    move-object/from16 v0, v31

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_2
    :try_start_2
    const-string/jumbo v4, "assets"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 201
    .local v12, "assets":Lorg/json/JSONArray;
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_2
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    move-result v4

    move/from16 v0, v20

    if-lt v0, v4, :cond_3

    .line 260
    const/4 v4, 0x1

    goto :goto_0

    .line 179
    .end local v12    # "assets":Lorg/json/JSONArray;
    .end local v20    # "i":I
    .end local v28    # "object":Lorg/json/JSONObject;
    .end local v30    # "updateDateStr":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 180
    .local v16, "e":Lorg/json/JSONException;
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONException;->printStackTrace()V

    .line 181
    const/4 v4, 0x0

    goto :goto_0

    .line 182
    .end local v16    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v16

    .line 183
    .local v16, "e":Ljava/lang/ClassCastException;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 184
    const/4 v4, 0x0

    goto :goto_0

    .line 193
    .end local v16    # "e":Ljava/lang/ClassCastException;
    .restart local v28    # "object":Lorg/json/JSONObject;
    .restart local v30    # "updateDateStr":Ljava/lang/String;
    :catch_2
    move-exception v16

    .line 194
    .local v16, "e":Ljava/text/ParseException;
    new-instance p3, Ljava/util/Date;

    .end local p3    # "updateDate":Ljava/util/Date;
    invoke-direct/range {p3 .. p3}, Ljava/util/Date;-><init>()V

    .restart local p3    # "updateDate":Ljava/util/Date;
    goto :goto_1

    .line 203
    .end local v16    # "e":Ljava/text/ParseException;
    .restart local v12    # "assets":Lorg/json/JSONArray;
    .restart local v20    # "i":I
    :cond_3
    :try_start_3
    move/from16 v0, v20

    invoke-virtual {v12, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    .line 205
    .local v19, "firstObject":Lorg/json/JSONObject;
    const-string/jumbo v4, "packageId"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "packageId":Ljava/lang/String;
    const-string/jumbo v4, "label"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, "label":Ljava/lang/String;
    const-string/jumbo v4, "releaseDate"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 208
    .local v29, "releaseDate":Ljava/lang/String;
    const-string/jumbo v4, "assetType"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 209
    .local v6, "assetType":I
    const-string/jumbo v4, "needsPurchase"

    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 211
    .local v7, "needsPurchase":Z
    const-string/jumbo v4, "iconUrl"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 212
    .local v21, "iconUrl":Ljava/lang/String;
    const-string/jumbo v4, "minMoaVersion"

    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 213
    .local v8, "minMoaVersion":I
    const-string/jumbo v4, "maxMoaVersion"

    const/4 v5, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 214
    .local v9, "maxMoaVersion":I
    const-string/jumbo v4, "numFilters"

    const/4 v5, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v25

    .line 215
    .local v25, "numFilters":I
    const-string/jumbo v4, "numStickers"

    const/4 v5, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v26

    .line 216
    .local v26, "numStickers":I
    const-string/jumbo v4, "numTools"

    const/4 v5, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v27

    .line 217
    .local v27, "numTools":I
    const-string/jumbo v4, "numBorders"

    const/4 v5, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v24

    .line 218
    .local v24, "numBorders":I
    const-string/jumbo v4, "stickerVersion"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    .line 219
    .local v10, "stickerVersion":I
    const-string/jumbo v4, "borderVersion"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    .line 220
    .local v11, "borderVersion":I
    const-string/jumbo v4, "featuredOrder"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v18

    .line 221
    .local v18, "featuredOrder":I
    const-string/jumbo v4, "description"

    const-string/jumbo v5, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 222
    .local v15, "description":Ljava/lang/String;
    const-string/jumbo v4, "items"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v22

    .line 225
    .local v22, "items":Lorg/json/JSONArray;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_4

    const/4 v4, 0x1

    if-lt v6, v4, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_5

    .line 226
    :cond_4
    const-string/jumbo v4, "external-packs-task"

    const-string/jumbo v5, "missing packageId, assetType of label in the current pack"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 201
    :goto_3
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_2

    .line 231
    :cond_5
    const/4 v13, 0x0

    .line 233
    .local v13, "convertedDate":Ljava/util/Date;
    :try_start_4
    sget-object v4, Lcom/aviary/android/feather/library/plugins/ExternalPacksTask;->sSimpleDateFormatter:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v13

    .line 239
    :goto_4
    :try_start_5
    new-instance v1, Lcom/aviary/android/feather/library/plugins/ExternalType;

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-direct/range {v1 .. v11}, Lcom/aviary/android/feather/library/plugins/ExternalType;-><init>(Ljava/lang/String;Ljava/lang/String;JIZIIII)V

    .line 241
    .local v1, "pack":Lcom/aviary/android/feather/library/plugins/ExternalType;
    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Lcom/aviary/android/feather/library/plugins/ExternalType;->setIconUrl(Ljava/lang/String;)V

    .line 242
    move/from16 v0, v25

    invoke-virtual {v1, v0}, Lcom/aviary/android/feather/library/plugins/ExternalType;->setNumFilters(I)V

    .line 243
    move/from16 v0, v26

    invoke-virtual {v1, v0}, Lcom/aviary/android/feather/library/plugins/ExternalType;->setNumStickers(I)V

    .line 244
    move/from16 v0, v27

    invoke-virtual {v1, v0}, Lcom/aviary/android/feather/library/plugins/ExternalType;->setNumTools(I)V

    .line 245
    move/from16 v0, v24

    invoke-virtual {v1, v0}, Lcom/aviary/android/feather/library/plugins/ExternalType;->setNumBorders(I)V

    .line 246
    invoke-virtual {v1, v15}, Lcom/aviary/android/feather/library/plugins/ExternalType;->setDescription(Ljava/lang/String;)V

    .line 247
    move/from16 v0, v18

    invoke-virtual {v1, v0}, Lcom/aviary/android/feather/library/plugins/ExternalType;->setOrder(I)V

    .line 249
    if-eqz v22, :cond_6

    .line 250
    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Lcom/aviary/android/feather/library/plugins/ExternalType;->setItems(Lorg/json/JSONArray;)V

    .line 253
    :cond_6
    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    .line 256
    .end local v1    # "pack":Lcom/aviary/android/feather/library/plugins/ExternalType;
    .end local v2    # "packageId":Ljava/lang/String;
    .end local v3    # "label":Ljava/lang/String;
    .end local v6    # "assetType":I
    .end local v7    # "needsPurchase":Z
    .end local v8    # "minMoaVersion":I
    .end local v9    # "maxMoaVersion":I
    .end local v10    # "stickerVersion":I
    .end local v11    # "borderVersion":I
    .end local v12    # "assets":Lorg/json/JSONArray;
    .end local v13    # "convertedDate":Ljava/util/Date;
    .end local v15    # "description":Ljava/lang/String;
    .end local v18    # "featuredOrder":I
    .end local v19    # "firstObject":Lorg/json/JSONObject;
    .end local v20    # "i":I
    .end local v21    # "iconUrl":Ljava/lang/String;
    .end local v22    # "items":Lorg/json/JSONArray;
    .end local v24    # "numBorders":I
    .end local v25    # "numFilters":I
    .end local v26    # "numStickers":I
    .end local v27    # "numTools":I
    .end local v29    # "releaseDate":Ljava/lang/String;
    :catch_3
    move-exception v17

    .line 257
    .local v17, "e1":Lorg/json/JSONException;
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONException;->printStackTrace()V

    .line 258
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 234
    .end local v17    # "e1":Lorg/json/JSONException;
    .restart local v2    # "packageId":Ljava/lang/String;
    .restart local v3    # "label":Ljava/lang/String;
    .restart local v6    # "assetType":I
    .restart local v7    # "needsPurchase":Z
    .restart local v8    # "minMoaVersion":I
    .restart local v9    # "maxMoaVersion":I
    .restart local v10    # "stickerVersion":I
    .restart local v11    # "borderVersion":I
    .restart local v12    # "assets":Lorg/json/JSONArray;
    .restart local v13    # "convertedDate":Ljava/util/Date;
    .restart local v15    # "description":Ljava/lang/String;
    .restart local v18    # "featuredOrder":I
    .restart local v19    # "firstObject":Lorg/json/JSONObject;
    .restart local v20    # "i":I
    .restart local v21    # "iconUrl":Ljava/lang/String;
    .restart local v22    # "items":Lorg/json/JSONArray;
    .restart local v24    # "numBorders":I
    .restart local v25    # "numFilters":I
    .restart local v26    # "numStickers":I
    .restart local v27    # "numTools":I
    .restart local v29    # "releaseDate":Ljava/lang/String;
    :catch_4
    move-exception v16

    .line 235
    .restart local v16    # "e":Ljava/text/ParseException;
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/text/ParseException;->printStackTrace()V

    .line 236
    new-instance v13, Ljava/util/Date;

    .end local v13    # "convertedDate":Ljava/util/Date;
    invoke-direct {v13}, Ljava/util/Date;-><init>()V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3

    .restart local v13    # "convertedDate":Ljava/util/Date;
    goto :goto_4
.end method
