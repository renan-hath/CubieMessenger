.class Lcom/liquable/nemo/main/MainInviteFriendView$3;
.super Ljava/lang/Object;
.source "MainInviteFriendView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/main/MainInviteFriendView;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/main/MainInviteFriendView;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/main/MainInviteFriendView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/main/MainInviteFriendView;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/liquable/nemo/main/MainInviteFriendView$3;->this$0:Lcom/liquable/nemo/main/MainInviteFriendView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 109
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->isExcludeInRecommend()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/liquable/nemo/main/MainInviteFriendView$3;->this$0:Lcom/liquable/nemo/main/MainInviteFriendView;

    invoke-virtual {v0}, Lcom/liquable/nemo/main/MainInviteFriendView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d01d3

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/main/MainInviteFriendView$3;->this$0:Lcom/liquable/nemo/main/MainInviteFriendView;

    invoke-virtual {v0}, Lcom/liquable/nemo/main/MainInviteFriendView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/liquable/nemo/main/MainInviteFriendView$3;->this$0:Lcom/liquable/nemo/main/MainInviteFriendView;

    invoke-virtual {v2}, Lcom/liquable/nemo/main/MainInviteFriendView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/liquable/nemo/friend/RecommendFriendActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
