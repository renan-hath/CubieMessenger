.class Lcom/liquable/nemo/main/MainInviteFriendView$6;
.super Ljava/lang/Object;
.source "MainInviteFriendView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/main/MainInviteFriendView;->addTwitterInvite(Ljava/util/Map;Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/main/MainInviteFriendView;

.field final synthetic val$loginToTwitterActivityClass:Ljava/lang/Class;

.field final synthetic val$twitterFriendListActivityClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/main/MainInviteFriendView;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/main/MainInviteFriendView;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/liquable/nemo/main/MainInviteFriendView$6;->this$0:Lcom/liquable/nemo/main/MainInviteFriendView;

    iput-object p2, p0, Lcom/liquable/nemo/main/MainInviteFriendView$6;->val$twitterFriendListActivityClass:Ljava/lang/Class;

    iput-object p3, p0, Lcom/liquable/nemo/main/MainInviteFriendView$6;->val$loginToTwitterActivityClass:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 217
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getTwitterCredential()Lcom/liquable/nemo/friend/twitter/TwitterAccessToken;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 218
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/liquable/nemo/main/MainInviteFriendView$6;->this$0:Lcom/liquable/nemo/main/MainInviteFriendView;

    invoke-virtual {v1}, Lcom/liquable/nemo/main/MainInviteFriendView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/main/MainInviteFriendView$6;->val$twitterFriendListActivityClass:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/liquable/nemo/main/MainInviteFriendView$6;->this$0:Lcom/liquable/nemo/main/MainInviteFriendView;

    invoke-virtual {v1}, Lcom/liquable/nemo/main/MainInviteFriendView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 225
    :goto_0
    return-void

    .line 221
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    invoke-interface {v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->beginConnectToTwitter()V

    .line 222
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/liquable/nemo/main/MainInviteFriendView$6;->this$0:Lcom/liquable/nemo/main/MainInviteFriendView;

    invoke-virtual {v1}, Lcom/liquable/nemo/main/MainInviteFriendView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/main/MainInviteFriendView$6;->val$loginToTwitterActivityClass:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/liquable/nemo/main/MainInviteFriendView$6;->this$0:Lcom/liquable/nemo/main/MainInviteFriendView;

    invoke-virtual {v1}, Lcom/liquable/nemo/main/MainInviteFriendView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
