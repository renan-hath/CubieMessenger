.class public Lcom/liquable/nemo/facebook/FacebookSession;
.super Ljava/lang/Object;
.source "FacebookSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/facebook/FacebookSession$IFacebookReadSessionCallback;,
        Lcom/liquable/nemo/facebook/FacebookSession$IFacebookPublishSessionCallback;,
        Lcom/liquable/nemo/facebook/FacebookSession$IFacebookDialogCallback;,
        Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;,
        Lcom/liquable/nemo/facebook/FacebookSession$FacebookPublishRequest;
    }
.end annotation


# static fields
.field private static final logger:Lcom/liquable/nemo/util/Logger;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private opened:Z

.field private session:Lcom/facebook/Session;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 204
    const-class v0, Lcom/liquable/nemo/facebook/FacebookSession;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/facebook/FacebookSession;->logger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/facebook/FacebookSession;->opened:Z

    .line 214
    iput-object p1, p0, Lcom/liquable/nemo/facebook/FacebookSession;->activity:Landroid/app/Activity;

    .line 215
    invoke-direct {p0}, Lcom/liquable/nemo/facebook/FacebookSession;->createNewSession()V

    .line 216
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/facebook/FacebookSession;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)Lcom/facebook/Response;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/facebook/FacebookSession;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/Bundle;
    .param p3, "x3"    # Lcom/facebook/HttpMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/facebook/FacebookAsyncException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/liquable/nemo/facebook/FacebookSession;->execute(Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)Lcom/facebook/Response;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/liquable/nemo/util/Logger;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/liquable/nemo/facebook/FacebookSession;->logger:Lcom/liquable/nemo/util/Logger;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/liquable/nemo/facebook/FacebookSession;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/facebook/FacebookSession;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/liquable/nemo/facebook/FacebookSession;->setFacebookUidInPerf(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/liquable/nemo/facebook/FacebookSession;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/facebook/FacebookSession;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/liquable/nemo/facebook/FacebookSession;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/facebook/FacebookSession;)Lcom/facebook/Session;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/facebook/FacebookSession;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/liquable/nemo/facebook/FacebookSession;->session:Lcom/facebook/Session;

    return-object v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/facebook/FacebookSession;Ljava/lang/String;)Lcom/facebook/model/GraphObjectList;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/facebook/FacebookSession;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/facebook/FacebookAsyncException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/liquable/nemo/facebook/FacebookSession;->queryDataList(Ljava/lang/String;)Lcom/facebook/model/GraphObjectList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/liquable/nemo/facebook/FacebookSession;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/facebook/FacebookSession;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/liquable/nemo/facebook/FacebookSession;->logout()V

    return-void
.end method

.method static synthetic access$500(Lcom/liquable/nemo/facebook/FacebookSession;Ljava/lang/String;)Lcom/facebook/model/GraphObject;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/facebook/FacebookSession;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/facebook/FacebookAsyncException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/liquable/nemo/facebook/FacebookSession;->query(Ljava/lang/String;)Lcom/facebook/model/GraphObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/liquable/nemo/facebook/FacebookSession;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/facebook/FacebookSession;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/liquable/nemo/facebook/FacebookSession;->createNewSession()V

    return-void
.end method

