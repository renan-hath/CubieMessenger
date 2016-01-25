.class public Lcom/liquable/nemo/client/service/RegistrationService;
.super Ljava/lang/Object;
.source "RegistrationService.java"

# interfaces
.implements Lcom/liquable/nemo/client/service/IRegistrationService;


# instance fields
.field private final rpcRestClient:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/client/rpcrest/RpcRestClient;)V
    .locals 0
    .param p1, "rpcRestClient"    # Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/liquable/nemo/client/service/RegistrationService;->rpcRestClient:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    .line 34
    return-void
.end method


# virtual methods
.method public createProfileDto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/model/account/ProfileDto;
    .locals 12
    .param p1, "pincodeToken"    # Ljava/lang/String;
    .param p2, "pincode"    # Ljava/lang/String;
    .param p3, "rawPhoneNumber"    # Ljava/lang/String;
    .param p4, "countryCodeIso3166"    # Ljava/lang/String;
    .param p5, "device"    # Ljava/lang/String;
    .param p6, "nickname"    # Ljava/lang/String;
    .param p7, "osVersion"    # Ljava/lang/String;
    .param p8, "phoneModel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/InvalidPincodeException;,
            Lcom/liquable/nemo/model/CreateAccountDuplicateException;,
            Lcom/liquable/nemo/model/InvalidPhoneNumberException;
        }
    .end annotation

    .prologue
    .line 48
    :try_start_0
    iget-object v11, p0, Lcom/liquable/nemo/client/service/RegistrationService;->rpcRestClient:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    new-instance v0, Lcom/liquable/nemo/client/service/RegistrationService$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/liquable/nemo/client/service/RegistrationService$1;-><init>(Lcom/liquable/nemo/client/service/RegistrationService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->execute(Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/account/ProfileDto;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 65
    :catch_0
    move-exception v10

    .line 66
    .local v10, "exception":Lcom/liquable/nemo/model/DomainException;
    instance-of v0, v10, Lcom/liquable/nemo/model/InvalidPincodeException;

    if-eqz v0, :cond_0

    .line 67
    check-cast v10, Lcom/liquable/nemo/model/InvalidPincodeException;

    .end local v10    # "exception":Lcom/liquable/nemo/model/DomainException;
    throw v10

    .line 68
    .restart local v10    # "exception":Lcom/liquable/nemo/model/DomainException;
    :cond_0
    instance-of v0, v10, Lcom/liquable/nemo/model/InvalidPhoneNumberException;

    if-eqz v0, :cond_1

    .line 69
    check-cast v10, Lcom/liquable/nemo/model/InvalidPhoneNumberException;

    .end local v10    # "exception":Lcom/liquable/nemo/model/DomainException;
    throw v10

    .line 70
    .restart local v10    # "exception":Lcom/liquable/nemo/model/DomainException;
    :cond_1
    instance-of v0, v10, Lcom/liquable/nemo/model/CreateAccountDuplicateException;

    if-eqz v0, :cond_2

    .line 71
    check-cast v10, Lcom/liquable/nemo/model/CreateAccountDuplicateException;

    .end local v10    # "exception":Lcom/liquable/nemo/model/DomainException;
    throw v10

    .line 73
    .restart local v10    # "exception":Lcom/liquable/nemo/model/DomainException;
    :cond_2
    new-instance v0, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v0}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v0
.end method

.method public createProfileWithFacebook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/model/account/ProfileDto;
    .locals 13
    .param p1, "fbuid"    # Ljava/lang/String;
    .param p2, "accessToken"    # Ljava/lang/String;
    .param p3, "device"    # Ljava/lang/String;
    .param p4, "nickname"    # Ljava/lang/String;
    .param p5, "osType"    # Ljava/lang/String;
    .param p6, "osVersion"    # Ljava/lang/String;
    .param p7, "phoneModel"    # Ljava/lang/String;
    .param p8, "gender"    # Ljava/lang/String;
    .param p9, "birthday"    # Ljava/lang/String;
    .param p10, "locale"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/CreateAccountWithFacebookDuplicateException;,
            Lcom/liquable/nemo/model/FacebookAuthenticationException;
        }
    .end annotation

    .prologue
    .line 90
    :try_start_0
    iget-object v12, p0, Lcom/liquable/nemo/client/service/RegistrationService;->rpcRestClient:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    new-instance v0, Lcom/liquable/nemo/client/service/RegistrationService$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/liquable/nemo/client/service/RegistrationService$2;-><init>(Lcom/liquable/nemo/client/service/RegistrationService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->execute(Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/account/ProfileDto;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 108
    :catch_0
    move-exception v11

    .line 109
    .local v11, "exception":Lcom/liquable/nemo/model/DomainException;
    instance-of v0, v11, Lcom/liquable/nemo/model/CreateAccountWithFacebookDuplicateException;

    if-eqz v0, :cond_0

    .line 110
    check-cast v11, Lcom/liquable/nemo/model/CreateAccountWithFacebookDuplicateException;

    .end local v11    # "exception":Lcom/liquable/nemo/model/DomainException;
    throw v11

    .line 111
    .restart local v11    # "exception":Lcom/liquable/nemo/model/DomainException;
    :cond_0
    instance-of v0, v11, Lcom/liquable/nemo/model/FacebookAuthenticationException;

    if-eqz v0, :cond_1

    .line 112
    check-cast v11, Lcom/liquable/nemo/model/FacebookAuthenticationException;

    .end local v11    # "exception":Lcom/liquable/nemo/model/DomainException;
    throw v11

    .line 114
    .restart local v11    # "exception":Lcom/liquable/nemo/model/DomainException;
    :cond_1
    new-instance v0, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v0}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v0
.end method

.method public findOrCreateOneToOneGroups(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/group/ChatGroupDto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "friendUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/RegistrationService;->rpcRestClient:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    new-instance v2, Lcom/liquable/nemo/client/service/RegistrationService$3;

    invoke-direct {v2, p0, p1}, Lcom/liquable/nemo/client/service/RegistrationService$3;-><init>(Lcom/liquable/nemo/client/service/RegistrationService;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->execute(Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public getPincode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "rawPhoneNumber"    # Ljava/lang/String;
    .param p2, "countryCodeIso3166"    # Ljava/lang/String;
    .param p3, "pincodeToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/InvalidPhoneNumberException;
        }
    .end annotation

    .prologue
    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/RegistrationService;->rpcRestClient:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    new-instance v2, Lcom/liquable/nemo/client/service/RegistrationService$4;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/liquable/nemo/client/service/RegistrationService$4;-><init>(Lcom/liquable/nemo/client/service/RegistrationService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->execute(Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Lcom/liquable/nemo/model/InvalidPhoneNumberException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Lcom/liquable/nemo/model/InvalidPhoneNumberException;
    throw v0

    .line 152
    .end local v0    # "e":Lcom/liquable/nemo/model/InvalidPhoneNumberException;
    :catch_1
    move-exception v0

    .line 153
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public listAccountsByUids(Ljava/util/List;)Ljava/util/List;
    .locals 3
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
    .line 160
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/RegistrationService;->rpcRestClient:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    new-instance v2, Lcom/liquable/nemo/client/service/RegistrationService$5;

    invoke-direct {v2, p0, p1}, Lcom/liquable/nemo/client/service/RegistrationService$5;-><init>(Lcom/liquable/nemo/client/service/RegistrationService;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->execute(Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public listFriendsWithState()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/friend/FriendDto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 176
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/RegistrationService;->rpcRestClient:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    new-instance v2, Lcom/liquable/nemo/client/service/RegistrationService$6;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/client/service/RegistrationService$6;-><init>(Lcom/liquable/nemo/client/service/RegistrationService;)V

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->execute(Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public listMultiChatGroups()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/group/ChatGroupDto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/RegistrationService;->rpcRestClient:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    new-instance v2, Lcom/liquable/nemo/client/service/RegistrationService$7;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/client/service/RegistrationService$7;-><init>(Lcom/liquable/nemo/client/service/RegistrationService;)V

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->execute(Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public requestPincode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "rawPhoneNumber"    # Ljava/lang/String;
    .param p2, "countryCodeIso3166"    # Ljava/lang/String;
    .param p3, "pincodeToken"    # Ljava/lang/String;
    .param p4, "mobileCountryCode"    # Ljava/lang/String;
    .param p5, "mobileNetworkCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/InvalidPhoneNumberException;,
            Lcom/liquable/nemo/model/InvalidSmsNumberException;
        }
    .end annotation

    .prologue
    .line 211
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    .line 212
    .local v7, "locale":Ljava/lang/String;
    iget-object v9, p0, Lcom/liquable/nemo/client/service/RegistrationService;->rpcRestClient:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    new-instance v0, Lcom/liquable/nemo/client/service/RegistrationService$8;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/liquable/nemo/client/service/RegistrationService$8;-><init>(Lcom/liquable/nemo/client/service/RegistrationService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->execute(Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/liquable/nemo/model/InvalidPhoneNumberException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/liquable/nemo/model/InvalidSmsNumberException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_2

    .line 233
    return-void

    .line 226
    .end local v7    # "locale":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 227
    .local v8, "e":Lcom/liquable/nemo/model/InvalidPhoneNumberException;
    throw v8

    .line 228
    .end local v8    # "e":Lcom/liquable/nemo/model/InvalidPhoneNumberException;
    :catch_1
    move-exception v8

    .line 229
    .local v8, "e":Lcom/liquable/nemo/model/InvalidSmsNumberException;
    throw v8

    .line 230
    .end local v8    # "e":Lcom/liquable/nemo/model/InvalidSmsNumberException;
    :catch_2
    move-exception v8

    .line 231
    .local v8, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v0, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v0}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v0
.end method
