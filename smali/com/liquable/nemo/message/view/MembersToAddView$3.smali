.class Lcom/liquable/nemo/message/view/MembersToAddView$3;
.super Ljava/lang/Object;
.source "MembersToAddView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/message/view/MembersToAddView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/message/view/MembersToAddView;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/message/view/MembersToAddView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/message/view/MembersToAddView;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/liquable/nemo/message/view/MembersToAddView$3;->this$0:Lcom/liquable/nemo/message/view/MembersToAddView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/group/model/ChatGroup;

    .line 109
    .local v0, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    iget-object v2, p0, Lcom/liquable/nemo/message/view/MembersToAddView$3;->this$0:Lcom/liquable/nemo/message/view/MembersToAddView;

    invoke-virtual {v2}, Lcom/liquable/nemo/message/view/MembersToAddView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 110
    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v3

    .line 109
    invoke-static {v2, v3}, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->createIntentForAddFriend(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 111
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/liquable/nemo/message/view/MembersToAddView$3;->this$0:Lcom/liquable/nemo/message/view/MembersToAddView;

    invoke-virtual {v2}, Lcom/liquable/nemo/message/view/MembersToAddView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 112
    return-void
.end method
