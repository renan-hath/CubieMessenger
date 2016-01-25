.class Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem$2$1;
.super Landroid/os/AsyncTask;
.source "TwitterFriendListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem$2;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem$2;)V
    .locals 0
    .param p1, "this$2"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem$2;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem$2$1;->this$2:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem$2;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowResult;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 74
    :try_start_0
    iget-object v2, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem$2$1;->this$2:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem$2;

    iget-object v2, v2, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem$2;->this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem;

    iget-object v2, v2, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    # getter for: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->twitter:Ltwitter4j/Twitter;
    invoke-static {v2}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$000(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)Ltwitter4j/Twitter;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem$2$1;->this$2:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem$2;

    iget-object v3, v3, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem$2;->this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem;

    iget-object v3, v3, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    # getter for: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->twitter:Ltwitter4j/Twitter;
    invoke-static {v3}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$000(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)Ltwitter4j/Twitter;

    move-result-object v3

    invoke-interface {v3}, Ltwitter4j/Twitter;->getId()J

    move-result-wide v3

    const-wide/32 v5, 0x1bd8e585

    invoke-interface {v2, v3, v4, v5, v6}, Ltwitter4j/Twitter;->showFriendship(JJ)Ltwitter4j/Relationship;

    move-result-object v1

    .line 76
    .local v1, "friendship":Ltwitter4j/Relationship;
    invoke-interface {v1}, Ltwitter4j/Relationship;->isSourceFollowingTarget()Z

    move-result v2

    if-nez v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem$2$1;->this$2:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem$2;

    iget-object v2, v2, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem$2;->this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem;

    iget-object v2, v2, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    # getter for: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->twitter:Ltwitter4j/Twitter;
    invoke-static {v2}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$000(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)Ltwitter4j/Twitter;

    move-result-object v2

    const-wide/32 v3, 0x1bd8e585

    invoke-interface {v2, v3, v4}, Ltwitter4j/Twitter;->createFriendship(J)Ltwitter4j/User;

    .line 78
    sget-object v2, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowResult;->SUCCESS:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowResult;

    .line 87
    .end local v1    # "friendship":Ltwitter4j/Relationship;
    :goto_0
    return-object v2

    .line 80
    .restart local v1    # "friendship":Ltwitter4j/Relationship;
    :cond_0
    sget-object v2, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowResult;->ALREADY_FOLLOWING:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowResult;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 82
    .end local v1    # "friendship":Ltwitter4j/Relationship;
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v2, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem$2$1;->this$2:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem$2;

    iget-object v2, v2, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem$2;->this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem;

    iget-object v2, v2, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    # getter for: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {v2}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$100(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)Lcom/liquable/nemo/util/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IllegalStateException when following Cubie: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 87
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_1
    sget-object v2, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowResult;->FAILED:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowResult;

    goto :goto_0

    .line 84
    :catch_1
    move-exception v0

    .line 85
    .local v0, "e":Ltwitter4j/TwitterException;
    iget-object v2, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem$2$1;->this$2:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem$2;

    iget-object v2, v2, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem$2;->this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem;

    iget-object v2, v2, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    # getter for: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {v2}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$100(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)Lcom/liquable/nemo/util/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "TwitterException when following Cubie: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem$2$1;->doInBackground([Ljava/lang/Void;)Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowResult;)V
    .locals 2
    .param p1, "result"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowResult;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem$2$1;->this$2:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem$2;

    iget-object v0, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem$2;->this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem;

    iget-object v0, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->removeDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$200(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;I)V

    .line 93
    sget-object v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$6;->$SwitchMap$com$liquable$nemo$friend$twitter$TwitterFriendListFragment$FollowResult:[I

    invoke-virtual {p1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 108
    :goto_0
    return-void

    .line 95
    :pswitch_0
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    invoke-interface {v0}, Lcom/liquable/nemo/analytics/IAnalyticsService;->followCubieOnTwitter()V

    .line 96
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem$2$1;->this$2:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem$2;

    iget-object v0, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem$2;->this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem;

    iget-object v0, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d0287

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 99
    :pswitch_1
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem$2$1;->this$2:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem$2;

    iget-object v0, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem$2;->this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem;

    iget-object v0, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d006b

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 102
    :pswitch_2
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem$2$1;->this$2:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem$2;

    iget-object v0, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem$2;->this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem;

    iget-object v0, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d01c9

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 70
    check-cast p1, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowResult;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem$2$1;->onPostExecute(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowResult;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem$2$1;->this$2:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem$2;

    iget-object v0, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem$2;->this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem;

    iget-object v0, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$300(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;I)V

    .line 113
    return-void
.end method
