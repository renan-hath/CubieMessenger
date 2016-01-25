.class Lcom/liquable/nemo/cubiehead/ChattingLite$9;
.super Ljava/lang/Object;
.source "ChattingLite.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/cubiehead/ChattingLite;->createChatGroupItem(Ljava/lang/String;)Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

.field final synthetic val$item:Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/cubiehead/ChattingLite;Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/cubiehead/ChattingLite;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$9;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    iput-object p2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$9;->val$item:Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 350
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$9;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$9;->val$item:Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;

    # invokes: Lcom/liquable/nemo/cubiehead/ChattingLite;->openChatGroup(Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$1200(Lcom/liquable/nemo/cubiehead/ChattingLite;Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;)V

    .line 351
    return-void
.end method
