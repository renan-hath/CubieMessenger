.class public Lcom/liquable/nemo/model/account/ProfileDto;
.super Ljava/lang/Object;
.source "ProfileDto.java"

# interfaces
.implements Lcom/liquable/nemo/rpc/IDataTransferObject;


# static fields
.field private static final serialVersionUID:J = 0xfbfaf2135a06e49L


# instance fields
.field private final account:Lcom/liquable/nemo/model/account/AccountDto;

.field private final apnsDeviceToken:Ljava/lang/String;

.field private final apnsSound:Ljava/lang/String;

.field private final c2dmRegistrationId:Ljava/lang/String;

.field private final createTime:J

.field private final disabled:Z

.field private final email:Ljava/lang/String;

.field private final excludeInMutualFriends:Z

.field private final excludeInRecommendFriends:Z

.field private final fbuid:Ljava/lang/String;

.field private final gcmRegistrationId:Ljava/lang/String;

.field private final osType:Ljava/lang/String;

.field private final osVersion:Ljava/lang/String;

.field private final phoneModel:Ljava/lang/String;

.field private final publicProfile:Z

.field private final rpcAccessToken:Ljava/lang/String;

.field private final twitterId:Ljava/lang/Long;

.field private final useOfflineSequence:Z


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/model/account/AccountDto;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 1
    .param p1, "account"    # Lcom/liquable/nemo/model/account/AccountDto;
    .param p2, "createTime"    # J
    .param p4, "c2dmRegistrationId"    # Ljava/lang/String;
    .param p5, "apnsDeviceToken"    # Ljava/lang/String;
    .param p6, "apnsSound"    # Ljava/lang/String;
    .param p7, "excludeInMutualFriends"    # Z
    .param p8, "excludeInRecommendFriends"    # Z
    .param p9, "disabled"    # Z
    .param p10, "fbuid"    # Ljava/lang/String;
    .param p11, "twitterId"    # Ljava/lang/Long;
    .param p12, "osType"    # Ljava/lang/String;
    .param p13, "osVersion"    # Ljava/lang/String;
    .param p14, "phoneModel"    # Ljava/lang/String;
    .param p15, "gcmRegistrationId"    # Ljava/lang/String;
    .param p16, "rpcAccessToken"    # Ljava/lang/String;
    .param p17, "publicProfile"    # Z
    .param p18, "email"    # Ljava/lang/String;
    .param p19, "useOfflineSequence"    # Z

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/liquable/nemo/model/account/ProfileDto;->account:Lcom/liquable/nemo/model/account/AccountDto;

    .line 64
    iput-wide p2, p0, Lcom/liquable/nemo/model/account/ProfileDto;->createTime:J

    .line 65
    iput-object p4, p0, Lcom/liquable/nemo/model/account/ProfileDto;->c2dmRegistrationId:Ljava/lang/String;

    .line 66
    iput-object p5, p0, Lcom/liquable/nemo/model/account/ProfileDto;->apnsDeviceToken:Ljava/lang/String;

    .line 67
    iput-object p6, p0, Lcom/liquable/nemo/model/account/ProfileDto;->apnsSound:Ljava/lang/String;

    .line 68
    iput-boolean p7, p0, Lcom/liquable/nemo/model/account/ProfileDto;->excludeInMutualFriends:Z

    .line 69
    iput-boolean p8, p0, Lcom/liquable/nemo/model/account/ProfileDto;->excludeInRecommendFriends:Z

    .line 70
    iput-boolean p9, p0, Lcom/liquable/nemo/model/account/ProfileDto;->disabled:Z

    .line 71
    iput-object p10, p0, Lcom/liquable/nemo/model/account/ProfileDto;->fbuid:Ljava/lang/String;

    .line 72
    iput-object p11, p0, Lcom/liquable/nemo/model/account/ProfileDto;->twitterId:Ljava/lang/Long;

    .line 73
    iput-object p12, p0, Lcom/liquable/nemo/model/account/ProfileDto;->osType:Ljava/lang/String;

    .line 74
    iput-object p13, p0, Lcom/liquable/nemo/model/account/ProfileDto;->osVersion:Ljava/lang/String;

    .line 75
    iput-object p14, p0, Lcom/liquable/nemo/model/account/ProfileDto;->phoneModel:Ljava/lang/String;

    .line 76
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/liquable/nemo/model/account/ProfileDto;->gcmRegistrationId:Ljava/lang/String;

    .line 77
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/liquable/nemo/model/account/ProfileDto;->rpcAccessToken:Ljava/lang/String;

    .line 78
    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/liquable/nemo/model/account/ProfileDto;->publicProfile:Z

    .line 79
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/liquable/nemo/model/account/ProfileDto;->email:Ljava/lang/String;

    .line 80
    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/liquable/nemo/model/account/ProfileDto;->useOfflineSequence:Z

    .line 81
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 85
    if-ne p0, p1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v1

    .line 88
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 89
    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 92
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 94
    check-cast v0, Lcom/liquable/nemo/model/account/ProfileDto;

    .line 95
    .local v0, "other":Lcom/liquable/nemo/model/account/ProfileDto;
    iget-object v3, p0, Lcom/liquable/nemo/model/account/ProfileDto;->account:Lcom/liquable/nemo/model/account/AccountDto;

    if-nez v3, :cond_4

    .line 96
    iget-object v3, v0, Lcom/liquable/nemo/model/account/ProfileDto;->account:Lcom/liquable/nemo/model/account/AccountDto;

    if-eqz v3, :cond_0

    move v1, v2

    .line 97
    goto :goto_0

    .line 99
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/model/account/ProfileDto;->account:Lcom/liquable/nemo/model/account/AccountDto;

    iget-object v4, v0, Lcom/liquable/nemo/model/account/ProfileDto;->account:Lcom/liquable/nemo/model/account/AccountDto;

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/model/account/AccountDto;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 100
    goto :goto_0
