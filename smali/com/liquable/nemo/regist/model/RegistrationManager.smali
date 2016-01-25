.class public Lcom/liquable/nemo/regist/model/RegistrationManager;
.super Ljava/lang/Object;
.source "RegistrationManager.java"


# instance fields
.field private final accountManager:Landroid/accounts/AccountManager;

.field private final backup:Lcom/liquable/nemo/db/Backup;

.field private final registrationService:Lcom/liquable/nemo/client/service/IRegistrationService;


# direct methods
.method public constructor <init>(Landroid/accounts/AccountManager;Lcom/liquable/nemo/client/service/IRegistrationService;Lcom/liquable/nemo/db/Backup;)V
    .locals 0
    .param p1, "accountManager"    # Landroid/accounts/AccountManager;
    .param p2, "registrationService"    # Lcom/liquable/nemo/client/service/IRegistrationService;
    .param p3, "backup"    # Lcom/liquable/nemo/db/Backup;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/liquable/nemo/regist/model/RegistrationManager;->accountManager:Landroid/accounts/AccountManager;

    .line 38
    iput-object p2, p0, Lcom/liquable/nemo/regist/model/RegistrationManager;->registrationService:Lcom/liquable/nemo/client/service/IRegistrationService;

    .line 39
    iput-object p3, p0, Lcom/liquable/nemo/regist/model/RegistrationManager;->backup:Lcom/liquable/nemo/db/Backup;

    .line 40
    return-void
.end method


