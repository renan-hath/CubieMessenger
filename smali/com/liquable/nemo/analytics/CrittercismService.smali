.class public Lcom/liquable/nemo/analytics/CrittercismService;
.super Ljava/lang/Object;
.source "CrittercismService.java"


# static fields
.field private static final crittercismService:Lcom/liquable/nemo/analytics/CrittercismService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/liquable/nemo/analytics/CrittercismService;

    invoke-direct {v0}, Lcom/liquable/nemo/analytics/CrittercismService;-><init>()V

    sput-object v0, Lcom/liquable/nemo/analytics/CrittercismService;->crittercismService:Lcom/liquable/nemo/analytics/CrittercismService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static getInstance()Lcom/liquable/nemo/analytics/CrittercismService;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/liquable/nemo/analytics/CrittercismService;->crittercismService:Lcom/liquable/nemo/analytics/CrittercismService;

    return-object v0
.end method


# virtual methods
.method public addUserMetadata(Ljava/lang/String;)V
    .locals 3
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {p1}, Lcom/crittercism/app/Crittercism;->setUsername(Ljava/lang/String;)V

    .line 27
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 28
    .local v0, "metadata":Lorg/json/JSONObject;
    const-string/jumbo v1, "model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    const-string/jumbo v1, "manufacturer"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    const-string/jumbo v1, "deivce"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->setMetadata(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .end local v0    # "metadata":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 38
    sget-object v0, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    invoke-virtual {v0}, Lcom/liquable/nemo/client/ServerType;->isProduction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const-string/jumbo v0, "5012aa11067e7c7daa000006"

    new-array v1, v1, [Lorg/json/JSONObject;

    invoke-static {p1, v0, v1}, Lcom/crittercism/app/Crittercism;->init(Landroid/content/Context;Ljava/lang/String;[Lorg/json/JSONObject;)Z

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    const-string/jumbo v0, "5077532ed5f9b94012000010"

    new-array v1, v1, [Lorg/json/JSONObject;

    invoke-static {p1, v0, v1}, Lcom/crittercism/app/Crittercism;->init(Landroid/content/Context;Ljava/lang/String;[Lorg/json/JSONObject;)Z

    goto :goto_0
.end method

.method public logException(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 46
    invoke-static {p1}, Lcom/crittercism/app/Crittercism;->logHandledException(Ljava/lang/Throwable;)V

    .line 47
    return-void
.end method
