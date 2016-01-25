.class Lcom/liquable/nemo/main/MainChatGroupListView$10;
.super Ljava/lang/Object;
.source "MainChatGroupListView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/main/MainChatGroupListView;->popupDeleteChatGroup(Lcom/liquable/nemo/group/model/ChatGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/main/MainChatGroupListView;

.field final synthetic val$chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/main/MainChatGroupListView;Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/main/MainChatGroupListView;

    .prologue
    .line 437
    iput-object p1, p0, Lcom/liquable/nemo/main/MainChatGroupListView$10;->this$0:Lcom/liquable/nemo/main/MainChatGroupListView;

    iput-object p2, p0, Lcom/liquable/nemo/main/MainChatGroupListView$10;->val$chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 440
    new-instance v0, Lcom/liquable/nemo/main/MainChatGroupListView$10$1;

    iget-object v1, p0, Lcom/liquable/nemo/main/MainChatGroupListView$10;->this$0:Lcom/liquable/nemo/main/MainChatGroupListView;

    invoke-virtual {v1}, Lcom/liquable/nemo/main/MainChatGroupListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/main/MainChatGroupListView$10$1;-><init>(Lcom/liquable/nemo/main/MainChatGroupListView$10;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 456
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/main/MainChatGroupListView$10$1;->execute([Ljava/lang/Object;)V

    .line 457
    return-void
.end method
