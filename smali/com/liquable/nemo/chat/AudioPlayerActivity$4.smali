.class Lcom/liquable/nemo/chat/AudioPlayerActivity$4;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/AudioPlayerActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/AudioPlayerActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/AudioPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/AudioPlayerActivity;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity$4;->this$0:Lcom/liquable/nemo/chat/AudioPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private switchMusic(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 227
    iget-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity$4;->this$0:Lcom/liquable/nemo/chat/AudioPlayerActivity;

    # getter for: Lcom/liquable/nemo/chat/AudioPlayerActivity;->adapter:Lcom/liquable/nemo/chat/AudioPlayerListAdapter;
    invoke-static {v0}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->access$700(Lcom/liquable/nemo/chat/AudioPlayerActivity;)Lcom/liquable/nemo/chat/AudioPlayerListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/AudioPlayerListAdapter;->setItemChecked(I)V

    .line 228
    iget-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity$4;->this$0:Lcom/liquable/nemo/chat/AudioPlayerActivity;

    # getter for: Lcom/liquable/nemo/chat/AudioPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->access$000(Lcom/liquable/nemo/chat/AudioPlayerActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity$4;->this$0:Lcom/liquable/nemo/chat/AudioPlayerActivity;

    # getter for: Lcom/liquable/nemo/chat/AudioPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->access$000(Lcom/liquable/nemo/chat/AudioPlayerActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity$4;->this$0:Lcom/liquable/nemo/chat/AudioPlayerActivity;

    const/4 v1, 0x1

    # invokes: Lcom/liquable/nemo/chat/AudioPlayerActivity;->initAudioInfo(Z)Z
    invoke-static {v0, v1}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->access$800(Lcom/liquable/nemo/chat/AudioPlayerActivity;Z)Z

    .line 232
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-direct {p0, p3}, Lcom/liquable/nemo/chat/AudioPlayerActivity$4;->switchMusic(I)V

    .line 224
    return-void
.end method
