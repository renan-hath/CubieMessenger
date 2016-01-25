.class public Lcom/liquable/nemo/sdk/OpenApiDaemon;
.super Ljava/lang/Object;
.source "OpenApiDaemon.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/liquable/nemo/model/openapi/OpenApiAppDto;",
            ">;"
        }
    .end annotation
.end field

.field private final openApiService:Lcom/liquable/nemo/client/service/OpenApiService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/liquable/nemo/sdk/OpenApiDaemon;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/sdk/OpenApiDaemon;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/liquable/nemo/client/service/OpenApiService;)V
    .locals 1
    .param p1, "openApiService"    # Lcom/liquable/nemo/client/service/OpenApiService;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/sdk/OpenApiDaemon;->cache:Ljava/util/Map;

    .line 28
    iput-object p1, p0, Lcom/liquable/nemo/sdk/OpenApiDaemon;->openApiService:Lcom/liquable/nemo/client/service/OpenApiService;

    .line 29
    return-void
.end method


# virtual methods
.method public authorize(Landroid/app/Activity;Ljava/lang/String;)Lcom/liquable/nemo/model/openapi/OpenApiAppDto;
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/model/InvalidOpenApiAppSignatureException;,
            Lcom/liquable/nemo/model/InvalidOpenApiAppKeyException;,
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/liquable/nemo/util/Contexts;->getSignatureHash(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, "signatureHash":Ljava/lang/String;
    iget-object v2, p0, Lcom/liquable/nemo/sdk/OpenApiDaemon;->openApiService:Lcom/liquable/nemo/client/service/OpenApiService;

    invoke-virtual {v2, p2, v1}, Lcom/liquable/nemo/client/service/OpenApiService;->authorizeApp(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/model/openapi/OpenApiAppDto;

    move-result-object v2

    return-object v2
.end method

.method public connect(Lcom/liquable/nemo/model/openapi/OpenApiAppDto;Lcom/liquable/nemo/sdk/model/ConnectParameters;)Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;
    .locals 3
    .param p1, "openApiAppDto"    # Lcom/liquable/nemo/model/openapi/OpenApiAppDto;
    .param p2, "connectParameters"    # Lcom/liquable/nemo/sdk/model/ConnectParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/liquable/nemo/sdk/OpenApiDaemon;->openApiService:Lcom/liquable/nemo/client/service/OpenApiService;

    invoke-virtual {p1}, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->getOpenApiAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/liquable/nemo/sdk/model/ConnectParameters;->getAppUniqueDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/client/service/OpenApiService;->connect(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;

    move-result-object v0

    return-object v0
.end method

.method public disconnectDevice(Landroid/app/Activity;Lcom/liquable/nemo/sdk/model/DisconnectParameters;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "disconnectParameters"    # Lcom/liquable/nemo/sdk/model/DisconnectParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/model/InvalidOpenApiAppSignatureException;,
            Lcom/liquable/nemo/model/InvalidOpenApiAppKeyException;,
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p2}, Lcom/liquable/nemo/sdk/model/DisconnectParameters;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/liquable/nemo/sdk/OpenApiDaemon;->authorize(Landroid/app/Activity;Ljava/lang/String;)Lcom/liquable/nemo/model/openapi/OpenApiAppDto;

    move-result-object v0

    .line 47
    .local v0, "app":Lcom/liquable/nemo/model/openapi/OpenApiAppDto;
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/liquable/nemo/sdk/model/DisconnectParameters;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "disconnectDevice but not my uid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/sdk/OpenApiDaemon;->openApiService:Lcom/liquable/nemo/client/service/OpenApiService;

    invoke-virtual {v0}, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->getOpenApiAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/liquable/nemo/sdk/model/DisconnectParameters;->getAppUniqueDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/client/service/OpenApiService;->disconnectDevice(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public getApp(Ljava/lang/String;)Lcom/liquable/nemo/model/openapi/OpenApiAppDto;
    .locals 5
    .param p1, "appId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v2, p0, Lcom/liquable/nemo/sdk/OpenApiDaemon;->cache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;

    .line 55
    .local v0, "cachedApp":Lcom/liquable/nemo/model/openapi/OpenApiAppDto;
    if-eqz v0, :cond_0

    .line 56
    sget-object v2, Lcom/liquable/nemo/sdk/OpenApiDaemon;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "cache hit"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .end local v0    # "cachedApp":Lcom/liquable/nemo/model/openapi/OpenApiAppDto;
    :goto_0
    return-object v0

    .line 60
    .restart local v0    # "cachedApp":Lcom/liquable/nemo/model/openapi/OpenApiAppDto;
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/sdk/OpenApiDaemon;->openApiService:Lcom/liquable/nemo/client/service/OpenApiService;

    invoke-virtual {v2, p1}, Lcom/liquable/nemo/client/service/OpenApiService;->getApp(Ljava/lang/String;)Lcom/liquable/nemo/model/openapi/OpenApiAppDto;

    move-result-object v1

    .line 61
    .local v1, "openApiAppDto":Lcom/liquable/nemo/model/openapi/OpenApiAppDto;
    sget-object v2, Lcom/liquable/nemo/sdk/OpenApiDaemon;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cache miss:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v2, p0, Lcom/liquable/nemo/sdk/OpenApiDaemon;->cache:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 63
    goto :goto_0
.end method
