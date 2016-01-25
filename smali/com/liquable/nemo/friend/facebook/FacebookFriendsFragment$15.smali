.class Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$15;
.super Ljava/lang/Object;
.source "FacebookFriendsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->showToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    .prologue
    .line 545
    iput-object p1, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$15;->this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    iput-object p2, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$15;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$15;->this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$15;->val$message:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 549
    return-void
.end method
