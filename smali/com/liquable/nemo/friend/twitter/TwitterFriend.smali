.class public Lcom/liquable/nemo/friend/twitter/TwitterFriend;
.super Ljava/lang/Object;
.source "TwitterFriend.java"


# instance fields
.field private account:Lcom/liquable/nemo/model/account/AccountDto;

.field private cubieFriend:Z

.field private final lang:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final profileImageUrl:Ljava/net/URL;

.field private final screenName:Ljava/lang/String;

.field private final twitterId:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V
    .locals 0
    .param p1, "twitterId"    # J
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "screenName"    # Ljava/lang/String;
    .param p5, "profileImageUrl"    # Ljava/net/URL;
    .param p6, "lang"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide p1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriend;->twitterId:J

    .line 29
    iput-object p3, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriend;->name:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriend;->screenName:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriend;->profileImageUrl:Ljava/net/URL;

    .line 32
    iput-object p6, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriend;->lang:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 37
    if-ne p0, p1, :cond_1

    .line 50
    :cond_0
    :goto_0
    return v1

    .line 40
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 41
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 44
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 46
    check-cast v0, Lcom/liquable/nemo/friend/twitter/TwitterFriend;

    .line 47
    .local v0, "other":Lcom/liquable/nemo/friend/twitter/TwitterFriend;
    iget-wide v3, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriend;->twitterId:J

    iget-wide v5, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriend;->twitterId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    move v1, v2

    .line 48
    goto :goto_0
.end method

.method public getAccount()Lcom/liquable/nemo/model/account/AccountDto;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriend;->account:Lcom/liquable/nemo/model/account/AccountDto;

    return-object v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriend;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriend;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileImageUrl()Ljava/net/URL;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriend;->profileImageUrl:Ljava/net/URL;

    return-object v0
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriend;->screenName:Ljava/lang/String;

    return-object v0
.end method

.method public getTwitterId()J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriend;->twitterId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 79
    const/16 v0, 0x1f

    .line 80
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 81
    .local v1, "result":I
    iget-wide v2, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriend;->twitterId:J

    iget-wide v4, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriend;->twitterId:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v1, v2, 0x1f

    .line 82
    return v1
.end method

.method public isConnectedToTwitter()Z
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/twitter/TwitterFriend;->getAccount()Lcom/liquable/nemo/model/account/AccountDto;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCubieFriend()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriend;->cubieFriend:Z

    return v0
.end method

.method public isSameCubieAccount(Ljava/lang/String;)Z
    .locals 1
    .param p1, "accountUid"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/twitter/TwitterFriend;->getAccount()Lcom/liquable/nemo/model/account/AccountDto;

    move-result-object v0

    if-nez v0, :cond_0

    .line 95
    const/4 v0, 0x0

    .line 97
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/twitter/TwitterFriend;->getAccount()Lcom/liquable/nemo/model/account/AccountDto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/model/account/AccountDto;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public setAccount(Lcom/liquable/nemo/model/account/AccountDto;)V
    .locals 0
    .param p1, "account"    # Lcom/liquable/nemo/model/account/AccountDto;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriend;->account:Lcom/liquable/nemo/model/account/AccountDto;

    .line 102
    return-void
.end method

.method public setCubieFriend(Z)V
    .locals 0
    .param p1, "cubieFriend"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriend;->cubieFriend:Z

    .line 106
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TwitterFriend [twitterId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriend;->twitterId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriend;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", screenName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriend;->screenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", profileImageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriend;->profileImageUrl:Ljava/net/URL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", account="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriend;->account:Lcom/liquable/nemo/model/account/AccountDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", cubieFriend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriend;->cubieFriend:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
