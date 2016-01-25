.class Lcom/liquable/nemo/client/service/RegistrationService$2;
.super Ljava/lang/Object;
.source "RegistrationService.java"

# interfaces
.implements Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/client/service/RegistrationService;->createProfileWithFacebook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/model/account/ProfileDto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig",
        "<",
        "Lcom/liquable/nemo/model/account/ProfileDto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/client/service/RegistrationService;

.field final synthetic val$accessToken:Ljava/lang/String;

.field final synthetic val$birthday:Ljava/lang/String;

.field final synthetic val$device:Ljava/lang/String;

.field final synthetic val$fbuid:Ljava/lang/String;

.field final synthetic val$gender:Ljava/lang/String;

.field final synthetic val$locale:Ljava/lang/String;

.field final synthetic val$nickname:Ljava/lang/String;

.field final synthetic val$osVersion:Ljava/lang/String;

.field final synthetic val$phoneModel:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/client/service/RegistrationService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/client/service/RegistrationService;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/liquable/nemo/client/service/RegistrationService$2;->this$0:Lcom/liquable/nemo/client/service/RegistrationService;

    iput-object p2, p0, Lcom/liquable/nemo/client/service/RegistrationService$2;->val$fbuid:Ljava/lang/String;

    iput-object p3, p0, Lcom/liquable/nemo/client/service/RegistrationService$2;->val$accessToken:Ljava/lang/String;

    iput-object p4, p0, Lcom/liquable/nemo/client/service/RegistrationService$2;->val$device:Ljava/lang/String;

    iput-object p5, p0, Lcom/liquable/nemo/client/service/RegistrationService$2;->val$nickname:Ljava/lang/String;

    iput-object p6, p0, Lcom/liquable/nemo/client/service/RegistrationService$2;->val$osVersion:Ljava/lang/String;

    iput-object p7, p0, Lcom/liquable/nemo/client/service/RegistrationService$2;->val$phoneModel:Ljava/lang/String;

    iput-object p8, p0, Lcom/liquable/nemo/client/service/RegistrationService$2;->val$gender:Ljava/lang/String;

    iput-object p9, p0, Lcom/liquable/nemo/client/service/RegistrationService$2;->val$birthday:Ljava/lang/String;

    iput-object p10, p0, Lcom/liquable/nemo/client/service/RegistrationService$2;->val$locale:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public config(Lcom/liquable/volley/request/RequestBuilder;)Lcom/liquable/volley/request/Requestable;
    .locals 3
    .param p1, "builder"    # Lcom/liquable/volley/request/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/volley/request/RequestBuilder;",
            ")",
            "Lcom/liquable/volley/request/Requestable",
            "<",
            "Lcom/liquable/nemo/model/account/ProfileDto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p1}, Lcom/liquable/volley/request/RequestBuilder;->withHttpPost()Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-string/jumbo v1, "/accountService/createProfileWithFacebook"

    .line 94
    invoke-virtual {v0, v1}, Lcom/liquable/volley/request/RequestBuilder;->withPath(Ljava/lang/String;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-string/jumbo v1, "fbuid"

    iget-object v2, p0, Lcom/liquable/nemo/client/service/RegistrationService$2;->val$fbuid:Ljava/lang/String;

    .line 95
    invoke-virtual {v0, v1, v2}, Lcom/liquable/volley/request/RequestBuilder;->withAddParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-string/jumbo v1, "accessToken"

    iget-object v2, p0, Lcom/liquable/nemo/client/service/RegistrationService$2;->val$accessToken:Ljava/lang/String;

    .line 96
    invoke-virtual {v0, v1, v2}, Lcom/liquable/volley/request/RequestBuilder;->withAddParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-string/jumbo v1, "device"

    iget-object v2, p0, Lcom/liquable/nemo/client/service/RegistrationService$2;->val$device:Ljava/lang/String;

    .line 97
    invoke-virtual {v0, v1, v2}, Lcom/liquable/volley/request/RequestBuilder;->withAddParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-string/jumbo v1, "nickname"

    iget-object v2, p0, Lcom/liquable/nemo/client/service/RegistrationService$2;->val$nickname:Ljava/lang/String;

    .line 98
    invoke-virtual {v0, v1, v2}, Lcom/liquable/volley/request/RequestBuilder;->withAddParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-string/jumbo v1, "osType"

    const-string/jumbo v2, "android"

    .line 99
    invoke-virtual {v0, v1, v2}, Lcom/liquable/volley/request/RequestBuilder;->withAddParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-string/jumbo v1, "osVersion"

    iget-object v2, p0, Lcom/liquable/nemo/client/service/RegistrationService$2;->val$osVersion:Ljava/lang/String;

    .line 100
    invoke-virtual {v0, v1, v2}, Lcom/liquable/volley/request/RequestBuilder;->withAddParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-string/jumbo v1, "phoneModel"

    iget-object v2, p0, Lcom/liquable/nemo/client/service/RegistrationService$2;->val$phoneModel:Ljava/lang/String;

    .line 101
    invoke-virtual {v0, v1, v2}, Lcom/liquable/volley/request/RequestBuilder;->withAddParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-string/jumbo v1, "gender"

    iget-object v2, p0, Lcom/liquable/nemo/client/service/RegistrationService$2;->val$gender:Ljava/lang/String;

    .line 102
    invoke-virtual {v0, v1, v2}, Lcom/liquable/volley/request/RequestBuilder;->withAddParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-string/jumbo v1, "birthday"

    iget-object v2, p0, Lcom/liquable/nemo/client/service/RegistrationService$2;->val$birthday:Ljava/lang/String;

    .line 103
    invoke-virtual {v0, v1, v2}, Lcom/liquable/volley/request/RequestBuilder;->withAddParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-string/jumbo v1, "facebookLocale"

    iget-object v2, p0, Lcom/liquable/nemo/client/service/RegistrationService$2;->val$locale:Ljava/lang/String;

    .line 104
    invoke-virtual {v0, v1, v2}, Lcom/liquable/volley/request/RequestBuilder;->withAddParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/client/mapper/ProfileDtoMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/ProfileDtoMapper;

    .line 105
    invoke-virtual {v0, v1}, Lcom/liquable/volley/request/RequestBuilder;->build(Lcom/liquable/nemo/client/mapper/ResultMapper;)Lcom/liquable/volley/request/Requestable;

    move-result-object v0

    return-object v0
.end method
