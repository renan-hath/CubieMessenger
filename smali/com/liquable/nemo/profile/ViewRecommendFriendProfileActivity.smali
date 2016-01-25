.class public Lcom/liquable/nemo/profile/ViewRecommendFriendProfileActivity;
.super Lcom/liquable/nemo/profile/BaseFriendProfileActivity;
.source "ViewRecommendFriendProfileActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/liquable/nemo/profile/BaseFriendProfileActivity;-><init>()V

    return-void
.end method

.method public static createIntent(Landroid/content/Context;Ljava/lang/String;Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "friendUid"    # Ljava/lang/String;
    .param p2, "from"    # Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;

    .prologue
    .line 12
    const-class v0, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileActivity;

    invoke-static {v0, p0, p1, p2}, Lcom/liquable/nemo/profile/BaseFriendProfileActivity;->createIntentWithFrom(Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;)Landroid/content/Intent;

    move-result-object v0

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
    .line 20
    const-class v0, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;

    return-object v0
.end method
