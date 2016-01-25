.class Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$LogoutTwitterItem$1;
.super Ljava/lang/Object;
.source "TwitterFriendListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$LogoutTwitterItem;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$LogoutTwitterItem;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$LogoutTwitterItem;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$LogoutTwitterItem;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$LogoutTwitterItem$1;->this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$LogoutTwitterItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 140
    new-instance v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$LogoutTwitterItem$1$1;

    iget-object v1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$LogoutTwitterItem$1;->this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$LogoutTwitterItem;

    iget-object v1, v1, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$LogoutTwitterItem;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$LogoutTwitterItem$1$1;-><init>(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$LogoutTwitterItem$1;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 165
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$LogoutTwitterItem$1$1;->execute([Ljava/lang/Object;)V

    .line 166
    return-void
.end method
