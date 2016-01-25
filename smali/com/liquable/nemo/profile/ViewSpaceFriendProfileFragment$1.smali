.class Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "ViewSpaceFriendProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 59
    iget-object v2, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;

    invoke-virtual {v2}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;

    invoke-virtual {v2}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    const-string/jumbo v2, "com.liquable.nemo.profile.ProfileEvent"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    const-string/jumbo v2, "com.liquable.nemo.profile.KEY_COVER_RESULT"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/friend/model/CoverResult;

    .line 66
    .local v1, "coverResult":Lcom/liquable/nemo/friend/model/CoverResult;
    if-eqz v1, :cond_0

    .line 70
    sget-object v3, Lcom/liquable/nemo/profile/ProfileEvent;->COVER_RESULT:Lcom/liquable/nemo/profile/ProfileEvent;

    const-string/jumbo v2, "com.liquable.nemo.KEY_EVENT_CODE"

    .line 71
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/profile/ProfileEvent;

    if-ne v3, v2, :cond_0

    .line 72
    iget-object v2, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;

    iget-object v2, v2, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->profileViewProgressBar:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 74
    invoke-virtual {v1}, Lcom/liquable/nemo/friend/model/CoverResult;->getUid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;

    # getter for: Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->spaceUserUid:Ljava/lang/String;
    invoke-static {v3}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->access$000(Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/liquable/nemo/friend/model/CoverResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    new-instance v0, Lcom/liquable/nemo/profile/CoverImage;

    invoke-virtual {v1}, Lcom/liquable/nemo/friend/model/CoverResult;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Lcom/liquable/nemo/profile/CoverImage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    .local v0, "coverImage":Lcom/liquable/nemo/profile/CoverImage;
    iget-object v2, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;

    # invokes: Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->getImageLoader()Lcom/liquable/nemo/util/ImageLoader;
    invoke-static {v2}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->access$100(Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;)Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;

    iget-object v3, v3, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->coverImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v0}, Lcom/liquable/nemo/util/ImageLoader;->forceReloadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    goto :goto_0
.end method
