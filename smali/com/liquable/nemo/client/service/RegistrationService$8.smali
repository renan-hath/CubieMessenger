.class Lcom/liquable/nemo/client/service/RegistrationService$8;
.super Ljava/lang/Object;
.source "RegistrationService.java"

# interfaces
.implements Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/client/service/RegistrationService;->requestPincode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/client/service/RegistrationService;

.field final synthetic val$countryCodeIso3166:Ljava/lang/String;

.field final synthetic val$locale:Ljava/lang/String;

.field final synthetic val$mobileCountryCode:Ljava/lang/String;

.field final synthetic val$mobileNetworkCode:Ljava/lang/String;

.field final synthetic val$pincodeToken:Ljava/lang/String;

.field final synthetic val$rawPhoneNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/client/service/RegistrationService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/client/service/RegistrationService;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/liquable/nemo/client/service/RegistrationService$8;->this$0:Lcom/liquable/nemo/client/service/RegistrationService;

    iput-object p2, p0, Lcom/liquable/nemo/client/service/RegistrationService$8;->val$rawPhoneNumber:Ljava/lang/String;

    iput-object p3, p0, Lcom/liquable/nemo/client/service/RegistrationService$8;->val$countryCodeIso3166:Ljava/lang/String;

    iput-object p4, p0, Lcom/liquable/nemo/client/service/RegistrationService$8;->val$pincodeToken:Ljava/lang/String;

    iput-object p5, p0, Lcom/liquable/nemo/client/service/RegistrationService$8;->val$mobileCountryCode:Ljava/lang/String;

    iput-object p6, p0, Lcom/liquable/nemo/client/service/RegistrationService$8;->val$mobileNetworkCode:Ljava/lang/String;

    iput-object p7, p0, Lcom/liquable/nemo/client/service/RegistrationService$8;->val$locale:Ljava/lang/String;

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
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    invoke-virtual {p1}, Lcom/liquable/volley/request/RequestBuilder;->withHttpPost()Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-string/jumbo v1, "/accountService/requestPincodeWithSmsEx"

    .line 216
    invoke-virtual {v0, v1}, Lcom/liquable/volley/request/RequestBuilder;->withPath(Ljava/lang/String;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-string/jumbo v1, "rawPhoneNumber"

    iget-object v2, p0, Lcom/liquable/nemo/client/service/RegistrationService$8;->val$rawPhoneNumber:Ljava/lang/String;

    .line 217
    invoke-virtual {v0, v1, v2}, Lcom/liquable/volley/request/RequestBuilder;->withAddParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-string/jumbo v1, "defaultCountryCode"

    iget-object v2, p0, Lcom/liquable/nemo/client/service/RegistrationService$8;->val$countryCodeIso3166:Ljava/lang/String;

    .line 218
    invoke-virtual {v0, v1, v2}, Lcom/liquable/volley/request/RequestBuilder;->withAddParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-string/jumbo v1, "pincodeToken"

    iget-object v2, p0, Lcom/liquable/nemo/client/service/RegistrationService$8;->val$pincodeToken:Ljava/lang/String;

    .line 219
    invoke-virtual {v0, v1, v2}, Lcom/liquable/volley/request/RequestBuilder;->withAddParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-string/jumbo v1, "mobileCountryCode"

    iget-object v2, p0, Lcom/liquable/nemo/client/service/RegistrationService$8;->val$mobileCountryCode:Ljava/lang/String;

    .line 220
    invoke-virtual {v0, v1, v2}, Lcom/liquable/volley/request/RequestBuilder;->withAddParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-string/jumbo v1, "mobileNetworkCode"

    iget-object v2, p0, Lcom/liquable/nemo/client/service/RegistrationService$8;->val$mobileNetworkCode:Ljava/lang/String;

    .line 221
    invoke-virtual {v0, v1, v2}, Lcom/liquable/volley/request/RequestBuilder;->withAddParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-string/jumbo v1, "locale"

    iget-object v2, p0, Lcom/liquable/nemo/client/service/RegistrationService$8;->val$locale:Ljava/lang/String;

    .line 222
    invoke-virtual {v0, v1, v2}, Lcom/liquable/volley/request/RequestBuilder;->withAddParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-class v1, Ljava/lang/Void;

    .line 223
    invoke-virtual {v0, v1}, Lcom/liquable/volley/request/RequestBuilder;->build(Ljava/lang/Class;)Lcom/liquable/volley/request/Requestable;

    move-result-object v0

    return-object v0
.end method
