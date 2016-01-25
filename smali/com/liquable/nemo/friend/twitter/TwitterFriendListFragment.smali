.class public Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;
.super Lcom/liquable/nemo/BaseFragment;
.source "TwitterFriendListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem;,
        Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$LogoutTwitterItem;,
        Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowResult;,
        Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem;
    }
.end annotation


# static fields
.field private static final ID_OF_CUBIE_TWITTER_ACCOUNT:J = 0x1bd8e585L

.field private static final MAX_OF_SHOW_TWITTER_FRIENDS:I = 0x3e8

.field private static final PAGE_SIZE_OF_TWITTER_FRIENDS:I = 0x64

.field protected static final START_INDEX_OF_TRITTER_FRIEND_LIST:I


# instance fields
.field private accountsWithCubieId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/liquable/nemo/model/account/AccountDto;",
            ">;"
        }
    .end annotation
.end field

.field private allTwitterFriendIds:[J

.field private imageLoader:Lcom/liquable/nemo/util/ImageLoader;

.field private indexOfCurrentPage:I

.field private final logger:Lcom/liquable/nemo/util/Logger;

.field private twitter:Ltwitter4j/Twitter;

.field private twitterErrorToast:Landroid/widget/Toast;

.field private twitterFriendListAdapter:Lcom/liquable/nemo/friend/twitter/TwitterFriendListAdapter;

.field private twitterFriendListView:Landroid/widget/ListView;

.field private twitterFriendsOnScreen:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/twitter/TwitterFriend;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/liquable/nemo/BaseFragment;-><init>()V

    .line 241
    const-class v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->logger:Lcom/liquable/nemo/util/Logger;

    .line 249
    const/4 v0, 0x0

    iput v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->indexOfCurrentPage:I

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)Ltwitter4j/Twitter;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->twitter:Ltwitter4j/Twitter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)Lcom/liquable/nemo/util/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->logger:Lcom/liquable/nemo/util/Logger;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    .prologue
    .line 60
    iget v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->indexOfCurrentPage:I

    return v0
.end method

