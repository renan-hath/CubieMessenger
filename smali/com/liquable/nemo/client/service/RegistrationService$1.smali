.class Lcom/liquable/nemo/client/service/RegistrationService$1;
.super Ljava/lang/Object;
.source "RegistrationService.java"

# interfaces
.implements Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/client/service/RegistrationService;->createProfileDto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/model/account/ProfileDto;
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

.field final synthetic val$countryCodeIso3166:Ljava/lang/String;

.field final synthetic val$device:Ljava/lang/String;

.field final synthetic val$nickname:Ljava/lang/String;

.field final synthetic val$osVersion:Ljava/lang/String;

.field final synthetic val$phoneModel:Ljava/lang/String;

.field final synthetic val$pincode:Ljava/lang/String;

.field final synthetic val$pincodeToken:Ljava/lang/String;

.field final synthetic val$rawPhoneNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/client/service/RegistrationService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/client/service/RegistrationService;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/liquable/nemo/client/service/RegistrationService$1;->this$0:Lcom/liquable/nemo/client/service/RegistrationService;

    iput-object p2, p0, Lcom/liquable/nemo/client/service/RegistrationService$1;->val$pincodeToken:Ljava/lang/String;

    iput-object p3, p0, Lcom/liquable/nemo/client/service/RegistrationService$1;->val$pincode:Ljava/lang/String;

    iput-object p4, p0, Lcom/liquable/nemo/client/service/RegistrationService$1;->val$rawPhoneNumber:Ljava/lang/String;

    iput-object p5, p0, Lcom/liquable/nemo/client/service/RegistrationService$1;->val$countryCodeIso3166:Ljava/lang/String;

    iput-object p6, p0, Lcom/liquable/nemo/client/service/RegistrationService$1;->val$device:Ljava/lang/String;

    iput-object p7, p0, Lcom/liquable/nemo/client/service/RegistrationService$1;->val$nickname:Ljava/lang/String;

    iput-object p8, p0, Lcom/liquable/nemo/client/service/RegistrationService$1;->val$osVersion:Ljava/lang/String;

    iput-object p9, p0, Lcom/liquable/nemo/client/service/RegistrationService$1;->val$phoneModel:Ljava/lang/String;

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
    .line 51
    invoke-virtual {p1}, Lcom/liquable/volley/request/RequestBuilder;->withHttpPost()Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-string/jumbo v1, "/accountService/createProfile"

    .line 52
    invoke-virtual {v0, v1}, Lcom/liquable/volley/request/RequestBuilder;->withPath(Ljava/lang/String;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-string/jumbo v1, "pincodeToken"

    iget-object v2, p0, Lcom/liquable/nemo/client/service/RegistrationService$1;->val$pincodeToken:Ljava/lang/String;

    .line 53
    invoke-virtual {v0, v1, v2}, Lcom/liquable/volley/request/RequestBuilder;->withAddParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-string/jumbo v1, "pincode"

    iget-object v2, p0, Lcom/liquable/nemo/client/service/RegistrationService$1;->val$pincode:Ljava/lang/String;

    .line 54
    invoke-virtual {v0, v1, v2}, Lcom/liquable/volley/request/RequestBuilder;->withAddParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-string/jumbo v1, "rawPhoneNumber"

    iget-object v2, p0, Lcom/liquable/nemo/client/service/RegistrationService$1;->val$rawPhoneNumber:Ljava/lang/String;

    .line 55
    invoke-virtual {v0, v1, v2}, Lcom/liquable/volley/request/RequestBuilder;->withAddParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-string/jumbo v1, "defaultCountryCode"

    iget-object v2, p0, Lcom/liquable/nemo/client/service/RegistrationService$1;->val$countryCodeIso3166:Ljava/lang/String;

    .line 56
    invoke-virtual {v0, v1, v2}, Lcom/liquable/volley/request/RequestBuilder;->withAddParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-string/jumbo v1, "device"

    iget-object v2, p0, Lcom/liquable/nemo/client/service/RegistrationService$1;->val$device:Ljava/lang/String;

    .line 57
    invoke-virtual {v0, v1, v2}, Lcom/liquable/volley/request/RequestBuilder;->withAddParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-string/jumbo v1, "nickname"

    iget-object v2, p0, Lcom/liquable/nemo/client/service/RegistrationService$1;->val$nickname:Ljava/lang/String;

    .line 58
    invoke-virtual {v0, v1, v2}, Lcom/liquable/volley/request/RequestBuilder;->withAddParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-string/jumbo v1, "osType"

    const-string/jumbo v2, "android"

    .line 59
    invoke-virtual {v0, v1, v2}, Lcom/liquable/volley/request/RequestBuilder;->withAddParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-string/jumbo v1, "osVersion"

    iget-object v2, p0, Lcom/liquable/nemo/client/service/RegistrationService$1;->val$osVersion:Ljava/lang/String;

    .line 60
    invoke-virtual {v0, v1, v2}, Lcom/liquable/volley/request/RequestBuilder;->withAddParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-string/jumbo v1, "phoneModel"

    iget-object v2, p0, Lcom/liquable/nemo/client/service/RegistrationService$1;->val$phoneModel:Ljava/lang/String;

    .line 61
    invoke-virtual {v0, v1, v2}, Lcom/liquable/volley/request/RequestBuilder;->withAddParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/client/mapper/ProfileDtoMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/ProfileDtoMapper;

    .line 62
    invoke-virtual {v0, v1}, Lcom/liquable/volley/request/RequestBuilder;->build(Lcom/liquable/nemo/client/mapper/ResultMapper;)Lcom/liquable/volley/request/Requestable;

    move-result-object v0

    return-object v0
.end method
