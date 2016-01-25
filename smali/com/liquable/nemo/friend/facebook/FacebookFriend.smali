.class public Lcom/liquable/nemo/friend/facebook/FacebookFriend;
.super Ljava/lang/Object;
.source "FacebookFriend.java"


# instance fields
.field private account:Lcom/liquable/nemo/model/account/AccountDto;

.field private cubieFriend:Z

.field private final fbuid:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "fbuid"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriend;->fbuid:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriend;->name:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getAccount()Lcom/liquable/nemo/model/account/AccountDto;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriend;->account:Lcom/liquable/nemo/model/account/AccountDto;

    return-object v0
.end method

.method public getFbuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriend;->fbuid:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriend;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isConnectedToFacebook()Z
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/facebook/FacebookFriend;->getAccount()Lcom/liquable/nemo/model/account/AccountDto;

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
    .line 37
    iget-boolean v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriend;->cubieFriend:Z

    return v0
.end method

.method public isSameCubieAccount(Ljava/lang/String;)Z
    .locals 1
    .param p1, "accountUid"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/facebook/FacebookFriend;->getAccount()Lcom/liquable/nemo/model/account/AccountDto;

    move-result-object v0

    if-nez v0, :cond_0

    .line 42
    const/4 v0, 0x0

    .line 44
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/facebook/FacebookFriend;->getAccount()Lcom/liquable/nemo/model/account/AccountDto;

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
    .line 48
    iput-object p1, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriend;->account:Lcom/liquable/nemo/model/account/AccountDto;

    .line 49
    return-void
.end method

.method public setCubieFriend(Z)V
    .locals 0
    .param p1, "cubieFriend"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriend;->cubieFriend:Z

    .line 53
    return-void
.end method
