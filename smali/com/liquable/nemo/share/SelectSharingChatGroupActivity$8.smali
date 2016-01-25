.class Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$8;
.super Ljava/lang/Object;
.source "SelectSharingChatGroupActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

.field final synthetic val$sharableUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    .prologue
    .line 682
    iput-object p1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$8;->this$0:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    iput-object p2, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$8;->val$sharableUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 688
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/liquable/nemo/share/SelectSharingAppsAdapter;

    if-eqz v0, :cond_1

    .line 689
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/share/SelectSharingAppsAdapter;

    iget-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$8;->val$sharableUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$8;->this$0:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    iget-object v3, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$8;->this$0:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    .line 691
    invoke-virtual {v3}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    # invokes: Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->extractTextFromSharable(Landroid/content/Intent;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->access$1400(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 689
    invoke-virtual {v0, p3, v1, v2}, Lcom/liquable/nemo/share/SelectSharingAppsAdapter;->open(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 695
    :cond_0
    :goto_0
    return-void

    .line 692
    :cond_1
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;

    if-eqz v0, :cond_0

    .line 693
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;

    invoke-virtual {v0, p3}, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;->toggleChecked(I)V

    goto :goto_0
.end method
