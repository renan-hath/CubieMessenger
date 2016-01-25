.class public Lcom/liquable/nemo/sdk/model/AccessToken;
.super Ljava/lang/Object;
.source "AccessToken.java"


# static fields
.field private static final KEY_ACCESS_TOKEN:Ljava/lang/String; = "com.cubie.openapi.sdk.model.AccessToken.accessToken"

.field private static final KEY_EXPIRE_TIME:Ljava/lang/String; = "com.cubie.openapi.sdk.model.AccessToken.expireTime"

.field private static final KEY_OPEN_API_APP_ID:Ljava/lang/String; = "com.cubie.openapi.sdk.model.AccessToken.openApiAppId"

.field private static final KEY_UID:Ljava/lang/String; = "com.cubie.openapi.sdk.model.AccessToken.uid"


# instance fields
.field private final accessToken:Ljava/lang/String;

.field private final expireTime:J

.field private final openApiAppId:Ljava/lang/String;

.field private final uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "openApiAppId"    # Ljava/lang/String;
    .param p3, "accessToken"    # Ljava/lang/String;
    .param p4, "expireTime"    # J

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/liquable/nemo/sdk/model/AccessToken;->uid:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/liquable/nemo/sdk/model/AccessToken;->openApiAppId:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/liquable/nemo/sdk/model/AccessToken;->accessToken:Ljava/lang/String;

    .line 43
    iput-wide p4, p0, Lcom/liquable/nemo/sdk/model/AccessToken;->expireTime:J

    .line 44
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Lcom/liquable/nemo/sdk/model/AccessToken;
    .locals 6
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 11
    new-instance v0, Lcom/liquable/nemo/sdk/model/AccessToken;

    const-string/jumbo v1, "com.cubie.openapi.sdk.model.AccessToken.uid"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.cubie.openapi.sdk.model.AccessToken.openApiAppId"

    .line 12
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.cubie.openapi.sdk.model.AccessToken.accessToken"

    .line 13
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.cubie.openapi.sdk.model.AccessToken.expireTime"

    .line 14
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/sdk/model/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static fromJsonString(Ljava/lang/String;)Lcom/liquable/nemo/sdk/model/AccessToken;
    .locals 8
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 19
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 20
    .local v7, "obj":Lorg/json/JSONObject;
    new-instance v0, Lcom/liquable/nemo/sdk/model/AccessToken;

    const-string/jumbo v1, "com.cubie.openapi.sdk.model.AccessToken.uid"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.cubie.openapi.sdk.model.AccessToken.openApiAppId"

    .line 21
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.cubie.openapi.sdk.model.AccessToken.accessToken"

    .line 22
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.cubie.openapi.sdk.model.AccessToken.expireTime"

    .line 23
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/sdk/model/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 24
    .end local v7    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    .line 25
    .local v6, "e":Lorg/json/JSONException;
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fail to decode JSON to AccessToken:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/liquable/nemo/sdk/model/AccessToken;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getExpireTime()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/liquable/nemo/sdk/model/AccessToken;->expireTime:J

    return-wide v0
.end method

.method public getOpenApiAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/liquable/nemo/sdk/model/AccessToken;->openApiAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/liquable/nemo/sdk/model/AccessToken;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/liquable/nemo/sdk/model/AccessToken;->accessToken:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/liquable/nemo/sdk/model/AccessToken;->expireTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 67
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 68
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "com.cubie.openapi.sdk.model.AccessToken.uid"

    iget-object v2, p0, Lcom/liquable/nemo/sdk/model/AccessToken;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string/jumbo v1, "com.cubie.openapi.sdk.model.AccessToken.openApiAppId"

    iget-object v2, p0, Lcom/liquable/nemo/sdk/model/AccessToken;->openApiAppId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string/jumbo v1, "com.cubie.openapi.sdk.model.AccessToken.accessToken"

    iget-object v2, p0, Lcom/liquable/nemo/sdk/model/AccessToken;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string/jumbo v1, "com.cubie.openapi.sdk.model.AccessToken.expireTime"

    iget-wide v2, p0, Lcom/liquable/nemo/sdk/model/AccessToken;->expireTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 72
    return-object v0
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 77
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 78
    .local v1, "obj":Lorg/json/JSONObject;
    const-string/jumbo v2, "com.cubie.openapi.sdk.model.AccessToken.uid"

    iget-object v3, p0, Lcom/liquable/nemo/sdk/model/AccessToken;->uid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    const-string/jumbo v2, "com.cubie.openapi.sdk.model.AccessToken.openApiAppId"

    iget-object v3, p0, Lcom/liquable/nemo/sdk/model/AccessToken;->openApiAppId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string/jumbo v2, "com.cubie.openapi.sdk.model.AccessToken.accessToken"

    iget-object v3, p0, Lcom/liquable/nemo/sdk/model/AccessToken;->accessToken:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    const-string/jumbo v2, "com.cubie.openapi.sdk.model.AccessToken.expireTime"

    iget-wide v3, p0, Lcom/liquable/nemo/sdk/model/AccessToken;->expireTime:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 82
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 83
    .end local v1    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "fail to encode AccessToken to JSON"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AccessToken [uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/sdk/model/AccessToken;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", openApiAppId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/sdk/model/AccessToken;->openApiAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", accessToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/sdk/model/AccessToken;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", expireTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/sdk/model/AccessToken;->expireTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
