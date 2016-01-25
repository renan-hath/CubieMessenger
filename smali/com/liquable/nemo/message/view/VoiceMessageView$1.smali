.class Lcom/liquable/nemo/message/view/VoiceMessageView$1;
.super Ljava/lang/Object;
.source "VoiceMessageView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/message/view/VoiceMessageView;->onThumbnailClicked(Landroid/content/Context;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/message/view/VoiceMessageView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/message/view/VoiceMessageView;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/message/view/VoiceMessageView;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/liquable/nemo/message/view/VoiceMessageView$1;->this$0:Lcom/liquable/nemo/message/view/VoiceMessageView;

    iput-object p2, p0, Lcom/liquable/nemo/message/view/VoiceMessageView$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/liquable/nemo/message/view/VoiceMessageView$1;->this$0:Lcom/liquable/nemo/message/view/VoiceMessageView;

    iget-object v1, p0, Lcom/liquable/nemo/message/view/VoiceMessageView$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/liquable/nemo/message/view/VoiceMessageView;->playIntent(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/message/view/VoiceMessageView;->access$000(Lcom/liquable/nemo/message/view/VoiceMessageView;Landroid/content/Context;)V

    .line 53
    return-void
.end method
