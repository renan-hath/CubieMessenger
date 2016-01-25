.class Lcom/liquable/nemo/friend/RecommendFriendFragment$2;
.super Ljava/lang/Object;
.source "RecommendFriendFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/friend/RecommendFriendFragment;->initRecommendView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/friend/RecommendFriendFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/friend/RecommendFriendFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/friend/RecommendFriendFragment;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/liquable/nemo/friend/RecommendFriendFragment$2;->this$0:Lcom/liquable/nemo/friend/RecommendFriendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/account/RecommendFriendDto;

    .line 89
    .local v0, "recommendFriend":Lcom/liquable/nemo/model/account/RecommendFriendDto;
    iget-object v1, p0, Lcom/liquable/nemo/friend/RecommendFriendFragment$2;->this$0:Lcom/liquable/nemo/friend/RecommendFriendFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/friend/RecommendFriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/friend/RecommendFriendFragment$RecommendFriendCallback;

    invoke-virtual {v0}, Lcom/liquable/nemo/model/account/RecommendFriendDto;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/liquable/nemo/friend/RecommendFriendFragment$RecommendFriendCallback;->onRecommendFriendClick(Ljava/lang/String;)V

    .line 90
    return-void
.end method
