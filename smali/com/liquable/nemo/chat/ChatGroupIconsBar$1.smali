.class Lcom/liquable/nemo/chat/ChatGroupIconsBar$1;
.super Ljava/lang/Object;
.source "ChatGroupIconsBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ChatGroupIconsBar;->initChatGroupIcons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/ChatGroupIconsBar;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/ChatGroupIconsBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/ChatGroupIconsBar;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar$1;->this$0:Lcom/liquable/nemo/chat/ChatGroupIconsBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/group/model/ChatGroup;

    .line 143
    .local v0, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    if-eqz v0, :cond_0

    .line 144
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar$1;->this$0:Lcom/liquable/nemo/chat/ChatGroupIconsBar;

    # invokes: Lcom/liquable/nemo/chat/ChatGroupIconsBar;->onChatGroupClicked(Lcom/liquable/nemo/group/model/ChatGroup;)V
    invoke-static {v1, v0}, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->access$100(Lcom/liquable/nemo/chat/ChatGroupIconsBar;Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 146
    :cond_0
    return-void
.end method