# virtual methods
.method public createInvisibleOneToOneChatGroups(Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .param p2, "myUid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/model/Account;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "friends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v4, "newFriendUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/friend/model/Account;

    .line 46
    .local v1, "friend":Lcom/liquable/nemo/friend/model/Account;
    iget-object v6, p0, Lcom/liquable/nemo/regist/model/RegistrationManager;->backup:Lcom/liquable/nemo/db/Backup;

    invoke-virtual {v6, v1}, Lcom/liquable/nemo/db/Backup;->findOneToOneByAccount(Lcom/liquable/nemo/friend/model/Account;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    .line 47
    .local v0, "foundGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    if-nez v0, :cond_0

    .line 48
    invoke-virtual {v1}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 51
    .end local v0    # "foundGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    .end local v1    # "friend":Lcom/liquable/nemo/friend/model/Account;
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 60
    :cond_2
    return-void

    .line 55
    :cond_3
    iget-object v5, p0, Lcom/liquable/nemo/regist/model/RegistrationManager;->registrationService:Lcom/liquable/nemo/client/service/IRegistrationService;

    invoke-interface {v5, v4}, Lcom/liquable/nemo/client/service/IRegistrationService;->findOrCreateOneToOneGroups(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 56
    .local v3, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/group/ChatGroupDto;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/model/group/ChatGroupDto;

    .line 57
    .local v2, "group":Lcom/liquable/nemo/model/group/ChatGroupDto;
    iget-object v6, p0, Lcom/liquable/nemo/regist/model/RegistrationManager;->backup:Lcom/liquable/nemo/db/Backup;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7, p2}, Lcom/liquable/nemo/db/Backup;->createChatGroup(Lcom/liquable/nemo/model/group/ChatGroupDto;ZLjava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    goto :goto_1
.end method

.method public findLocalMissingAccount(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "memberUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 65
    .local v1, "uid":Ljava/lang/String;
    iget-object v3, p0, Lcom/liquable/nemo/regist/model/RegistrationManager;->backup:Lcom/liquable/nemo/db/Backup;

    invoke-virtual {v3, v1}, Lcom/liquable/nemo/db/Backup;->findAccountById(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v3

    if-nez v3, :cond_0

    .line 66
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    .end local v1    # "uid":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public findOrCreateProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/model/account/ProfileDto;
    .locals 9
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
            Lcom/liquable/nemo/model/InvalidPincodeException;,
            Lcom/liquable/nemo/model/CreateAccountDuplicateException;,
            Lcom/liquable/nemo/model/InvalidPhoneNumberException;,
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/liquable/nemo/regist/model/RegistrationManager;->registrationService:Lcom/liquable/nemo/client/service/IRegistrationService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/liquable/nemo/client/service/IRegistrationService;->createProfileDto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/model/account/ProfileDto;

    move-result-object v0

    return-object v0
.end method

.method public findOrCreateProfileWithFacebook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/model/account/ProfileDto;
    .locals 11
    .param p1, "fbuid"    # Ljava/lang/String;
    .param p2, "accessToken"    # Ljava/lang/String;
    .param p3, "device"    # Ljava/lang/String;
    .param p4, "nickname"    # Ljava/lang/String;
    .param p5, "gender"    # Ljava/lang/String;
    .param p6, "birthday"    # Ljava/lang/String;
    .param p7, "locale"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/CreateAccountWithFacebookDuplicateException;,
            Lcom/liquable/nemo/model/FacebookAuthenticationException;
        }
    .end annotation

    .prologue
    .line 99
    const-string/jumbo v0, "model: %s, manufacturer: %s, deivce: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 104
    .local v7, "phoneModel":Ljava/lang/String;
    iget-object v0, p0, Lcom/liquable/nemo/regist/model/RegistrationManager;->registrationService:Lcom/liquable/nemo/client/service/IRegistrationService;

    const-string/jumbo v5, "android"

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-interface/range {v0 .. v10}, Lcom/liquable/nemo/client/service/IRegistrationService;->createProfileWithFacebook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/model/account/ProfileDto;

    move-result-object v0

    return-object v0
.end method

.method public getPincodeForSendSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "rawPhoneNumber"    # Ljava/lang/String;
    .param p2, "defaultCountryCode"    # Ljava/lang/String;
    .param p3, "pincodeToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/InvalidPhoneNumberException;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/liquable/nemo/regist/model/RegistrationManager;->registrationService:Lcom/liquable/nemo/client/service/IRegistrationService;

    invoke-interface {v0, p1, p2, p3}, Lcom/liquable/nemo/client/service/IRegistrationService;->getPincode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isBackupExists(Ljava/lang/String;)Z
    .locals 1
    .param p1, "myUid"    # Ljava/lang/String;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/liquable/nemo/regist/model/RegistrationManager;->backup:Lcom/liquable/nemo/db/Backup;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/db/Backup;->isBackupExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public listAccountsByUids(Ljava/util/List;)Ljava/util/List;
    .locals 1
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
    .line 127
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/liquable/nemo/regist/model/RegistrationManager;->registrationService:Lcom/liquable/nemo/client/service/IRegistrationService;

    invoke-interface {v0, p1}, Lcom/liquable/nemo/client/service/IRegistrationService;->listAccountsByUids(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listFriendsWithState()Ljava/util/List;
    .locals 1
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
    .line 131
    iget-object v0, p0, Lcom/liquable/nemo/regist/model/RegistrationManager;->registrationService:Lcom/liquable/nemo/client/service/IRegistrationService;

    invoke-interface {v0}, Lcom/liquable/nemo/client/service/IRegistrationService;->listFriendsWithState()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listMultiChatGroupsFromServer()Ljava/util/List;
    .locals 1
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
    .line 136
    iget-object v0, p0, Lcom/liquable/nemo/regist/model/RegistrationManager;->registrationService:Lcom/liquable/nemo/client/service/IRegistrationService;

    invoke-interface {v0}, Lcom/liquable/nemo/client/service/IRegistrationService;->listMultiChatGroups()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public requestPincode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
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
    .line 145
    iget-object v0, p0, Lcom/liquable/nemo/regist/model/RegistrationManager;->registrationService:Lcom/liquable/nemo/client/service/IRegistrationService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/liquable/nemo/client/service/IRegistrationService;->requestPincode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public restoreBackup(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "myUid"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/liquable/nemo/regist/model/RegistrationManager;->backup:Lcom/liquable/nemo/db/Backup;

    invoke-virtual {v0, p1, p2}, Lcom/liquable/nemo/db/Backup;->restoreBackup(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveAccounts(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/model/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    iget-object v0, p0, Lcom/liquable/nemo/regist/model/RegistrationManager;->backup:Lcom/liquable/nemo/db/Backup;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/db/Backup;->saveAllAccounts(Ljava/util/List;)V

    .line 158
    return-void
.end method

.method public saveFriendsDataFromServer(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/friend/FriendDto;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/model/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, "friendsFromServer":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/friend/FriendDto;>;"
    iget-object v0, p0, Lcom/liquable/nemo/regist/model/RegistrationManager;->backup:Lcom/liquable/nemo/db/Backup;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/db/Backup;->saveFriendData(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public saveMultiChatGroups(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p2, "myUid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/group/ChatGroupDto;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "chatGroupDtos":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/group/ChatGroupDto;>;"
    iget-object v0, p0, Lcom/liquable/nemo/regist/model/RegistrationManager;->backup:Lcom/liquable/nemo/db/Backup;

    invoke-virtual {v0, p1, p2}, Lcom/liquable/nemo/db/Backup;->saveMultiChatGroups(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public truncateNemoDb()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/liquable/nemo/regist/model/RegistrationManager;->backup:Lcom/liquable/nemo/db/Backup;

    invoke-virtual {v0}, Lcom/liquable/nemo/db/Backup;->truncateNemoDb()V

    .line 171
    return-void
.end method
