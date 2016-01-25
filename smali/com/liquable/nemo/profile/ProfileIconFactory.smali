.class public abstract Lcom/liquable/nemo/profile/ProfileIconFactory;
.super Ljava/lang/Object;
.source "ProfileIconFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createIcon(Lcom/liquable/nemo/friend/model/Account;)Lcom/liquable/nemo/util/LoadableImage;
    .locals 5
    .param p0, "account"    # Lcom/liquable/nemo/friend/model/Account;

    .prologue
    .line 22
    if-nez p0, :cond_0

    .line 23
    new-instance v0, Lcom/liquable/nemo/message/view/DefaultAvatarThumbnail;

    const v1, 0x7f0202a9

    invoke-direct {v0, v1}, Lcom/liquable/nemo/message/view/DefaultAvatarThumbnail;-><init>(I)V

    .line 29
    :goto_0
    return-object v0

    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/model/Account;->isIconExists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    new-instance v0, Lcom/liquable/nemo/profile/ProfileAccountIcon;

    invoke-virtual {p0}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/model/Account;->getLastUpdateTime()J

    move-result-wide v2

    .line 27
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/model/Account;->isIconExists()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/profile/ProfileAccountIcon;-><init>(Ljava/lang/String;JZ)V

    goto :goto_0

    .line 29
    :cond_1
    new-instance v0, Lcom/liquable/nemo/profile/ProfileContactIcon;

    invoke-virtual {p0}, Lcom/liquable/nemo/friend/model/Account;->getPhotoId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/profile/ProfileContactIcon;-><init>(J)V

    goto :goto_0
.end method

.method public static createIcon(Lcom/liquable/nemo/model/account/AccountDto;)Lcom/liquable/nemo/util/LoadableImage;
    .locals 5
    .param p0, "accountDto"    # Lcom/liquable/nemo/model/account/AccountDto;

    .prologue
    .line 34
    new-instance v0, Lcom/liquable/nemo/profile/ProfileAccountIcon;

    invoke-virtual {p0}, Lcom/liquable/nemo/model/account/AccountDto;->getUid()Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-virtual {p0}, Lcom/liquable/nemo/model/account/AccountDto;->getLastUpdateTime()J

    move-result-wide v2

    .line 36
    invoke-virtual {p0}, Lcom/liquable/nemo/model/account/AccountDto;->isIconExists()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/profile/ProfileAccountIcon;-><init>(Ljava/lang/String;JZ)V

    return-object v0
.end method

.method public static createMyIcon()Lcom/liquable/nemo/util/LoadableImage;
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/liquable/nemo/profile/ProfileIconFactory$1;

    invoke-direct {v0}, Lcom/liquable/nemo/profile/ProfileIconFactory$1;-><init>()V

    return-object v0
.end method
