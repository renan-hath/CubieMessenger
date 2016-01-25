.class Lcom/liquable/nemo/main/MainInviteFriendView$4;
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
    .line 122
    iput-object p1, p0, Lcom/liquable/nemo/main/MainInviteFriendView$4;->this$0:Lcom/liquable/nemo/main/MainInviteFriendView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 126
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/liquable/nemo/main/MainInviteFriendView$4;->this$0:Lcom/liquable/nemo/main/MainInviteFriendView;

    invoke-virtual {v1}, Lcom/liquable/nemo/main/MainInviteFriendView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/liquable/nemo/friend/facebook/FacebookFriendsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/liquable/nemo/main/MainInviteFriendView$4;->this$0:Lcom/liquable/nemo/main/MainInviteFriendView;

    invoke-virtual {v1}, Lcom/liquable/nemo/main/MainInviteFriendView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 128
    return-void
.end method
