.class Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$6;
.super Ljava/lang/Object;
.source "FacebookFriendsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->popupAddFacebookFriendDialog(Lcom/liquable/nemo/model/account/AccountDto;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    .prologue
    .line 399
    iput-object p1, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$6;->this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 403
    return-void
.end method
