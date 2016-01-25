.class Lcom/liquable/nemo/friend/model/MyAccountIcon;
.super Lcom/liquable/nemo/friend/model/AbstractAccountIcon;
.source "MyAccountIcon.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/friend/model/AbstractAccountIcon;-><init>(Ljava/lang/String;)V

    .line 8
    return-void
.end method


# virtual methods
.method protected fetchFromServer()Z
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    return v0
.end method

.method public isIconExists()Z
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public isIconExpired(J)Z
    .locals 1
    .param p1, "iconCreateTime"    # J

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method
