.class Lcom/liquable/nemo/voip/ChooseReceiverActivity$1;
.super Ljava/lang/Object;
.source "ChooseReceiverActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/voip/ChooseReceiverActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/voip/ChooseReceiverActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/voip/ChooseReceiverActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/voip/ChooseReceiverActivity;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/liquable/nemo/voip/ChooseReceiverActivity$1;->this$0:Lcom/liquable/nemo/voip/ChooseReceiverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 65
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/model/Account;

    .line 67
    .local v0, "friend":Lcom/liquable/nemo/friend/model/Account;
    iget-object v1, p0, Lcom/liquable/nemo/voip/ChooseReceiverActivity$1;->this$0:Lcom/liquable/nemo/voip/ChooseReceiverActivity;

    new-instance v2, Lcom/liquable/nemo/voip/DialActivity$CreateIntent;

    iget-object v3, p0, Lcom/liquable/nemo/voip/ChooseReceiverActivity$1;->this$0:Lcom/liquable/nemo/voip/ChooseReceiverActivity;

    const-string/jumbo v4, "choose_receiver"

    invoke-direct {v2, v3, v0, v4}, Lcom/liquable/nemo/voip/DialActivity$CreateIntent;-><init>(Landroid/content/Context;Lcom/liquable/nemo/friend/model/Account;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/voip/ChooseReceiverActivity;->startActivity(Landroid/content/Intent;)V

    .line 70
    iget-object v1, p0, Lcom/liquable/nemo/voip/ChooseReceiverActivity$1;->this$0:Lcom/liquable/nemo/voip/ChooseReceiverActivity;

    invoke-virtual {v1}, Lcom/liquable/nemo/voip/ChooseReceiverActivity;->finish()V

    .line 71
    return-void
.end method
