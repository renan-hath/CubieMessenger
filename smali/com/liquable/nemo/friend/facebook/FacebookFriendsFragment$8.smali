.class Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$8;
.super Ljava/lang/Object;
.source "FacebookFriendsFragment.java"

# interfaces
.implements Lcom/liquable/nemo/facebook/FacebookSession$IFacebookDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->postToWallUsingFacebookFeedDialog(Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;Lcom/liquable/nemo/friend/facebook/FacebookFriend;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    .prologue
    .line 422
    iput-object p1, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$8;->this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 424
    return-void
.end method

.method public onComplete()V
    .locals 1

    .prologue
    .line 428
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    invoke-interface {v0}, Lcom/liquable/nemo/analytics/IAnalyticsService;->shareAppSuccessFromFacebook()V

    .line 429
    iget-object v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$8;->this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    # invokes: Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->showShareToFacebookSuccessMessage()V
    invoke-static {v0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->access$2400(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;)V

    .line 430
    return-void
.end method

.method public onError()V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$8;->this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    # invokes: Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->showFacebookErrorToast()V
    invoke-static {v0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->access$900(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;)V

    .line 435
    return-void
.end method
