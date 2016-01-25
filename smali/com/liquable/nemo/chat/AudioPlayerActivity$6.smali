.class Lcom/liquable/nemo/chat/AudioPlayerActivity$6;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/AudioPlayerActivity;->onPrevBtnClickListener()Landroid/view/View$OnClickListener;
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
    .line 247
    iput-object p1, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity$6;->this$0:Lcom/liquable/nemo/chat/AudioPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity$6;->this$0:Lcom/liquable/nemo/chat/AudioPlayerActivity;

    # invokes: Lcom/liquable/nemo/chat/AudioPlayerActivity;->prevMusic()V
    invoke-static {v0}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->access$900(Lcom/liquable/nemo/chat/AudioPlayerActivity;)V

    .line 251
    return-void
.end method
