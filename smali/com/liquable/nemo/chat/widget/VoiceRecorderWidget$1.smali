.class Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$1;
.super Ljava/lang/Object;
.source "VoiceRecorderWidget.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$1;->this$0:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$1;->this$0:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    # invokes: Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->reset()V
    invoke-static {v0}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->access$000(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;)V

    .line 82
    return-void
.end method
