.class public abstract Lcom/liquable/nemo/friend/model/AccountIconFactory;
.super Ljava/lang/Object;
.source "AccountIconFactory.java"


# static fields
.field public static final ACCOUNT_ICON_FILE_WIDTH:I = 0xfa


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/liquable/nemo/util/LoadableImage;
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/liquable/nemo/friend/model/MyAccountIcon;

    invoke-direct {v0}, Lcom/liquable/nemo/friend/model/MyAccountIcon;-><init>()V

    return-object v0
.end method

.method public static create(Lcom/liquable/nemo/friend/model/Account;)Lcom/liquable/nemo/util/LoadableImage;
    .locals 2
    .param p0, "account"    # Lcom/liquable/nemo/friend/model/Account;

    .prologue
    .line 14
    if-nez p0, :cond_0

    .line 15
    new-instance v0, Lcom/liquable/nemo/message/view/DefaultAvatarThumbnail;

    const v1, 0x7f0202a8

    invoke-direct {v0, v1}, Lcom/liquable/nemo/message/view/DefaultAvatarThumbnail;-><init>(I)V

    .line 19
    :goto_0
    return-object v0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/model/Account;->isIconExists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17
    new-instance v0, Lcom/liquable/nemo/friend/model/AccountIcon;

    invoke-virtual {p0}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/liquable/nemo/friend/model/AccountIcon;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_1
    new-instance v0, Lcom/liquable/nemo/friend/model/ContactIcon;

    invoke-virtual {p0}, Lcom/liquable/nemo/friend/model/Account;->getPhotoId()Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/liquable/nemo/friend/model/ContactIcon;-><init>(Ljava/lang/Long;)V

    goto :goto_0
.end method

.method public static create(Lcom/liquable/nemo/model/account/AccountDto;)Lcom/liquable/nemo/util/LoadableImage;
    .locals 1
    .param p0, "accountDto"    # Lcom/liquable/nemo/model/account/AccountDto;

    .prologue
    .line 24
    new-instance v0, Lcom/liquable/nemo/friend/model/AccountDtoIcon;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/friend/model/AccountDtoIcon;-><init>(Lcom/liquable/nemo/model/account/AccountDto;)V

    return-object v0
.end method

.method public static create(Ljava/lang/Long;)Lcom/liquable/nemo/util/LoadableImage;
    .locals 1
    .param p0, "photoId"    # Ljava/lang/Long;

    .prologue
    .line 28
    new-instance v0, Lcom/liquable/nemo/friend/model/ContactIcon;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/friend/model/ContactIcon;-><init>(Ljava/lang/Long;)V

    return-object v0
.end method

.method public static createRobot()Lcom/liquable/nemo/util/LoadableImage;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/liquable/nemo/friend/model/AccountIcon;

    const-string/jumbo v1, "18e1df3b-d427-4ed2-885c-7f4510e853b2"

    invoke-direct {v0, v1}, Lcom/liquable/nemo/friend/model/AccountIcon;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
