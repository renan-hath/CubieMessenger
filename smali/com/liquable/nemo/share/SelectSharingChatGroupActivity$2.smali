.class Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2;
.super Ljava/lang/Object;
.source "SelectSharingChatGroupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->initShareItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

.field final synthetic val$shareType:Lcom/liquable/nemo/share/Sharable;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;Lcom/liquable/nemo/share/Sharable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    .prologue
    .line 531
    iput-object p1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2;->this$0:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    iput-object p2, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2;->val$shareType:Lcom/liquable/nemo/share/Sharable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 534
    iget-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2;->this$0:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    # invokes: Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->getSelectedChatGroupTopics()Ljava/util/List;
    invoke-static {v1}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->access$200(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;)Ljava/util/List;

    move-result-object v0

    .line 535
    .local v0, "selectedChatGroups":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 536
    iget-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2;->this$0:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    iget-object v2, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2;->this$0:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    const v3, 0x7f0d038e

    .line 537
    invoke-virtual {v2, v3}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 536
    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 538
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 595
    :goto_0
    return-void

    .line 541
    :cond_0
    new-instance v1, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2$1;

    iget-object v2, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2;->this$0:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    invoke-direct {v1, p0, v2, v0}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2$1;-><init>(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2;Landroid/content/Context;Ljava/util/List;)V

    new-array v2, v4, [Ljava/lang/Void;

    .line 594
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2$1;->execute([Ljava/lang/Object;)V

    goto :goto_0
.end method
