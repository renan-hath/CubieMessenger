.class Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$2;
.super Ljava/lang/Object;
.source "ViewSpaceFriendProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->showInviteButton(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$2;->this$0:Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$2;Lcom/liquable/nemo/model/account/AccountDto;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$2;->lambda$onClick$37(Lcom/liquable/nemo/model/account/AccountDto;)V

    return-void
.end method

.method private synthetic lambda$onClick$37(Lcom/liquable/nemo/model/account/AccountDto;)V
    .locals 1
    .param p1, "input"    # Lcom/liquable/nemo/model/account/AccountDto;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$2;->this$0:Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;

    # invokes: Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->inviteFriend(Lcom/liquable/nemo/model/account/AccountDto;)V
    invoke-static {v0, p1}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->access$300(Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;Lcom/liquable/nemo/model/account/AccountDto;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$2;->this$0:Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;

    const/4 v1, 0x6

    # invokes: Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->access$200(Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;I)V

    .line 93
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$2;->this$0:Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->friendDaemon:Lcom/liquable/nemo/friend/FriendDaemon;

    iget-object v2, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$2;->this$0:Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;

    # getter for: Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->spaceUserUid:Ljava/lang/String;
    invoke-static {v2}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->access$000(Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/friend/FriendDaemon;->findFriendCandidateByUid(Ljava/lang/String;)Lcom/liquable/future/IFuture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->addToSession(Lcom/liquable/future/IFuture;)Lcom/liquable/future/IFuture;

    move-result-object v0

    invoke-static {p0}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$2$$Lambda$1;->lambdaFactory$(Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$2;)Lcom/liquable/future/Consumer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/liquable/future/IFuture;->consume(Lcom/liquable/future/Consumer;)Lcom/liquable/future/IFuture;

    .line 95
    return-void
.end method
