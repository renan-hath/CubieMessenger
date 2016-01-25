.class Lcom/liquable/nemo/friend/model/AccountDtoIcon;
.super Lcom/liquable/nemo/friend/model/AbstractAccountIcon;
.source "AccountDtoIcon.java"


# instance fields
.field private final accountDto:Lcom/liquable/nemo/model/account/AccountDto;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/model/account/AccountDto;)V
    .locals 1
    .param p1, "accountDto"    # Lcom/liquable/nemo/model/account/AccountDto;

    .prologue
    .line 10
    invoke-virtual {p1}, Lcom/liquable/nemo/model/account/AccountDto;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/friend/model/AbstractAccountIcon;-><init>(Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, Lcom/liquable/nemo/friend/model/AccountDtoIcon;->accountDto:Lcom/liquable/nemo/model/account/AccountDto;

    .line 12
    return-void
.end method


# virtual methods
.method public isIconExists()Z
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/AccountDtoIcon;->accountDto:Lcom/liquable/nemo/model/account/AccountDto;

    invoke-virtual {v0}, Lcom/liquable/nemo/model/account/AccountDto;->isIconExists()Z

    move-result v0

    return v0
.end method

.method public isIconExpired(J)Z
    .locals 2
    .param p1, "iconCreateTime"    # J

    .prologue
    .line 21
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/AccountDtoIcon;->accountDto:Lcom/liquable/nemo/model/account/AccountDto;

    invoke-virtual {v0}, Lcom/liquable/nemo/model/account/AccountDto;->getLastUpdateTime()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
