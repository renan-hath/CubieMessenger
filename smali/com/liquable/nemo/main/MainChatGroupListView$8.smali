.class Lcom/liquable/nemo/main/MainChatGroupListView$8;
.super Ljava/lang/Object;
.source "MainChatGroupListView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/main/MainChatGroupListView;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
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
    .line 379
    iput-object p1, p0, Lcom/liquable/nemo/main/MainChatGroupListView$8;->this$0:Lcom/liquable/nemo/main/MainChatGroupListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 382
    iget-object v0, p0, Lcom/liquable/nemo/main/MainChatGroupListView$8;->this$0:Lcom/liquable/nemo/main/MainChatGroupListView;

    iget-object v1, p0, Lcom/liquable/nemo/main/MainChatGroupListView$8;->this$0:Lcom/liquable/nemo/main/MainChatGroupListView;

    invoke-virtual {v1}, Lcom/liquable/nemo/main/MainChatGroupListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/liquable/nemo/friend/InviteFirendsActivity;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/main/MainChatGroupListView;->startActivity(Landroid/content/Intent;)V

    .line 383
    return-void
.end method
