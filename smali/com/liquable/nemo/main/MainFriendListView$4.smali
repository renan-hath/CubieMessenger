.class Lcom/liquable/nemo/main/MainFriendListView$4;
.super Ljava/lang/Object;
.source "MainFriendListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/main/MainFriendListView;->initOnClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/main/MainFriendListView;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/main/MainFriendListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/main/MainFriendListView;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/liquable/nemo/main/MainFriendListView$4;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 256
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 262
    :goto_0
    return-void

    .line 259
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/group/model/ChatGroup;

    .line 260
    .local v0, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    iget-object v1, p0, Lcom/liquable/nemo/main/MainFriendListView$4;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    invoke-virtual {v1}, Lcom/liquable/nemo/main/MainFriendListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/main/MainFriendListView$4;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    invoke-virtual {v2}, Lcom/liquable/nemo/main/MainFriendListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 261
    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v3

    .line 260
    invoke-static {v2, v3}, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
