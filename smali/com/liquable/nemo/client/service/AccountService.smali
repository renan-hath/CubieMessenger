.class public Lcom/liquable/nemo/client/service/AccountService;
.super Ljava/lang/Object;
.source "AccountService.java"

# interfaces
.implements Lcom/liquable/nemo/client/service/IAccountService;


# instance fields
.field private final nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

.field private final rpcRestClient:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/client/service/NemoRpcService;Lcom/liquable/nemo/client/rpcrest/RpcRestClient;)V
    .locals 0
    .param p1, "nemoRpcService"    # Lcom/liquable/nemo/client/service/NemoRpcService;
    .param p2, "rpcRestClient"    # Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/liquable/nemo/client/service/AccountService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    .line 41
    iput-object p2, p0, Lcom/liquable/nemo/client/service/AccountService;->rpcRestClient:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    .line 42
    return-void
.end method

.method static synthetic access$lambda$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/volley/request/RequestBuilder;)Lcom/liquable/volley/request/Requestable;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/liquable/nemo/client/service/AccountService;->lambda$prepareEmailConnection$9(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/volley/request/RequestBuilder;)Lcom/liquable/volley/request/Requestable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$1(ZLcom/liquable/volley/request/RequestBuilder;)Lcom/liquable/volley/request/Requestable;
    .locals 1

    invoke-static {p0, p1}, Lcom/liquable/nemo/client/service/AccountService;->lambda$updateUseOfflineSequence$10(ZLcom/liquable/volley/request/RequestBuilder;)Lcom/liquable/volley/request/Requestable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$2(Ljava/lang/String;Lcom/liquable/volley/request/RequestBuilder;)Lcom/liquable/volley/request/Requestable;
    .locals 1

    invoke-static {p0, p1}, Lcom/liquable/nemo/client/service/AccountService;->lambda$generateSubAccountSessionPincode$11(Ljava/lang/String;Lcom/liquable/volley/request/RequestBuilder;)Lcom/liquable/volley/request/Requestable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$3(Lcom/liquable/volley/request/RequestBuilder;)Lcom/liquable/volley/request/Requestable;
    .locals 1

    invoke-static {p0}, Lcom/liquable/nemo/client/service/AccountService;->lambda$registerSubAccount$12(Lcom/liquable/volley/request/RequestBuilder;)Lcom/liquable/volley/request/Requestable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$generateSubAccountSessionPincode$11(Ljava/lang/String;Lcom/liquable/volley/request/RequestBuilder;)Lcom/liquable/volley/request/Requestable;
    .locals 2
    .param p1, "builder"    # Lcom/liquable/volley/request/RequestBuilder;

    .prologue
    .line 167
    invoke-virtual {p1}, Lcom/liquable/volley/request/RequestBuilder;->withHttpPost()Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-string/jumbo v1, "/accountService/generateSubAccountSessionPincode"

    .line 168
    invoke-virtual {v0, v1}, Lcom/liquable/volley/request/RequestBuilder;->withPath(Ljava/lang/String;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-string/jumbo v1, "subId"

    .line 169
    invoke-virtual {v0, v1, p0}, Lcom/liquable/volley/request/RequestBuilder;->withAddParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/client/mapper/TimedPincodeDtoMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/TimedPincodeDtoMapper;

    .line 170
    invoke-virtual {v0, v1}, Lcom/liquable/volley/request/RequestBuilder;->build(Lcom/liquable/nemo/client/mapper/ResultMapper;)Lcom/liquable/volley/request/Requestable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$prepareEmailConnection$9(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/volley/request/RequestBuilder;)Lcom/liquable/volley/request/Requestable;
    .locals 2
    .param p3, "config"    # Lcom/liquable/volley/request/RequestBuilder;

    .prologue
    .line 65
    const-string/jumbo v0, "/accountService/prepareEmailConnection"

    invoke-virtual {p3, v0}, Lcom/liquable/volley/request/RequestBuilder;->withPath(Ljava/lang/String;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/liquable/volley/request/RequestBuilder;->withHttpPost()Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-string/jumbo v1, "email"

    .line 67
    invoke-virtual {v0, v1, p0}, Lcom/liquable/volley/request/RequestBuilder;->withAddParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-string/jumbo v1, "password"

    .line 68
    invoke-virtual {v0, v1, p1}, Lcom/liquable/volley/request/RequestBuilder;->withAddParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-string/jumbo v1, "locale"

    .line 69
    invoke-virtual {v0, v1, p2}, Lcom/liquable/volley/request/RequestBuilder;->withAddParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-class v1, Ljava/lang/Void;

    .line 70
    invoke-virtual {v0, v1}, Lcom/liquable/volley/request/RequestBuilder;->build(Ljava/lang/Class;)Lcom/liquable/volley/request/Requestable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$registerSubAccount$12(Lcom/liquable/volley/request/RequestBuilder;)Lcom/liquable/volley/request/Requestable;
    .locals 2
    .param p0, "builder"    # Lcom/liquable/volley/request/RequestBuilder;

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/liquable/volley/request/RequestBuilder;->withHttpPost()Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-string/jumbo v1, "/accountService/registerSubAccount"

    .line 303
    invoke-virtual {v0, v1}, Lcom/liquable/volley/request/RequestBuilder;->withPath(Ljava/lang/String;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/client/mapper/SubAccountDtoMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/SubAccountDtoMapper;

    .line 304
    invoke-virtual {v0, v1}, Lcom/liquable/volley/request/RequestBuilder;->build(Lcom/liquable/nemo/client/mapper/ResultMapper;)Lcom/liquable/volley/request/Requestable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$updateUseOfflineSequence$10(ZLcom/liquable/volley/request/RequestBuilder;)Lcom/liquable/volley/request/Requestable;
    .locals 3
    .param p1, "config"    # Lcom/liquable/volley/request/RequestBuilder;

    .prologue
    .line 77
    const-string/jumbo v0, "/accountService/updateUseOfflineSequence"

    invoke-virtual {p1, v0}, Lcom/liquable/volley/request/RequestBuilder;->withPath(Ljava/lang/String;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/liquable/volley/request/RequestBuilder;->withHttpPost()Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-string/jumbo v1, "useOfflineSequence"

    .line 79
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/liquable/volley/request/RequestBuilder;->withAddParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-class v1, Ljava/lang/Void;

    .line 80
    invoke-virtual {v0, v1}, Lcom/liquable/volley/request/RequestBuilder;->build(Ljava/lang/Class;)Lcom/liquable/volley/request/Requestable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public connectFacebook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "fbuid"    # Ljava/lang/String;
    .param p3, "gender"    # Ljava/lang/String;
    .param p4, "birthday"    # Ljava/lang/String;
    .param p5, "locale"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/FacebookAlreadyInUseException;
        }
    .end annotation

    .prologue
    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/AccountService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "accountService.connectFacebook"

    const/4 v3, 0x5

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

    sget-object v4, Lcom/liquable/nemo/client/mapper/VoidMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/VoidMapper;

    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    instance-of v1, v0, Lcom/liquable/nemo/model/FacebookAlreadyInUseException;

    if-eqz v1, :cond_0

    .line 56
    check-cast v0, Lcom/liquable/nemo/model/FacebookAlreadyInUseException;

    .end local v0    # "e":Lcom/liquable/nemo/model/DomainException;
    throw v0

    .line 58
    .restart local v0    # "e":Lcom/liquable/nemo/model/DomainException;
    :cond_0
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public connectPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/model/account/AccountDto;
    .locals 5
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "pincodeToken"    # Ljava/lang/String;
    .param p3, "pincode"    # Ljava/lang/String;
    .param p4, "rawPhoneNumber"    # Ljava/lang/String;
    .param p5, "defaultCountryCodeISO3166"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/InvalidPhoneNumberException;,
            Lcom/liquable/nemo/model/InvalidPincodeException;,
            Lcom/liquable/nemo/model/PhoneAlreadyInUseException;
        }
    .end annotation

    .prologue
    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/AccountService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "accountService.connectPhone"

    const/4 v3, 0x5

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

    sget-object v4, Lcom/liquable/nemo/client/mapper/AccountDtoMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/AccountDtoMapper;

    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/model/account/AccountDto;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "exception":Lcom/liquable/nemo/model/DomainException;
    instance-of v1, v0, Lcom/liquable/nemo/model/InvalidPincodeException;

    if-eqz v1, :cond_0

    .line 98
    check-cast v0, Lcom/liquable/nemo/model/InvalidPincodeException;

    .end local v0    # "exception":Lcom/liquable/nemo/model/DomainException;
    throw v0

    .line 99
    .restart local v0    # "exception":Lcom/liquable/nemo/model/DomainException;
    :cond_0
    instance-of v1, v0, Lcom/liquable/nemo/model/InvalidPhoneNumberException;

    if-eqz v1, :cond_1

    .line 100
    check-cast v0, Lcom/liquable/nemo/model/InvalidPhoneNumberException;

    .end local v0    # "exception":Lcom/liquable/nemo/model/DomainException;
    throw v0

    .line 101
    .restart local v0    # "exception":Lcom/liquable/nemo/model/DomainException;
    :cond_1
    instance-of v1, v0, Lcom/liquable/nemo/model/PhoneAlreadyInUseException;

    if-eqz v1, :cond_2

    .line 102
    check-cast v0, Lcom/liquable/nemo/model/PhoneAlreadyInUseException;

    .end local v0    # "exception":Lcom/liquable/nemo/model/DomainException;
    throw v0

    .line 104
    .restart local v0    # "exception":Lcom/liquable/nemo/model/DomainException;
    :cond_2
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public connectTwitter(Ljava/lang/String;JLjava/lang/String;)V
    .locals 6
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "twitterId"    # J
    .param p4, "lang"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/AccountService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "accountService.connectTwitter"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    .line 113
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p4, v3, v4

    sget-object v4, Lcom/liquable/nemo/client/mapper/VoidMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/VoidMapper;

    .line 112
    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public disableUser(Ljava/lang/String;)V
    .locals 5
    .param p1, "uid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/AccountService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "accountService.disableUser"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    sget-object v4, Lcom/liquable/nemo/client/mapper/VoidMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/VoidMapper;

    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public disconnectFacebook(Ljava/lang/String;)V
    .locals 5
    .param p1, "uid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/AccountService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "accountService.disconnectFacebook"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    sget-object v4, Lcom/liquable/nemo/client/mapper/VoidMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/VoidMapper;

    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public disconnectTwitter(Ljava/lang/String;)V
    .locals 5
    .param p1, "uid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/AccountService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "accountService.disconnectTwitter"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    sget-object v4, Lcom/liquable/nemo/client/mapper/VoidMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/VoidMapper;

    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public findAccountByUsername(Ljava/lang/String;)Lcom/liquable/nemo/model/account/AccountDto;
    .locals 5
    .param p1, "userame"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/AccountService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "accountService.findAccountByUsername"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    sget-object v4, Lcom/liquable/nemo/client/mapper/AccountDtoMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/AccountDtoMapper;

    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/model/account/AccountDto;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public findProfile(Ljava/lang/String;)Lcom/liquable/future/IFuture;
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/liquable/future/IFuture",
            "<",
            "Lcom/liquable/nemo/model/account/ProfileDto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 389
    iget-object v0, p0, Lcom/liquable/nemo/client/service/AccountService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v1, "accountService.findProfile"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    sget-object v3, Lcom/liquable/nemo/client/mapper/ProfileDtoMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/ProfileDtoMapper;

    invoke-virtual {v0, v1, v2, v3}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithFuture(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Lcom/liquable/future/IFuture;

    move-result-object v0

    return-object v0
.end method

.method public generateSubAccountSessionPincode(Ljava/lang/String;)Lcom/liquable/nemo/model/account/TimedPincodeDto;
    .locals 3
    .param p1, "subId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 167
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/AccountService;->rpcRestClient:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    invoke-static {p1}, Lcom/liquable/nemo/client/service/AccountService$$Lambda$3;->lambdaFactory$(Ljava/lang/String;)Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->execute(Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/model/account/TimedPincodeDto;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public isExcludeInMutualFriends(Ljava/lang/String;)Z
    .locals 5
    .param p1, "uid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 179
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/AccountService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "accountService.isExcludeInMutualFriends"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    sget-object v4, Lcom/liquable/nemo/client/mapper/BooleanMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/BooleanMapper;

    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public isExcludeInRecommendFriends(Ljava/lang/String;)Z
    .locals 5
    .param p1, "uid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/AccountService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "accountService.isExcludeInMutualFriends"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    sget-object v4, Lcom/liquable/nemo/client/mapper/BooleanMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/BooleanMapper;

    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public isPublicProfile(Ljava/lang/String;)Lcom/liquable/future/IFuture;
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/liquable/future/IFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 396
    iget-object v0, p0, Lcom/liquable/nemo/client/service/AccountService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v1, "accountService.isPublicProfile"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    sget-object v3, Lcom/liquable/nemo/client/mapper/BooleanMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/BooleanMapper;

    invoke-virtual {v0, v1, v2, v3}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithFuture(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Lcom/liquable/future/IFuture;

    move-result-object v0

    return-object v0
.end method

.method public listAccountsByFbuids(Ljava/util/List;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/liquable/nemo/model/account/AccountDto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 202
    .local p1, "fbuids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/AccountService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "accountService.listAccountsByFbuids"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    sget-object v4, Lcom/liquable/nemo/client/mapper/FbuidAccountDtoMapMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/FbuidAccountDtoMapMapper;

    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public listAccountsByPhones(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/account/AccountDto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 213
    .local p1, "phones":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/AccountService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "accountService.listAccountsByPhones"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    sget-object v4, Lcom/liquable/nemo/client/mapper/AccountDtoListMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/AccountDtoListMapper;

    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public listAccountsByRawPhones(Ljava/util/List;Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .param p2, "countryCodeIso3166"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/liquable/nemo/model/account/AccountDto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 225
    .local p1, "rawPhones":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/AccountService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "accountService.listAccountsByRawPhones"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    sget-object v4, Lcom/liquable/nemo/client/mapper/AccountDtoMapMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/AccountDtoMapMapper;

    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public listAccountsByTwitterIds(Ljava/util/List;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/liquable/nemo/model/account/AccountDto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 237
    .local p1, "twitterIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v2, "twitterIdsInStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 239
    .local v1, "twitterId":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 245
    .end local v1    # "twitterId":Ljava/lang/Long;
    .end local v2    # "twitterIdsInStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v3, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v3}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v3

    .line 242
    .end local v0    # "e":Lcom/liquable/nemo/model/DomainException;
    .restart local v2    # "twitterIdsInStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/liquable/nemo/client/service/AccountService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v4, "accountService.listAccountsByTwitterIds"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    sget-object v6, Lcom/liquable/nemo/client/mapper/TwitterIdAccountDtoMapMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/TwitterIdAccountDtoMapMapper;

    invoke-virtual {v3, v4, v5, v6}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;
    :try_end_1
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3
.end method

.method public listAccountsByUids(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/account/AccountDto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 253
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/AccountService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "accountService.listAccountsByUids"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    sget-object v4, Lcom/liquable/nemo/client/mapper/AccountDtoListMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/AccountDtoListMapper;

    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public listModifiedAccounts(Ljava/util/Map;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/account/AccountDto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 266
    .local p1, "userUpdateTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/AccountService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "accountService.listModifiedAccounts"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    sget-object v4, Lcom/liquable/nemo/client/mapper/AccountDtoListMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/AccountDtoListMapper;

    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public listSubAccounts()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/account/SubAccountDto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 276
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/AccountService;->rpcRestClient:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    new-instance v2, Lcom/liquable/nemo/client/service/AccountService$1;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/client/service/AccountService$1;-><init>(Lcom/liquable/nemo/client/service/AccountService;)V

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->execute(Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public migrateFromC2dmToGcm(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "gcmRegistrationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 292
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/AccountService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "accountService.migrateFromC2dmToGcm"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    sget-object v4, Lcom/liquable/nemo/client/mapper/VoidMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/VoidMapper;

    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    return-void

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public prepareEmailConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/future/IFuture;
    .locals 2
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "locale"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/liquable/future/IFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/liquable/nemo/client/service/AccountService;->rpcRestClient:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    invoke-static {p1, p2, p3}, Lcom/liquable/nemo/client/service/AccountService$$Lambda$1;->lambdaFactory$(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->executeWithFuture(Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;)Lcom/liquable/future/IFuture;

    move-result-object v0

    return-object v0
.end method

.method public registerSubAccount()Lcom/liquable/nemo/model/account/SubAccountDto;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 302
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/AccountService;->rpcRestClient:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    invoke-static {}, Lcom/liquable/nemo/client/service/AccountService$$Lambda$4;->lambdaFactory$()Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->execute(Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/model/account/SubAccountDto;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public setExcludeInMutualFriends(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "excludeInMutualFriends"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 314
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/AccountService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "accountService.setExcludeInMutualFriends"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    .line 315
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    sget-object v4, Lcom/liquable/nemo/client/mapper/VoidMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/VoidMapper;

    .line 314
    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    return-void

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public setExcludeInRecommendFriends(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "excludeInRecommendFriends"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 326
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/AccountService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "accountService.setExcludeInRecommendFriends"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    .line 327
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    sget-object v4, Lcom/liquable/nemo/client/mapper/VoidMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/VoidMapper;

    .line 326
    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    return-void

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public updateC2dmRegistrationId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "registration"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 345
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/AccountService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "accountService.updateC2dmRegistrationId"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    sget-object v4, Lcom/liquable/nemo/client/mapper/VoidMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/VoidMapper;

    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    return-void

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public updateGcmRegistrationId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "gcmRegistrationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 357
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/AccountService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "accountService.updateGcmRegistrationId"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    sget-object v4, Lcom/liquable/nemo/client/mapper/VoidMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/VoidMapper;

    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    return-void

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public updateIconExists(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "hasIcon"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 368
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/AccountService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "accountService.updateIconExists"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    .line 369
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    sget-object v4, Lcom/liquable/nemo/client/mapper/VoidMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/VoidMapper;

    .line 368
    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    return-void

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public updateNickname(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "newNickname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 379
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/AccountService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "accountService.updateNickname"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    sget-object v4, Lcom/liquable/nemo/client/mapper/VoidMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/VoidMapper;

    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    return-void

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public updatePublicProfile(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/liquable/future/IFuture;
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "isChecked"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/liquable/future/IFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 403
    iget-object v0, p0, Lcom/liquable/nemo/client/service/AccountService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v1, "accountService.updatePublicProfile"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    sget-object v3, Lcom/liquable/nemo/client/mapper/VoidMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/VoidMapper;

    invoke-virtual {v0, v1, v2, v3}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithFuture(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Lcom/liquable/future/IFuture;

    move-result-object v0

    return-object v0
.end method

.method public updateUseOfflineSequence(Z)Lcom/liquable/future/IFuture;
    .locals 2
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/liquable/future/IFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/liquable/nemo/client/service/AccountService;->rpcRestClient:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    invoke-static {p1}, Lcom/liquable/nemo/client/service/AccountService$$Lambda$2;->lambdaFactory$(Z)Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->executeWithFuture(Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;)Lcom/liquable/future/IFuture;

    move-result-object v0

    return-object v0
.end method
