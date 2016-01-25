.class Lcom/liquable/nemo/chat/media/board/VoiceHistoryAdapter$1;
.super Ljava/lang/Object;
.source "VoiceHistoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/media/board/VoiceHistoryAdapter;->getMediaView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/media/board/VoiceHistoryAdapter;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/media/board/VoiceHistoryAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/media/board/VoiceHistoryAdapter;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/liquable/nemo/chat/media/board/VoiceHistoryAdapter$1;->this$0:Lcom/liquable/nemo/chat/media/board/VoiceHistoryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 52
    .local v0, "uid":Ljava/lang/String;
    invoke-static {v0}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/chat/media/board/VoiceHistoryAdapter$1;->this$0:Lcom/liquable/nemo/chat/media/board/VoiceHistoryAdapter;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/chat/media/board/VoiceHistoryAdapter;->onMediaClicked(Ljava/lang/String;)V

    goto :goto_0
.end method
