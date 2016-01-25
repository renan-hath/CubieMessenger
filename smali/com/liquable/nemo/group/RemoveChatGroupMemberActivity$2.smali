.class Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$2;
.super Ljava/lang/Object;
.source "RemoveChatGroupMemberActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;->show(Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/friend/model/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;

.field final synthetic val$chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

.field final synthetic val$context:Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;

.field final synthetic val$removedAccount:Lcom/liquable/nemo/friend/model/Account;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/friend/model/Account;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$2;->this$0:Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;

    iput-object p2, p0, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$2;->val$context:Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;

    iput-object p3, p0, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$2;->val$chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    iput-object p4, p0, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$2;->val$removedAccount:Lcom/liquable/nemo/friend/model/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 125
    new-instance v0, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$2$1;

    iget-object v1, p0, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$2;->val$context:Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$2$1;-><init>(Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$2;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 159
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$2$1;->execute([Ljava/lang/Object;)V

    .line 161
    return-void
.end method
