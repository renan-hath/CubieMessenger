.class Lcom/liquable/nemo/setting/BlockListActivity$2$1;
.super Ljava/lang/Object;
.source "BlockListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/setting/BlockListActivity$2;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/setting/BlockListActivity$2;

.field final synthetic val$friend:Lcom/liquable/nemo/friend/model/Account;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/setting/BlockListActivity$2;Lcom/liquable/nemo/friend/model/Account;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/setting/BlockListActivity$2;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/liquable/nemo/setting/BlockListActivity$2$1;->this$1:Lcom/liquable/nemo/setting/BlockListActivity$2;

    iput-object p2, p0, Lcom/liquable/nemo/setting/BlockListActivity$2$1;->val$friend:Lcom/liquable/nemo/friend/model/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 91
    packed-switch p2, :pswitch_data_0

    .line 102
    :goto_0
    :pswitch_0
    return-void

    .line 93
    :pswitch_1
    iget-object v0, p0, Lcom/liquable/nemo/setting/BlockListActivity$2$1;->this$1:Lcom/liquable/nemo/setting/BlockListActivity$2;

    iget-object v0, v0, Lcom/liquable/nemo/setting/BlockListActivity$2;->this$0:Lcom/liquable/nemo/setting/BlockListActivity;

    iget-object v1, p0, Lcom/liquable/nemo/setting/BlockListActivity$2$1;->val$friend:Lcom/liquable/nemo/friend/model/Account;

    # invokes: Lcom/liquable/nemo/setting/BlockListActivity;->unblockFriend(Lcom/liquable/nemo/friend/model/Account;)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/setting/BlockListActivity;->access$100(Lcom/liquable/nemo/setting/BlockListActivity;Lcom/liquable/nemo/friend/model/Account;)V

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
