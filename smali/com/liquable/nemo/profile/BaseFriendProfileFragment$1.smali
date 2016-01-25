.class Lcom/liquable/nemo/profile/BaseFriendProfileFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "BaseFriendProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/profile/BaseFriendProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/profile/BaseFriendProfileFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/profile/BaseFriendProfileFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/profile/BaseFriendProfileFragment;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/BaseFriendProfileFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 98
    iget-object v3, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/BaseFriendProfileFragment;

    invoke-virtual {v3}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/BaseFriendProfileFragment;

    invoke-virtual {v3}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    const-string/jumbo v3, "com.liquable.nemo.friend.model.FRIEND_EVENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 103
    const-string/jumbo v3, "com.liquable.nemo.friend.model.KEY_FRIEND_UID"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "uid":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/BaseFriendProfileFragment;

    invoke-virtual {v3}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->getProfileUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    sget-object v4, Lcom/liquable/nemo/friend/model/FriendEvent;->ACCOUNT_ICON_UPDATE:Lcom/liquable/nemo/friend/model/FriendEvent;

    const-string/jumbo v3, "com.liquable.nemo.KEY_EVENT_CODE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/friend/model/FriendEvent;

    if-ne v4, v3, :cond_0

    .line 108
    iget-object v3, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/BaseFriendProfileFragment;

    invoke-virtual {v3}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->clearUserIconCache()V

    .line 109
    iget-object v3, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/BaseFriendProfileFragment;

    invoke-virtual {v3}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->loadUserIcon()V

    goto :goto_0

    .line 112
    .end local v2    # "uid":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "com.liquable.nemo.profile.ProfileEvent"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    const-string/jumbo v3, "com.liquable.nemo.profile.KEY_COVER_RESULT"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/friend/model/CoverResult;

    .line 115
    .local v1, "coverResult":Lcom/liquable/nemo/friend/model/CoverResult;
    if-eqz v1, :cond_0

    .line 119
    sget-object v4, Lcom/liquable/nemo/profile/ProfileEvent;->COVER_RESULT:Lcom/liquable/nemo/profile/ProfileEvent;

    const-string/jumbo v3, "com.liquable.nemo.KEY_EVENT_CODE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/profile/ProfileEvent;

    if-ne v4, v3, :cond_0

    .line 120
    iget-object v3, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/BaseFriendProfileFragment;

    # getter for: Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->profileViewProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v3}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->access$000(Lcom/liquable/nemo/profile/BaseFriendProfileFragment;)Landroid/widget/ProgressBar;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 122
    invoke-virtual {v1}, Lcom/liquable/nemo/friend/model/CoverResult;->getUid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/BaseFriendProfileFragment;

    invoke-virtual {v4}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->getProfileUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/liquable/nemo/friend/model/CoverResult;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 123
    new-instance v0, Lcom/liquable/nemo/profile/CoverImage;

    invoke-virtual {v1}, Lcom/liquable/nemo/friend/model/CoverResult;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p1, v3}, Lcom/liquable/nemo/profile/CoverImage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 124
    .local v0, "coverImage":Lcom/liquable/nemo/profile/CoverImage;
    iget-object v3, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/BaseFriendProfileFragment;

    # invokes: Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->getImageLoader()Lcom/liquable/nemo/util/ImageLoader;
    invoke-static {v3}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->access$100(Lcom/liquable/nemo/profile/BaseFriendProfileFragment;)Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v3

    iget-object v4, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/BaseFriendProfileFragment;

    iget-object v4, v4, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->coverImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v0}, Lcom/liquable/nemo/util/ImageLoader;->forceReloadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    goto/16 :goto_0
.end method