.end method

.method public getAccount()Lcom/liquable/nemo/model/account/AccountDto;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/liquable/nemo/model/account/ProfileDto;->account:Lcom/liquable/nemo/model/account/AccountDto;

    return-object v0
.end method

.method public getApnsDeviceToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/liquable/nemo/model/account/ProfileDto;->apnsDeviceToken:Ljava/lang/String;

    return-object v0
.end method

.method public getApnsSound()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/liquable/nemo/model/account/ProfileDto;->apnsSound:Ljava/lang/String;

    return-object v0
.end method

.method public getC2dmRegistrationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/liquable/nemo/model/account/ProfileDto;->c2dmRegistrationId:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 122
    iget-wide v0, p0, Lcom/liquable/nemo/model/account/ProfileDto;->createTime:J

    return-wide v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/liquable/nemo/model/account/ProfileDto;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFbuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/liquable/nemo/model/account/ProfileDto;->fbuid:Ljava/lang/String;

    return-object v0
.end method

.method public getGcmRegistrationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/liquable/nemo/model/account/ProfileDto;->gcmRegistrationId:Ljava/lang/String;

    return-object v0
.end method

.method public getOsType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/liquable/nemo/model/account/ProfileDto;->osType:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/liquable/nemo/model/account/ProfileDto;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/liquable/nemo/model/account/ProfileDto;->phoneModel:Ljava/lang/String;

    return-object v0
.end method

.method public getRpcAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/liquable/nemo/model/account/ProfileDto;->rpcAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getTwitterId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/liquable/nemo/model/account/ProfileDto;->twitterId:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 163
    const/16 v0, 0x1f

    .line 164
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 165
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/model/account/ProfileDto;->account:Lcom/liquable/nemo/model/account/AccountDto;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 166
    return v1

    .line 165
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/model/account/ProfileDto;->account:Lcom/liquable/nemo/model/account/AccountDto;

    invoke-virtual {v2}, Lcom/liquable/nemo/model/account/AccountDto;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public isDisabled()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/liquable/nemo/model/account/ProfileDto;->disabled:Z

    return v0
.end method

.method public isExcludeInMutualFriends()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/liquable/nemo/model/account/ProfileDto;->excludeInMutualFriends:Z

    return v0
.end method

.method public isExcludeInRecommendFriends()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/liquable/nemo/model/account/ProfileDto;->excludeInRecommendFriends:Z

    return v0
.end method

.method public isPublicProfile()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/liquable/nemo/model/account/ProfileDto;->publicProfile:Z

    return v0
.end method

.method public isUseOfflineSequence()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/liquable/nemo/model/account/ProfileDto;->useOfflineSequence:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x27

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ProfileDto{account="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/account/ProfileDto;->account:Lcom/liquable/nemo/model/account/AccountDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/model/account/ProfileDto;->createTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", c2dmRegistrationId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/account/ProfileDto;->c2dmRegistrationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", gcmRegistrationId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/account/ProfileDto;->gcmRegistrationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", apnsDeviceToken=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/account/ProfileDto;->apnsDeviceToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", apnsSound=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/account/ProfileDto;->apnsSound:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", excludeInMutualFriends="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/model/account/ProfileDto;->excludeInMutualFriends:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", excludeInRecommendFriends="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/model/account/ProfileDto;->excludeInRecommendFriends:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", publicProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/model/account/ProfileDto;->publicProfile:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", disabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/model/account/ProfileDto;->disabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fbuid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/account/ProfileDto;->fbuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", osType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/account/ProfileDto;->osType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", osVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/account/ProfileDto;->osVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", phoneModel=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/account/ProfileDto;->phoneModel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", twitterId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/account/ProfileDto;->twitterId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", rpcAccessToken=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/account/ProfileDto;->rpcAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", email=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/account/ProfileDto;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", useOfflineSequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/model/account/ProfileDto;->useOfflineSequence:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
