.class Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$DisconnectFromFacebookItem;
.super Lnet/londatiga/android/ActionItem;
.source "FacebookFriendsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisconnectFromFacebookItem"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$DisconnectFromFacebookItem;->this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    invoke-direct {p0}, Lnet/londatiga/android/ActionItem;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;
    .param p2, "x1"    # Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$1;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$DisconnectFromFacebookItem;-><init>(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 52
    iget-object v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$DisconnectFromFacebookItem;->this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$DisconnectFromFacebookItem;->this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    const v2, 0x7f0d03b3

    .line 53
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$OnDisconnectFacebook;

    iget-object v3, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$DisconnectFromFacebookItem;->this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    invoke-direct {v2, v3, v4}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$OnDisconnectFacebook;-><init>(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$DisconnectFromFacebookItem;->this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    const v2, 0x7f0d00c5

    .line 54
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d01fc

    .line 55
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d01fb

    .line 56
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 58
    return-void
.end method
