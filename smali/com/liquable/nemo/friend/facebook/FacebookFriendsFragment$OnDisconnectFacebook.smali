.class final Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$OnDisconnectFacebook;
.super Ljava/lang/Object;
.source "FacebookFriendsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnDisconnectFacebook"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$OnDisconnectFacebook;->this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;
    .param p2, "x1"    # Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$1;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$OnDisconnectFacebook;-><init>(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 80
    new-instance v0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$OnDisconnectFacebook$1;

    iget-object v1, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$OnDisconnectFacebook;->this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$OnDisconnectFacebook$1;-><init>(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$OnDisconnectFacebook;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 104
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$OnDisconnectFacebook$1;->execute([Ljava/lang/Object;)V

    .line 105
    return-void
.end method
