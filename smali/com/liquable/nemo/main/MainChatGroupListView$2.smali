.class Lcom/liquable/nemo/main/MainChatGroupListView$2;
.super Ljava/lang/Object;
.source "MainChatGroupListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/main/MainChatGroupListView;->batchedUpdate()V
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
    .line 144
    iput-object p1, p0, Lcom/liquable/nemo/main/MainChatGroupListView$2;->this$0:Lcom/liquable/nemo/main/MainChatGroupListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/liquable/nemo/main/MainChatGroupListView$2;->this$0:Lcom/liquable/nemo/main/MainChatGroupListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/main/MainChatGroupListView;->update(Z)V

    .line 148
    iget-object v0, p0, Lcom/liquable/nemo/main/MainChatGroupListView$2;->this$0:Lcom/liquable/nemo/main/MainChatGroupListView;

    const/4 v1, 0x0

    # setter for: Lcom/liquable/nemo/main/MainChatGroupListView;->pendingUpdate:Z
    invoke-static {v0, v1}, Lcom/liquable/nemo/main/MainChatGroupListView;->access$402(Lcom/liquable/nemo/main/MainChatGroupListView;Z)Z

    .line 149
    return-void
.end method
