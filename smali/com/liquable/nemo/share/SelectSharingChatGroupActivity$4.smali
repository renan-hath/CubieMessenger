.class Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$4;
.super Ljava/lang/Object;
.source "SelectSharingChatGroupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    .prologue
    .line 638
    iput-object p1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$4;->this$0:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 641
    iget-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$4;->this$0:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    iget-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$4;->this$0:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    # getter for: Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->chatsBtn:Landroid/view/View;
    invoke-static {v1}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->access$700(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;)Landroid/view/View;

    move-result-object v1

    # invokes: Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->selectBtn(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->access$800(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;Landroid/view/View;)V

    .line 642
    iget-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$4;->this$0:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    # getter for: Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->allChatGroupsListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->access$900(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$4;->this$0:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    # getter for: Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->recentChatsAdapter:Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;
    invoke-static {v1}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->access$400(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;)Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 643
    return-void
.end method
