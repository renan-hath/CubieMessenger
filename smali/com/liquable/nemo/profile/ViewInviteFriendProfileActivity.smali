.class public Lcom/liquable/nemo/profile/ViewInviteFriendProfileActivity;
.super Lcom/liquable/nemo/profile/BaseFriendProfileActivity;
.source "ViewInviteFriendProfileActivity.java"


# static fields
.field static final ACCOUNT_DTO:Ljava/lang/String; = "ACCOUNT_DTO"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/liquable/nemo/profile/BaseFriendProfileActivity;-><init>()V

    return-void
.end method

.method public static createIntent(Landroid/content/Context;Lcom/liquable/nemo/model/account/AccountDto;Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountDto"    # Lcom/liquable/nemo/model/account/AccountDto;
    .param p2, "from"    # Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;

    .prologue
    .line 14
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/profile/ViewInviteFriendProfileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 15
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "ACCOUNT_DTO"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 16
    const-string/jumbo v1, "FROM"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 17
    return-object v0
.end method

.method public static getAccount(Landroid/os/Bundle;)Lcom/liquable/nemo/model/account/AccountDto;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 21
    const-string/jumbo v0, "ACCOUNT_DTO"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/account/AccountDto;

    return-object v0
.end method


# virtual methods
.method protected getFragment()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/liquable/nemo/profile/BaseFriendProfileFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    const-class v0, Lcom/liquable/nemo/profile/ViewInviteFriendProfileFragment;

    return-object v0
.end method
