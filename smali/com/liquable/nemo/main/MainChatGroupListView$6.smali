.class Lcom/liquable/nemo/main/MainChatGroupListView$6;
.super Ljava/lang/Object;
.source "MainChatGroupListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/main/MainChatGroupListView;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/main/MainChatGroupListView;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/main/MainChatGroupListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/main/MainChatGroupListView;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/liquable/nemo/main/MainChatGroupListView$6;->this$0:Lcom/liquable/nemo/main/MainChatGroupListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x1

    .line 311
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/group/model/ChatGroup;

    .line 312
    .local v0, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    if-nez v0, :cond_0

    .line 338
    :goto_0
    return v6

    .line 315
    :cond_0
    const/4 v3, 0x3

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/liquable/nemo/main/MainChatGroupListView$6;->this$0:Lcom/liquable/nemo/main/MainChatGroupListView;

    .line 316
    invoke-virtual {v4}, Lcom/liquable/nemo/main/MainChatGroupListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0d0020

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/liquable/nemo/main/MainChatGroupListView$6;->this$0:Lcom/liquable/nemo/main/MainChatGroupListView;

    .line 317
    invoke-virtual {v3}, Lcom/liquable/nemo/main/MainChatGroupListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->isOneToOne()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f0d00e9

    :goto_1
    invoke-virtual {v4, v3}, Landroid/support/v4/app/FragmentActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 318
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/liquable/nemo/main/MainChatGroupListView$6;->this$0:Lcom/liquable/nemo/main/MainChatGroupListView;

    .line 319
    invoke-virtual {v4}, Lcom/liquable/nemo/main/MainChatGroupListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0d0143

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 320
    .local v2, "items":[Ljava/lang/String;
    iget-object v3, p0, Lcom/liquable/nemo/main/MainChatGroupListView$6;->this$0:Lcom/liquable/nemo/main/MainChatGroupListView;

    invoke-virtual {v3}, Lcom/liquable/nemo/main/MainChatGroupListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/liquable/nemo/main/MainChatGroupListView$6$1;

    invoke-direct {v4, p0, v0}, Lcom/liquable/nemo/main/MainChatGroupListView$6$1;-><init>(Lcom/liquable/nemo/main/MainChatGroupListView$6;Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 321
    invoke-virtual {v3, v2, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 336
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 337
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 317
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    .end local v2    # "items":[Ljava/lang/String;
    :cond_1
    const v3, 0x7f0d017a

    goto :goto_1
.end method
