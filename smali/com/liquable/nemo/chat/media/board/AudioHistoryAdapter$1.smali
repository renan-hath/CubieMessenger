.class Lcom/liquable/nemo/chat/media/board/AudioHistoryAdapter$1;
.super Ljava/lang/Object;
.source "AudioHistoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/media/board/AudioHistoryAdapter;->getMediaView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/media/board/AudioHistoryAdapter;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/media/board/AudioHistoryAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/media/board/AudioHistoryAdapter;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/liquable/nemo/chat/media/board/AudioHistoryAdapter$1;->this$0:Lcom/liquable/nemo/chat/media/board/AudioHistoryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 54
    .local v0, "uid":Ljava/lang/String;
    invoke-static {v0}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/chat/media/board/AudioHistoryAdapter$1;->this$0:Lcom/liquable/nemo/chat/media/board/AudioHistoryAdapter;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/chat/media/board/AudioHistoryAdapter;->onMediaClicked(Ljava/lang/String;)V

    goto :goto_0
.end method
