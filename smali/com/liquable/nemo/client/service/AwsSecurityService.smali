.class public Lcom/liquable/nemo/client/service/AwsSecurityService;
.super Ljava/lang/Object;
.source "AwsSecurityService.java"


# instance fields
.field nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/client/service/NemoRpcService;)V
    .locals 0
    .param p1, "nemoRpcService"    # Lcom/liquable/nemo/client/service/NemoRpcService;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/liquable/nemo/client/service/AwsSecurityService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    .line 14
    return-void
.end method


# virtual methods
.method public getSessionCredentials(Ljava/lang/String;)Lcom/liquable/aws/AwsSessionCredentialsDto;
    .locals 5
    .param p1, "uniqueUserId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 19
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/AwsSecurityService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "awsSecurityService.getSessionCredentials"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    sget-object v4, Lcom/liquable/nemo/client/mapper/AwsSessionCredentialsDtoMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/AwsSessionCredentialsDtoMapper;

    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/aws/AwsSessionCredentialsDto;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method
