.class Lcom/liquable/nemo/message/view/AbstractMessageOtherView$1;
.super Ljava/lang/Object;
.source "AbstractMessageOtherView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/message/view/AbstractMessageOtherView;->initMessageBody(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/message/view/AbstractMessageOtherView;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/message/view/AbstractMessageOtherView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/message/view/AbstractMessageOtherView;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/liquable/nemo/message/view/AbstractMessageOtherView$1;->this$0:Lcom/liquable/nemo/message/view/AbstractMessageOtherView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 72
    .local v2, "tag":Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, v2

    .line 76
    check-cast v0, Lcom/liquable/nemo/friend/model/Account;

    .line 78
    .local v0, "friend":Lcom/liquable/nemo/friend/model/Account;
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->isFriend()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 79
    iget-object v3, p0, Lcom/liquable/nemo/message/view/AbstractMessageOtherView$1;->this$0:Lcom/liquable/nemo/message/view/AbstractMessageOtherView;

    iget-object v3, v3, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/liquable/nemo/profile/ViewFriendProfileActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 83
    .local v1, "intent":Landroid/content/Intent;
    :goto_1
    iget-object v3, p0, Lcom/liquable/nemo/message/view/AbstractMessageOtherView$1;->this$0:Lcom/liquable/nemo/message/view/AbstractMessageOtherView;

    iget-object v3, v3, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;->context:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 84
    iget-object v3, p0, Lcom/liquable/nemo/message/view/AbstractMessageOtherView$1;->this$0:Lcom/liquable/nemo/message/view/AbstractMessageOtherView;

    iget-object v3, v3, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;->context:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 81
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v3, p0, Lcom/liquable/nemo/message/view/AbstractMessageOtherView$1;->this$0:Lcom/liquable/nemo/message/view/AbstractMessageOtherView;

    iget-object v3, v3, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/liquable/nemo/profile/ViewAddFriendProfileActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .restart local v1    # "intent":Landroid/content/Intent;
    goto :goto_1
.end method
