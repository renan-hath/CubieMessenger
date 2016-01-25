.class Lcom/liquable/nemo/chat/ChattingActivity$29;
.super Ljava/lang/Object;
.source "ChattingActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ChattingActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/ChattingActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/ChattingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/ChattingActivity;

    .prologue
    .line 1576
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChattingActivity$29;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1583
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/message/model/DomainMessage;

    .line 1584
    .local v1, "message":Lcom/liquable/nemo/message/model/DomainMessage;
    instance-of v2, v1, Lcom/liquable/nemo/message/model/CustomStickerMessage;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 1585
    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/message/model/DomainMessage;->isSender(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1586
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity$29;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-static {v2}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/liquable/nemo/chat/ChattingActivity$29;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    const v6, 0x7f0d0459

    .line 1587
    invoke-virtual {v5, v6}, Lcom/liquable/nemo/chat/ChattingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    new-instance v4, Lcom/liquable/nemo/chat/ChattingActivity$29$1;

    invoke-direct {v4, p0, v1}, Lcom/liquable/nemo/chat/ChattingActivity$29$1;-><init>(Lcom/liquable/nemo/chat/ChattingActivity$29;Lcom/liquable/nemo/message/model/DomainMessage;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1594
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1595
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1597
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method