.method static synthetic access$702(Lcom/liquable/nemo/facebook/FacebookSession;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/facebook/FacebookSession;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/liquable/nemo/facebook/FacebookSession;->opened:Z

    return p1
.end method

.method static synthetic access$800(Lcom/liquable/nemo/facebook/FacebookSession;)Z
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/facebook/FacebookSession;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/liquable/nemo/facebook/FacebookSession;->isFacebookConnectedBefore()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/liquable/nemo/facebook/FacebookSession;Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;Lcom/liquable/nemo/facebook/FacebookSession$IFacebookReadSessionCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/facebook/FacebookSession;
    .param p1, "x1"    # Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;
    .param p2, "x2"    # Lcom/liquable/nemo/facebook/FacebookSession$IFacebookReadSessionCallback;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/facebook/FacebookSession;->registerFacebookUserToNemoServer(Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;Lcom/liquable/nemo/facebook/FacebookSession$IFacebookReadSessionCallback;)V

    return-void
.end method

.method public static activateApp(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 192
    :try_start_0
    invoke-static {p0}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private createNewSession()V
    .locals 2

    .prologue
    .line 300
    new-instance v0, Lcom/facebook/Session$Builder;

    iget-object v1, p0, Lcom/liquable/nemo/facebook/FacebookSession;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/facebook/Session$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/liquable/nemo/facebook/FacebookEnv;->getInstance()Lcom/liquable/nemo/facebook/FacebookEnv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/facebook/FacebookEnv;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/Session$Builder;->setApplicationId(Ljava/lang/String;)Lcom/facebook/Session$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Session$Builder;->build()Lcom/facebook/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/facebook/FacebookSession;->session:Lcom/facebook/Session;

    .line 301
    return-void
.end method

.method public static deactivateApp(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 199
    :try_start_0
    invoke-static {p0}, Lcom/facebook/AppEventsLogger;->deactivateApp(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private execute(Ljava/lang/String;)Lcom/facebook/Response;
    .locals 4
    .param p1, "graphPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/facebook/FacebookAsyncException;
        }
    .end annotation

    .prologue
    .line 305
    :try_start_0
    new-instance v2, Lcom/facebook/Request;

    iget-object v3, p0, Lcom/liquable/nemo/facebook/FacebookSession;->session:Lcom/facebook/Session;

    invoke-direct {v2, v3, p1}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/facebook/Request;->executeAndWait()Lcom/facebook/Response;

    move-result-object v1

    .line 306
    .local v1, "response":Lcom/facebook/Response;
    invoke-virtual {v1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 308
    invoke-virtual {v1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 309
    new-instance v0, Lcom/liquable/nemo/facebook/FacebookRpcException;

    invoke-virtual {v1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    .line 310
    invoke-virtual {v1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/liquable/nemo/facebook/FacebookRpcException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 314
    .local v0, "e":Lcom/liquable/nemo/facebook/FacebookRpcException;
    :goto_0
    sget-object v2, Lcom/liquable/nemo/facebook/FacebookSession;->logger:Lcom/liquable/nemo/util/Logger;

    invoke-virtual {v0}, Lcom/liquable/nemo/facebook/FacebookRpcException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;)V

    .line 315
    invoke-static {}, Lcom/liquable/nemo/analytics/CrittercismService;->getInstance()Lcom/liquable/nemo/analytics/CrittercismService;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/liquable/nemo/analytics/CrittercismService;->logException(Ljava/lang/Throwable;)V

    .line 316
    new-instance v2, Lcom/liquable/nemo/facebook/FacebookAsyncException;

    invoke-direct {v2}, Lcom/liquable/nemo/facebook/FacebookAsyncException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    .end local v0    # "e":Lcom/liquable/nemo/facebook/FacebookRpcException;
    .end local v1    # "response":Lcom/facebook/Response;
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/liquable/nemo/facebook/FacebookSession;->logger:Lcom/liquable/nemo/util/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 321
    invoke-static {}, Lcom/liquable/nemo/analytics/CrittercismService;->getInstance()Lcom/liquable/nemo/analytics/CrittercismService;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/liquable/nemo/analytics/CrittercismService;->logException(Ljava/lang/Throwable;)V

    .line 322
    new-instance v2, Lcom/liquable/nemo/facebook/FacebookAsyncException;

    invoke-direct {v2}, Lcom/liquable/nemo/facebook/FacebookAsyncException;-><init>()V

    throw v2

    .line 312
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "response":Lcom/facebook/Response;
    :cond_0
    :try_start_1
    new-instance v0, Lcom/liquable/nemo/facebook/FacebookRpcException;

    invoke-virtual {v1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/liquable/nemo/facebook/FacebookRpcException;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .local v0, "e":Lcom/liquable/nemo/facebook/FacebookRpcException;
    goto :goto_0

    .line 318
    .end local v0    # "e":Lcom/liquable/nemo/facebook/FacebookRpcException;
    :cond_1
    return-object v1
.end method

.method private execute(Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)Lcom/facebook/Response;
    .locals 4
    .param p1, "graphPath"    # Ljava/lang/String;
    .param p2, "parameters"    # Landroid/os/Bundle;
    .param p3, "httpMethod"    # Lcom/facebook/HttpMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/facebook/FacebookAsyncException;
        }
    .end annotation

    .prologue
    .line 330
    :try_start_0
    new-instance v2, Lcom/facebook/Request;

    iget-object v3, p0, Lcom/liquable/nemo/facebook/FacebookSession;->session:Lcom/facebook/Session;

    invoke-direct {v2, v3, p1, p2, p3}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V

    .line 333
    invoke-virtual {v2}, Lcom/facebook/Request;->executeAndWait()Lcom/facebook/Response;

    move-result-object v1

    .line 334
    .local v1, "response":Lcom/facebook/Response;
    invoke-virtual {v1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 336
    invoke-virtual {v1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 337
    new-instance v0, Lcom/liquable/nemo/facebook/FacebookRpcException;

    invoke-virtual {v1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    .line 338
    invoke-virtual {v1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/liquable/nemo/facebook/FacebookRpcException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 342
    .local v0, "e":Lcom/liquable/nemo/facebook/FacebookRpcException;
    :goto_0
    sget-object v2, Lcom/liquable/nemo/facebook/FacebookSession;->logger:Lcom/liquable/nemo/util/Logger;

    invoke-virtual {v0}, Lcom/liquable/nemo/facebook/FacebookRpcException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;)V

    .line 343
    invoke-static {}, Lcom/liquable/nemo/analytics/CrittercismService;->getInstance()Lcom/liquable/nemo/analytics/CrittercismService;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/liquable/nemo/analytics/CrittercismService;->logException(Ljava/lang/Throwable;)V

    .line 344
    new-instance v2, Lcom/liquable/nemo/facebook/FacebookAsyncException;

    invoke-direct {v2}, Lcom/liquable/nemo/facebook/FacebookAsyncException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    .end local v0    # "e":Lcom/liquable/nemo/facebook/FacebookRpcException;
    .end local v1    # "response":Lcom/facebook/Response;
    :catch_0
    move-exception v0

    .line 348
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/liquable/nemo/facebook/FacebookSession;->logger:Lcom/liquable/nemo/util/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 349
    invoke-static {}, Lcom/liquable/nemo/analytics/CrittercismService;->getInstance()Lcom/liquable/nemo/analytics/CrittercismService;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/liquable/nemo/analytics/CrittercismService;->logException(Ljava/lang/Throwable;)V

    .line 350
    new-instance v2, Lcom/liquable/nemo/facebook/FacebookAsyncException;

    invoke-direct {v2}, Lcom/liquable/nemo/facebook/FacebookAsyncException;-><init>()V

    throw v2

    .line 340
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "response":Lcom/facebook/Response;
    :cond_0
    :try_start_1
    new-instance v0, Lcom/liquable/nemo/facebook/FacebookRpcException;

    invoke-virtual {v1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/liquable/nemo/facebook/FacebookRpcException;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .local v0, "e":Lcom/liquable/nemo/facebook/FacebookRpcException;
    goto :goto_0

    .line 346
    .end local v0    # "e":Lcom/liquable/nemo/facebook/FacebookRpcException;
    :cond_1
    return-object v1
.end method

.method private isFacebookConnectedBefore()Z
    .locals 1

    .prologue
    .line 355
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->isFacebookConnected()Z

    move-result v0

    return v0
.end method

.method private logout()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/liquable/nemo/facebook/FacebookSession;->session:Lcom/facebook/Session;

    invoke-virtual {v0}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    .line 360
    invoke-direct {p0}, Lcom/liquable/nemo/facebook/FacebookSession;->createNewSession()V

    .line 361
    return-void
.end method

.method private query(Ljava/lang/String;)Lcom/facebook/model/GraphObject;
    .locals 4
    .param p1, "graphPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/facebook/FacebookAsyncException;
        }
    .end annotation

    .prologue
    .line 368
    invoke-direct {p0, p1}, Lcom/liquable/nemo/facebook/FacebookSession;->execute(Ljava/lang/String;)Lcom/facebook/Response;

    move-result-object v1

    .line 369
    .local v1, "response":Lcom/facebook/Response;
    invoke-virtual {v1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v2

    if-nez v2, :cond_0

    .line 370
    new-instance v0, Lcom/liquable/nemo/facebook/FacebookRpcException;

    const-string/jumbo v2, "Empty return"

    invoke-direct {v0, v2}, Lcom/liquable/nemo/facebook/FacebookRpcException;-><init>(Ljava/lang/String;)V

    .line 371
    .local v0, "e":Lcom/liquable/nemo/facebook/FacebookRpcException;
    sget-object v2, Lcom/liquable/nemo/facebook/FacebookSession;->logger:Lcom/liquable/nemo/util/Logger;

    invoke-virtual {v0}, Lcom/liquable/nemo/facebook/FacebookRpcException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;)V

    .line 372
    invoke-static {}, Lcom/liquable/nemo/analytics/CrittercismService;->getInstance()Lcom/liquable/nemo/analytics/CrittercismService;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/liquable/nemo/analytics/CrittercismService;->logException(Ljava/lang/Throwable;)V

    .line 373
    new-instance v2, Lcom/liquable/nemo/facebook/FacebookAsyncException;

    invoke-direct {v2}, Lcom/liquable/nemo/facebook/FacebookAsyncException;-><init>()V

    throw v2

    .line 376
    .end local v0    # "e":Lcom/liquable/nemo/facebook/FacebookRpcException;
    :cond_0
    invoke-virtual {v1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v2

    return-object v2
.end method

.method private queryDataList(Ljava/lang/String;)Lcom/facebook/model/GraphObjectList;
    .locals 6
    .param p1, "graphPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/model/GraphObjectList",
            "<",
            "Lcom/facebook/model/GraphObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/facebook/FacebookAsyncException;
        }
    .end annotation

    .prologue
    .line 381
    invoke-direct {p0, p1}, Lcom/liquable/nemo/facebook/FacebookSession;->execute(Ljava/lang/String;)Lcom/facebook/Response;

    move-result-object v3

    .line 383
    .local v3, "response":Lcom/facebook/Response;
    const-class v4, Lcom/facebook/model/GraphMultiResult;

    invoke-virtual {v3, v4}, Lcom/facebook/Response;->getGraphObjectAs(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    move-result-object v2

    check-cast v2, Lcom/facebook/model/GraphMultiResult;

    .line 384
    .local v2, "multiResult":Lcom/facebook/model/GraphMultiResult;
    if-nez v2, :cond_0

    .line 385
    new-instance v1, Lcom/liquable/nemo/facebook/FacebookRpcException;

    const-string/jumbo v4, "Empty return"

    invoke-direct {v1, v4}, Lcom/liquable/nemo/facebook/FacebookRpcException;-><init>(Ljava/lang/String;)V

    .line 386
    .local v1, "e":Lcom/liquable/nemo/facebook/FacebookRpcException;
    sget-object v4, Lcom/liquable/nemo/facebook/FacebookSession;->logger:Lcom/liquable/nemo/util/Logger;

    invoke-virtual {v1}, Lcom/liquable/nemo/facebook/FacebookRpcException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;)V

    .line 387
    invoke-static {}, Lcom/liquable/nemo/analytics/CrittercismService;->getInstance()Lcom/liquable/nemo/analytics/CrittercismService;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/liquable/nemo/analytics/CrittercismService;->logException(Ljava/lang/Throwable;)V

    .line 388
    new-instance v4, Lcom/liquable/nemo/facebook/FacebookAsyncException;

    invoke-direct {v4}, Lcom/liquable/nemo/facebook/FacebookAsyncException;-><init>()V

    throw v4

    .line 391
    .end local v1    # "e":Lcom/liquable/nemo/facebook/FacebookRpcException;
    :cond_0
    invoke-interface {v2}, Lcom/facebook/model/GraphMultiResult;->getData()Lcom/facebook/model/GraphObjectList;

    move-result-object v0

    .line 392
    .local v0, "data":Lcom/facebook/model/GraphObjectList;, "Lcom/facebook/model/GraphObjectList<Lcom/facebook/model/GraphObject;>;"
    if-nez v0, :cond_1

    .line 393
    new-instance v1, Lcom/liquable/nemo/facebook/FacebookRpcException;

    const-string/jumbo v4, "Empty return"

    invoke-direct {v1, v4}, Lcom/liquable/nemo/facebook/FacebookRpcException;-><init>(Ljava/lang/String;)V

    .line 394
    .restart local v1    # "e":Lcom/liquable/nemo/facebook/FacebookRpcException;
    sget-object v4, Lcom/liquable/nemo/facebook/FacebookSession;->logger:Lcom/liquable/nemo/util/Logger;

    invoke-virtual {v1}, Lcom/liquable/nemo/facebook/FacebookRpcException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;)V

    .line 395
    invoke-static {}, Lcom/liquable/nemo/analytics/CrittercismService;->getInstance()Lcom/liquable/nemo/analytics/CrittercismService;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/liquable/nemo/analytics/CrittercismService;->logException(Ljava/lang/Throwable;)V

    .line 396
    new-instance v4, Lcom/liquable/nemo/facebook/FacebookAsyncException;

    invoke-direct {v4}, Lcom/liquable/nemo/facebook/FacebookAsyncException;-><init>()V

    throw v4

    .line 399
    .end local v1    # "e":Lcom/liquable/nemo/facebook/FacebookRpcException;
    :cond_1
    return-object v0
.end method

.method private queryList(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "graphPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/model/GraphObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/facebook/FacebookAsyncException;
        }
    .end annotation

    .prologue
    .line 404
    invoke-direct {p0, p1}, Lcom/liquable/nemo/facebook/FacebookSession;->execute(Ljava/lang/String;)Lcom/facebook/Response;

    move-result-object v1

    .line 406
    .local v1, "response":Lcom/facebook/Response;
    invoke-virtual {v1}, Lcom/facebook/Response;->getGraphObjectList()Lcom/facebook/model/GraphObjectList;

    move-result-object v2

    if-nez v2, :cond_0

    .line 407
    new-instance v0, Lcom/liquable/nemo/facebook/FacebookRpcException;

    const-string/jumbo v2, "Empty return"

    invoke-direct {v0, v2}, Lcom/liquable/nemo/facebook/FacebookRpcException;-><init>(Ljava/lang/String;)V

    .line 408
    .local v0, "e":Lcom/liquable/nemo/facebook/FacebookRpcException;
    sget-object v2, Lcom/liquable/nemo/facebook/FacebookSession;->logger:Lcom/liquable/nemo/util/Logger;

    invoke-virtual {v0}, Lcom/liquable/nemo/facebook/FacebookRpcException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;)V

    .line 409
    invoke-static {}, Lcom/liquable/nemo/analytics/CrittercismService;->getInstance()Lcom/liquable/nemo/analytics/CrittercismService;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/liquable/nemo/analytics/CrittercismService;->logException(Ljava/lang/Throwable;)V

    .line 410
    new-instance v2, Lcom/liquable/nemo/facebook/FacebookAsyncException;

    invoke-direct {v2}, Lcom/liquable/nemo/facebook/FacebookAsyncException;-><init>()V

    throw v2

    .line 413
    .end local v0    # "e":Lcom/liquable/nemo/facebook/FacebookRpcException;
    :cond_0
    invoke-virtual {v1}, Lcom/facebook/Response;->getGraphObjectList()Lcom/facebook/model/GraphObjectList;

    move-result-object v2

    return-object v2
.end method

.method private registerFacebookUserToNemoServer(Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;Lcom/liquable/nemo/facebook/FacebookSession$IFacebookReadSessionCallback;)V
    .locals 6
    .param p1, "facebookReadRequest"    # Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;
    .param p2, "facebookReadSessionCallback"    # Lcom/liquable/nemo/facebook/FacebookSession$IFacebookReadSessionCallback;

    .prologue
    const/4 v3, 0x0

    .line 418
    new-instance v0, Lcom/liquable/nemo/facebook/FacebookSession$3;

    iget-object v2, p0, Lcom/liquable/nemo/facebook/FacebookSession;->activity:Landroid/app/Activity;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/facebook/FacebookSession$3;-><init>(Lcom/liquable/nemo/facebook/FacebookSession;Landroid/content/Context;ZLcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;Lcom/liquable/nemo/facebook/FacebookSession$IFacebookReadSessionCallback;)V

    new-array v1, v3, [Ljava/lang/Void;

    .line 472
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/facebook/FacebookSession$3;->execute([Ljava/lang/Object;)V

    .line 473
    return-void
.end method

.method private setFacebookUidInPerf(Ljava/lang/String;)V
    .locals 1
    .param p1, "fbuid"    # Ljava/lang/String;

    .prologue
    .line 476
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/util/Pref;->setFbuid(Ljava/lang/String;)V

    .line 477
    return-void
.end method


# virtual methods
.method public asyncOpenForPublish(ILcom/liquable/nemo/facebook/FacebookSession$IFacebookPublishSessionCallback;)V
    .locals 3
    .param p1, "authorizeRequestCode"    # I
    .param p2, "facebookPublishSessionCallback"    # Lcom/liquable/nemo/facebook/FacebookSession$IFacebookPublishSessionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/liquable/nemo/facebook/FacebookSession;->opened:Z

    if-eqz v0, :cond_0

    .line 222
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t open Facebook session twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/facebook/FacebookSession;->session:Lcom/facebook/Session;

    new-instance v1, Lcom/facebook/Session$OpenRequest;

    iget-object v2, p0, Lcom/liquable/nemo/facebook/FacebookSession;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, p1}, Lcom/facebook/Session$OpenRequest;->setRequestCode(I)Lcom/facebook/Session$OpenRequest;

    move-result-object v1

    .line 226
    invoke-static {}, Lcom/liquable/nemo/facebook/FacebookEnv;->getInstance()Lcom/liquable/nemo/facebook/FacebookEnv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/facebook/FacebookEnv;->getPublishPermissions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;

    move-result-object v1

    new-instance v2, Lcom/liquable/nemo/facebook/FacebookSession$1;

    invoke-direct {v2, p0, p2}, Lcom/liquable/nemo/facebook/FacebookSession$1;-><init>(Lcom/liquable/nemo/facebook/FacebookSession;Lcom/liquable/nemo/facebook/FacebookSession$IFacebookPublishSessionCallback;)V

    .line 227
    invoke-virtual {v1, v2}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v1

    .line 225
    invoke-virtual {v0, v1}, Lcom/facebook/Session;->openForPublish(Lcom/facebook/Session$OpenRequest;)V

    .line 254
    return-void
.end method

.method public asyncOpenForRead(ZILcom/liquable/nemo/facebook/FacebookSession$IFacebookReadSessionCallback;)V
    .locals 3
    .param p1, "registerToNemoServer"    # Z
    .param p2, "authorizeRequestCode"    # I
    .param p3, "facebookReadSessionCallback"    # Lcom/liquable/nemo/facebook/FacebookSession$IFacebookReadSessionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/liquable/nemo/facebook/FacebookSession;->opened:Z

    if-eqz v0, :cond_0

    .line 260
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t open Facebook session twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/facebook/FacebookSession;->session:Lcom/facebook/Session;

    new-instance v1, Lcom/facebook/Session$OpenRequest;

    iget-object v2, p0, Lcom/liquable/nemo/facebook/FacebookSession;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, p2}, Lcom/facebook/Session$OpenRequest;->setRequestCode(I)Lcom/facebook/Session$OpenRequest;

    move-result-object v1

    .line 264
    invoke-static {}, Lcom/liquable/nemo/facebook/FacebookEnv;->getInstance()Lcom/liquable/nemo/facebook/FacebookEnv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/facebook/FacebookEnv;->getReadPermissions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;

    move-result-object v1

    new-instance v2, Lcom/liquable/nemo/facebook/FacebookSession$2;

    invoke-direct {v2, p0, p3, p1}, Lcom/liquable/nemo/facebook/FacebookSession$2;-><init>(Lcom/liquable/nemo/facebook/FacebookSession;Lcom/liquable/nemo/facebook/FacebookSession$IFacebookReadSessionCallback;Z)V

    .line 265
    invoke-virtual {v1, v2}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v1

    .line 263
    invoke-virtual {v0, v1}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    .line 297
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 364
    iget-object v0, p0, Lcom/liquable/nemo/facebook/FacebookSession;->session:Lcom/facebook/Session;

    iget-object v1, p0, Lcom/liquable/nemo/facebook/FacebookSession;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    .line 365
    return-void
.end method
