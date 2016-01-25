.class Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem$2;
.super Ljava/lang/Object;
.source "TwitterFriendListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem$2;->this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 70
    new-instance v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem$2$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem$2$1;-><init>(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem$2;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 115
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem$2$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 117
    return-void
.end method
