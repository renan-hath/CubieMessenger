.class Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$5;
.super Landroid/os/AsyncTask;
.source "TwitterFriendListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    .prologue
    .line 657
    iput-object p1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$5;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 657
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 17
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 662
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$5;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    # getter for: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->twitter:Ltwitter4j/Twitter;
    invoke-static {v12}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$000(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)Ltwitter4j/Twitter;

    move-result-object v12

    const-wide/16 v13, -0x1

    invoke-interface {v12, v13, v14}, Ltwitter4j/Twitter;->getFriendsIDs(J)Ltwitter4j/IDs;

    move-result-object v12

    invoke-interface {v12}, Ltwitter4j/IDs;->getIDs()[J

    move-result-object v7

    .line 663
    .local v7, "friendIds":[J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$5;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    # getter for: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->twitter:Ltwitter4j/Twitter;
    invoke-static {v12}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$000(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)Ltwitter4j/Twitter;

    move-result-object v12

    const-wide/16 v13, -0x1

    invoke-interface {v12, v13, v14}, Ltwitter4j/Twitter;->getFollowersIDs(J)Ltwitter4j/IDs;

    move-result-object v12

    invoke-interface {v12}, Ltwitter4j/IDs;->getIDs()[J

    move-result-object v4

    .line 664
    .local v4, "followerIds":[J
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 665
    .local v10, "mutualTwitterFriendIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    array-length v14, v4

    const/4 v12, 0x0

    move v13, v12

    :goto_0
    if-ge v13, v14, :cond_2

    aget-wide v2, v4, v13

    .line 666
    .local v2, "followerId":J
    array-length v15, v7

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v15, :cond_0

    aget-wide v5, v7, v12

    .line 667
    .local v5, "friendId":J
    cmp-long v16, v2, v5

    if-nez v16, :cond_1

    .line 668
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 665
    .end local v5    # "friendId":J
    :cond_0
    add-int/lit8 v12, v13, 0x1

    move v13, v12

    goto :goto_0

    .line 666
    .restart local v5    # "friendId":J
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 674
    .end local v2    # "followerId":J
    .end local v5    # "friendId":J
    :cond_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    const/16 v13, 0x3e8

    if-le v12, v13, :cond_3

    .line 675
    const/4 v12, 0x0

    const/16 v13, 0x3e8

    invoke-interface {v10, v12, v13}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v10

    .line 678
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$5;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    sget-object v13, Lcom/liquable/nemo/NemoManagers;->userManager:Lcom/liquable/nemo/user/model/UserManager;

    invoke-virtual {v13, v10}, Lcom/liquable/nemo/user/model/UserManager;->listAccountsByTwitterIds(Ljava/util/List;)Ljava/util/Map;

    move-result-object v13

    # setter for: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->accountsWithCubieId:Ljava/util/Map;
    invoke-static {v12, v13}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$1902(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;Ljava/util/Map;)Ljava/util/Map;

    .line 679
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 680
    .local v11, "sortedTwitterIds":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/twitter/TwitterId;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$5;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    # getter for: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->accountsWithCubieId:Ljava/util/Map;
    invoke-static {v12}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$1900(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Map;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_6

    .line 681
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 682
    .local v9, "mutualId":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$5;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    # getter for: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->accountsWithCubieId:Ljava/util/Map;
    invoke-static {v13}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$1900(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 683
    new-instance v13, Lcom/liquable/nemo/friend/twitter/TwitterId;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const/16 v16, 0x1

    invoke-direct/range {v13 .. v16}, Lcom/liquable/nemo/friend/twitter/TwitterId;-><init>(JZ)V

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/liquable/nemo/client/AsyncException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 704
    .end local v4    # "followerIds":[J
    .end local v7    # "friendIds":[J
    .end local v9    # "mutualId":Ljava/lang/Long;
    .end local v10    # "mutualTwitterFriendIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v11    # "sortedTwitterIds":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/twitter/TwitterId;>;"
    :catch_0
    move-exception v1

    .line 705
    .local v1, "e":Ltwitter4j/TwitterException;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$5;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    invoke-virtual {v1}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->showErrorAndBackToConnectActivity(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$2500(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;Ljava/lang/String;)V

    .line 709
    .end local v1    # "e":Ltwitter4j/TwitterException;
    :goto_3
    const/4 v12, 0x0

    return-object v12

    .line 685
    .restart local v4    # "followerIds":[J
    .restart local v7    # "friendIds":[J
    .restart local v9    # "mutualId":Ljava/lang/Long;
    .restart local v10    # "mutualTwitterFriendIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v11    # "sortedTwitterIds":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/twitter/TwitterId;>;"
    :cond_4
    :try_start_1
    new-instance v13, Lcom/liquable/nemo/friend/twitter/TwitterId;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lcom/liquable/nemo/friend/twitter/TwitterId;-><init>(JZ)V

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ltwitter4j/TwitterException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/liquable/nemo/client/AsyncException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 706
    .end local v4    # "followerIds":[J
    .end local v7    # "friendIds":[J
    .end local v9    # "mutualId":Ljava/lang/Long;
    .end local v10    # "mutualTwitterFriendIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v11    # "sortedTwitterIds":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/twitter/TwitterId;>;"
    :catch_1
    move-exception v1

    .line 707
    .local v1, "e":Lcom/liquable/nemo/client/AsyncException;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$5;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    # getter for: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {v12}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$100(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)Lcom/liquable/nemo/util/Logger;

    move-result-object v12

    invoke-virtual {v1}, Lcom/liquable/nemo/client/AsyncException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    goto :goto_3

    .line 688
    .end local v1    # "e":Lcom/liquable/nemo/client/AsyncException;
    .restart local v4    # "followerIds":[J
    .restart local v7    # "friendIds":[J
    .restart local v10    # "mutualTwitterFriendIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v11    # "sortedTwitterIds":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/twitter/TwitterId;>;"
    :cond_5
    :try_start_2
    new-instance v12, Lcom/liquable/nemo/friend/twitter/TwitterIdComparator;

    invoke-direct {v12}, Lcom/liquable/nemo/friend/twitter/TwitterIdComparator;-><init>()V

    invoke-static {v11, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 690
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$5;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    new-array v13, v13, [J

    # setter for: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->allTwitterFriendIds:[J
    invoke-static {v12, v13}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$1202(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;[J)[J

    .line 691
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-ge v8, v12, :cond_8

    .line 692
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$5;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    # getter for: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->allTwitterFriendIds:[J
    invoke-static {v12}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$1200(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)[J

    move-result-object v13

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/liquable/nemo/friend/twitter/TwitterId;

    invoke-virtual {v12}, Lcom/liquable/nemo/friend/twitter/TwitterId;->getTwitterId()J

    move-result-wide v14

    aput-wide v14, v13, v8

    .line 691
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 695
    .end local v8    # "i":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$5;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    new-array v13, v13, [J

    # setter for: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->allTwitterFriendIds:[J
    invoke-static {v12, v13}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$1202(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;[J)[J

    .line 696
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$5;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    # getter for: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->allTwitterFriendIds:[J
    invoke-static {v12}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$1200(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)[J

    move-result-object v12

    array-length v12, v12

    if-ge v8, v12, :cond_7

    .line 697
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$5;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    # getter for: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->allTwitterFriendIds:[J
    invoke-static {v12}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$1200(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)[J

    move-result-object v13

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    aput-wide v14, v13, v8

    .line 696
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 699
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$5;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    # getter for: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->allTwitterFriendIds:[J
    invoke-static {v12}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$1200(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)[J

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->sort([J)V

    .line 702
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$5;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    const/4 v13, 0x0

    const/16 v14, 0x63

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$5;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    .line 703
    # getter for: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->allTwitterFriendIds:[J
    invoke-static {v15}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$1200(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)[J

    move-result-object v15

    array-length v15, v15

    add-int/lit8 v15, v15, -0x1

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 702
    # invokes: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->getMoreFriendsFromTwitter(II)V
    invoke-static {v12, v13, v14}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$1300(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;II)V
    :try_end_2
    .catch Ltwitter4j/TwitterException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/liquable/nemo/client/AsyncException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 657
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$5;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 714
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$5;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    const/4 v1, 0x6

    # invokes: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->removeDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$2600(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;I)V

    .line 716
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$5$1;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$5$1;-><init>(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 722
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 726
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$5;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    const/4 v1, 0x6

    # invokes: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$2700(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;I)V

    .line 727
    return-void
.end method