.method static synthetic access$1200(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)[J
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->allTwitterFriendIds:[J

    return-object v0
.end method

.method static synthetic access$1202(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;[J)[J
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;
    .param p1, "x1"    # [J

    .prologue
    .line 60
    iput-object p1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->allTwitterFriendIds:[J

    return-object p1
.end method

.method static synthetic access$1300(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;II)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->getMoreFriendsFromTwitter(II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->twitterFriendsOnScreen:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)Lcom/liquable/nemo/friend/twitter/TwitterFriendListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->twitterFriendListAdapter:Lcom/liquable/nemo/friend/twitter/TwitterFriendListAdapter;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->twitterFriendListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->accountsWithCubieId:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->accountsWithCubieId:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$200(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->listMoreTwitterFriend(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->showErrorAndBackToConnectActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->close()V

    return-void
.end method

.method static synthetic access$700(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)Landroid/widget/Toast;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->twitterErrorToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$900(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->removeDialog(I)V

    return-void
.end method

.method private copyRangeOf([JII)[J
    .locals 5
    .param p1, "original"    # [J
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 292
    if-le p2, p3, :cond_0

    .line 293
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 295
    :cond_0
    array-length v1, p1

    .line 296
    .local v1, "originalLength":I
    if-ltz p2, :cond_1

    if-le p2, v1, :cond_2

    .line 297
    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 299
    :cond_2
    sub-int v3, p3, p2

    .line 300
    .local v3, "resultLength":I
    sub-int v4, v1, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 301
    .local v0, "copyLength":I
    new-array v2, v3, [J

    .line 302
    .local v2, "result":[J
    const/4 v4, 0x0

    invoke-static {p1, p2, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 303
    return-object v2
.end method

.method private getMoreFriendsFromTwitter(II)V
    .locals 13
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 307
    iget v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->indexOfCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->indexOfCurrentPage:I

    .line 310
    :try_start_0
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->allTwitterFriendIds:[J

    add-int/lit8 v1, p2, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->copyRangeOf([JII)[J

    move-result-object v8

    .line 311
    .local v8, "friendUids":[J
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->twitter:Ltwitter4j/Twitter;

    invoke-interface {v0, v8}, Ltwitter4j/Twitter;->lookupUsers([J)Ltwitter4j/ResponseList;

    move-result-object v9

    .line 313
    .local v9, "lookupUsers":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/User;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v10, "newTwitterFriends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/twitter/TwitterFriend;>;"
    invoke-interface {v9}, Ltwitter4j/ResponseList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ltwitter4j/User;
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 316
    .local v11, "user":Ltwitter4j/User;
    :try_start_1
    new-instance v0, Lcom/liquable/nemo/friend/twitter/TwitterFriend;

    invoke-interface {v11}, Ltwitter4j/User;->getId()J

    move-result-wide v1

    .line 317
    invoke-interface {v11}, Ltwitter4j/User;->getName()Ljava/lang/String;

    move-result-object v3

    .line 318
    invoke-interface {v11}, Ltwitter4j/User;->getScreenName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/net/URL;

    .line 319
    invoke-interface {v11}, Ltwitter4j/User;->getProfileImageURL()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 320
    invoke-interface {v11}, Ltwitter4j/User;->getLang()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/liquable/nemo/friend/twitter/TwitterFriend;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 316
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ltwitter4j/TwitterException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 321
    :catch_0
    move-exception v7

    .line 322
    .local v7, "e":Ljava/net/MalformedURLException;
    goto :goto_0

    .line 326
    .end local v7    # "e":Ljava/net/MalformedURLException;
    .end local v11    # "user":Ltwitter4j/User;
    :cond_0
    :try_start_2
    invoke-direct {p0, v10}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->listTwitterFriendFromServer(Ljava/util/List;)V
    :try_end_2
    .catch Ltwitter4j/TwitterException; {:try_start_2 .. :try_end_2} :catch_1

    .line 331
    .end local v8    # "friendUids":[J
    .end local v9    # "lookupUsers":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/User;>;"
    .end local v10    # "newTwitterFriends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/twitter/TwitterFriend;>;"
    :goto_1
    return-void

    .line 327
    :catch_1
    move-exception v7

    .line 328
    .local v7, "e":Ltwitter4j/TwitterException;
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->logger:Lcom/liquable/nemo/util/Logger;

    invoke-virtual {v7}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->twitterErrorToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private listMoreTwitterFriend(Z)V
    .locals 2
    .param p1, "firstCall"    # Z

    .prologue
    .line 334
    new-instance v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$1;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$1;-><init>(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 361
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 362
    return-void
.end method

.method private listTwitterFriendFromServer(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/twitter/TwitterFriend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 365
    .local p1, "newTwitterFriends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/twitter/TwitterFriend;>;"
    new-instance v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$2;

    invoke-virtual {p0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$2;-><init>(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;Landroid/content/Context;Ljava/util/List;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 420
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$2;->execute([Ljava/lang/Object;)V

    .line 421
    return-void
.end method

.method private showErrorAndBackToConnectActivity(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 752
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->logger:Lcom/liquable/nemo/util/Logger;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 753
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->twitterErrorToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 754
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->close()V

    .line 755
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 425
    invoke-super {p0, p1}, Lcom/liquable/nemo/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 426
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->setHasOptionsMenu(Z)V

    .line 427
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    .line 431
    const v0, 0x7f0f0011

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 432
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 439
    const v2, 0x7f0300c2

    invoke-virtual {p1, v2, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 442
    .local v1, "fragmentView":Landroid/view/View;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->accountsWithCubieId:Ljava/util/Map;

    .line 443
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->twitterFriendsOnScreen:Ljava/util/List;

    .line 445
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0d01c9

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->twitterErrorToast:Landroid/widget/Toast;

    .line 447
    const v2, 0x7f080217

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->twitterFriendListView:Landroid/widget/ListView;

    .line 448
    new-instance v2, Lcom/liquable/nemo/friend/twitter/TwitterFriendListAdapter;

    invoke-virtual {p0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 449
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->getImageLoader()Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v2, v3, v4, v5}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListAdapter;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Ljava/util/List;)V

    iput-object v2, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->twitterFriendListAdapter:Lcom/liquable/nemo/friend/twitter/TwitterFriendListAdapter;

    .line 451
    iget-object v2, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->twitterFriendListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->twitterFriendListAdapter:Lcom/liquable/nemo/friend/twitter/TwitterFriendListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 453
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getTwitterCredential()Lcom/liquable/nemo/friend/twitter/TwitterAccessToken;

    move-result-object v0

    .line 455
    .local v0, "accessToken":Lcom/liquable/nemo/friend/twitter/TwitterAccessToken;
    if-nez v0, :cond_0

    .line 456
    const-string/jumbo v2, "cannot find twitter credential, redirect to connect activity"

    invoke-direct {p0, v2}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->showErrorAndBackToConnectActivity(Ljava/lang/String;)V

    .line 457
    const/4 v1, 0x0

    .line 730
    .end local v1    # "fragmentView":Landroid/view/View;
    :goto_0
    return-object v1

    .line 460
    .restart local v1    # "fragmentView":Landroid/view/View;
    :cond_0
    new-instance v2, Ltwitter4j/TwitterFactory;

    invoke-direct {v2}, Ltwitter4j/TwitterFactory;-><init>()V

    invoke-virtual {v2}, Ltwitter4j/TwitterFactory;->getInstance()Ltwitter4j/Twitter;

    move-result-object v2

    iput-object v2, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->twitter:Ltwitter4j/Twitter;

    .line 461
    iget-object v2, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->twitter:Ltwitter4j/Twitter;

    const-string/jumbo v3, "NsbRRqsFHd9kzOouTwbgg"

    const-string/jumbo v4, "CyP0bJ5wUWaJNVJOlKvsOToRhGH1stOQrDdDaI8"

    invoke-interface {v2, v3, v4}, Ltwitter4j/Twitter;->setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v2, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->twitter:Ltwitter4j/Twitter;

    new-instance v3, Ltwitter4j/auth/AccessToken;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/twitter/TwitterAccessToken;->getToken()Ljava/lang/String;

    move-result-object v4

    .line 464
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/twitter/TwitterAccessToken;->getTokenSecret()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ltwitter4j/auth/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    invoke-interface {v2, v3}, Ltwitter4j/Twitter;->setOAuthAccessToken(Ltwitter4j/auth/AccessToken;)V

    .line 466
    iget-object v2, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->twitterFriendListView:Landroid/widget/ListView;

    new-instance v3, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;-><init>(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 626
    iget-object v2, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->twitterFriendListView:Landroid/widget/ListView;

    new-instance v3, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$4;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$4;-><init>(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 657
    new-instance v2, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$5;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$5;-><init>(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)V

    new-array v3, v6, [Ljava/lang/Void;

    .line 729
    invoke-virtual {v2, v3}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v1, 0x0

    .line 735
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 746
    invoke-super {p0, p1}, Lcom/liquable/nemo/BaseFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    .line 748
    :goto_0
    return v0

    .line 737
    :pswitch_0
    new-instance v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem;

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem;-><init>(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$1;)V

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem;->run()V

    .line 748
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 740
    :pswitch_1
    new-instance v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem;

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem;-><init>(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$1;)V

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem;->run()V

    goto :goto_1

    .line 743
    :pswitch_2
    new-instance v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$LogoutTwitterItem;

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$LogoutTwitterItem;-><init>(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$1;)V

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$LogoutTwitterItem;->run()V

    goto :goto_1

    .line 735
    nop

    :pswitch_data_0
    .packed-switch 0x7f08037d
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
