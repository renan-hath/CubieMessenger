.class Lcom/liquable/nemo/chat/media/board/PaintHistoryAdapter$1;
.super Ljava/lang/Object;
.source "PaintHistoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/media/board/PaintHistoryAdapter;->getMediaView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/media/board/PaintHistoryAdapter;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/media/board/PaintHistoryAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/media/board/PaintHistoryAdapter;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/liquable/nemo/chat/media/board/PaintHistoryAdapter$1;->this$0:Lcom/liquable/nemo/chat/media/board/PaintHistoryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/PaintMessage;

    .line 77
    .local v0, "target":Lcom/liquable/nemo/message/model/PaintMessage;
    if-nez v0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/chat/media/board/PaintHistoryAdapter$1;->this$0:Lcom/liquable/nemo/chat/media/board/PaintHistoryAdapter;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/chat/media/board/PaintHistoryAdapter;->onMediaClicked(Lcom/liquable/nemo/message/model/PaintMessage;)V

    goto :goto_0
.end method
