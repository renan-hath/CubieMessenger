.class Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem$2;
.super Ljava/lang/Object;
.source "ChattingLiteChatGroupItem.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;-><init>(Landroid/content/Context;Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/util/ImageLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem$2;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method
