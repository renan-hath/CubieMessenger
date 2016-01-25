.class Lcom/liquable/nemo/setting/BlockListActivity$2;
.super Ljava/lang/Object;
.source "BlockListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/setting/BlockListActivity;->onLoggedInResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/setting/BlockListActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/setting/BlockListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/setting/BlockListActivity;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/liquable/nemo/setting/BlockListActivity$2;->this$0:Lcom/liquable/nemo/setting/BlockListActivity;

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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 79
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/model/Account;

    .line 80
    .local v0, "friend":Lcom/liquable/nemo/friend/model/Account;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/liquable/nemo/setting/BlockListActivity$2;->this$0:Lcom/liquable/nemo/setting/BlockListActivity;

    const v3, 0x7f0d04e1

    .line 81
    invoke-virtual {v2, v3}, Lcom/liquable/nemo/setting/BlockListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    .line 82
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 81
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/liquable/nemo/setting/BlockListActivity$2;->this$0:Lcom/liquable/nemo/setting/BlockListActivity;

    const v3, 0x7f0d00c5

    .line 83
    invoke-virtual {v2, v3}, Lcom/liquable/nemo/setting/BlockListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    .line 84
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 83
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 86
    .local v1, "items":[Ljava/lang/String;
    iget-object v2, p0, Lcom/liquable/nemo/setting/BlockListActivity$2;->this$0:Lcom/liquable/nemo/setting/BlockListActivity;

    invoke-static {v2}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/liquable/nemo/setting/BlockListActivity$2$1;

    invoke-direct {v3, p0, v0}, Lcom/liquable/nemo/setting/BlockListActivity$2$1;-><init>(Lcom/liquable/nemo/setting/BlockListActivity$2;Lcom/liquable/nemo/friend/model/Account;)V

    .line 87
    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 104
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 105
    return-void
.end method
