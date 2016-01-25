.class Lcom/liquable/nemo/main/MainInviteFriendView$5$1;
.super Ljava/lang/Object;
.source "MainInviteFriendView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/main/MainInviteFriendView$5;->onPostExecute(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/main/MainInviteFriendView$5;

.field final synthetic val$action:Lcom/liquable/nemo/targetedintent/TargetedAction;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/main/MainInviteFriendView$5;Lcom/liquable/nemo/targetedintent/TargetedAction;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/main/MainInviteFriendView$5;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/liquable/nemo/main/MainInviteFriendView$5$1;->this$1:Lcom/liquable/nemo/main/MainInviteFriendView$5;

    iput-object p2, p0, Lcom/liquable/nemo/main/MainInviteFriendView$5$1;->val$action:Lcom/liquable/nemo/targetedintent/TargetedAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/liquable/nemo/main/MainInviteFriendView$5$1;->val$action:Lcom/liquable/nemo/targetedintent/TargetedAction;

    iget-object v1, p0, Lcom/liquable/nemo/main/MainInviteFriendView$5$1;->this$1:Lcom/liquable/nemo/main/MainInviteFriendView$5;

    iget-object v1, v1, Lcom/liquable/nemo/main/MainInviteFriendView$5;->this$0:Lcom/liquable/nemo/main/MainInviteFriendView;

    invoke-virtual {v1}, Lcom/liquable/nemo/main/MainInviteFriendView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/targetedintent/TargetedAction;->startActivity(Landroid/content/Context;)V

    .line 164
    return-void
.end method
