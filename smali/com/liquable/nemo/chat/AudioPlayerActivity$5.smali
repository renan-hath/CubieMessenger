.class Lcom/liquable/nemo/chat/AudioPlayerActivity$5;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/AudioPlayerActivity;->onNextBtnClickListener()Landroid/view/View$OnClickListener;
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
    .line 237
    iput-object p1, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity$5;->this$0:Lcom/liquable/nemo/chat/AudioPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity$5;->this$0:Lcom/liquable/nemo/chat/AudioPlayerActivity;

    const/4 v1, 0x0

    # invokes: Lcom/liquable/nemo/chat/AudioPlayerActivity;->nextMusic(Z)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->access$600(Lcom/liquable/nemo/chat/AudioPlayerActivity;Z)V

    .line 241
    return-void
.end method
