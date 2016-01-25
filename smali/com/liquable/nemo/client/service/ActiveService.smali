.class public Lcom/liquable/nemo/client/service/ActiveService;
.super Ljava/lang/Object;
.source "ActiveService.java"


# instance fields
.field private final nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/client/service/NemoRpcService;)V
    .locals 0
    .param p1, "nemoRpcService"    # Lcom/liquable/nemo/client/service/NemoRpcService;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/liquable/nemo/client/service/ActiveService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    .line 15
    return-void
.end method


# virtual methods
.method public submitActivation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "osType"    # Ljava/lang/String;
    .param p3, "osVersion"    # Ljava/lang/String;
    .param p4, "phoneModel"    # Ljava/lang/String;
    .param p5, "javaLocale"    # Ljava/lang/String;
    .param p6, "clientVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 24
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/ActiveService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "activeService.submitActivation3"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    const/4 v4, 0x4

    aput-object p5, v3, v4

    const/4 v4, 0x5

    aput-object p6, v3, v4

    sget-object v4, Lcom/liquable/nemo/client/mapper/VoidMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/VoidMapper;

    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method
