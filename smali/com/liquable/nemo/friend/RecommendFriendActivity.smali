.class public Lcom/liquable/nemo/friend/RecommendFriendActivity;
.super Lcom/liquable/nemo/SingleFragmentActivity;
.source "RecommendFriendActivity.java"

# interfaces
.implements Lcom/liquable/nemo/friend/RecommendFriendFragment$RecommendFriendCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/liquable/nemo/SingleFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getFragment()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/liquable/nemo/BaseFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    const-class v0, Lcom/liquable/nemo/friend/RecommendFriendFragment;

    return-object v0
.end method

.method protected getTitleId()I
    .locals 1

    .prologue
    .line 23
    const v0, 0x7f0d0429

    return v0
.end method

.method public hasImageLoader()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method protected onLoggedInActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 35
    const/16 v1, 0x15

    if-ne p1, v1, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/RecommendFriendActivity;->getFragmentInstance()Lcom/liquable/nemo/BaseFragment;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/RecommendFriendFragment;

    .line 37
    .local v0, "fragment":Lcom/liquable/nemo/friend/RecommendFriendFragment;
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/RecommendFriendFragment;->reloadRecommendFriend()V

    .line 41
    .end local v0    # "fragment":Lcom/liquable/nemo/friend/RecommendFriendFragment;
    :cond_0
    return-void
.end method

.method public onRecommendFriendClick(Ljava/lang/String;)V
    .locals 2
    .param p1, "friendId"    # Ljava/lang/String;

    .prologue
    .line 45
    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;->recommend:Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;

    invoke-static {p0, p1, v1}, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;)Landroid/content/Intent;

    move-result-object v0

    .line 48
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x15

    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/friend/RecommendFriendActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 49
    return-void
.end method
