.class Lcom/liquable/nemo/chat/media/board/VideoHistoryAdapter$1;
.super Ljava/lang/Object;
.source "VideoHistoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/media/board/VideoHistoryAdapter;->getMediaView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/media/board/VideoHistoryAdapter;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/media/board/VideoHistoryAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/media/board/VideoHistoryAdapter;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/liquable/nemo/chat/media/board/VideoHistoryAdapter$1;->this$0:Lcom/liquable/nemo/chat/media/board/VideoHistoryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/VideoMessage;

    .line 60
    .local v0, "target":Lcom/liquable/nemo/message/model/VideoMessage;
    if-nez v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/chat/media/board/VideoHistoryAdapter$1;->this$0:Lcom/liquable/nemo/chat/media/board/VideoHistoryAdapter;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/chat/media/board/VideoHistoryAdapter;->onMediaClicked(Lcom/liquable/nemo/message/model/VideoMessage;)V

    goto :goto_0
.end method
