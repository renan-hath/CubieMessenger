.class Lcom/liquable/nemo/cubiehead/ChattingLite$6;
.super Ljava/lang/Object;
.source "ChattingLite.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/cubiehead/ChattingLite;-><init>(Landroid/content/Context;Landroid/view/ViewManager;Lcom/liquable/nemo/cubiehead/ChattingLite$ChattingLiteCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/cubiehead/ChattingLite;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/cubiehead/ChattingLite;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$6;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$6;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    # getter for: Lcom/liquable/nemo/cubiehead/ChattingLite;->chattingLiteCallback:Lcom/liquable/nemo/cubiehead/ChattingLite$ChattingLiteCallback;
    invoke-static {v0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$600(Lcom/liquable/nemo/cubiehead/ChattingLite;)Lcom/liquable/nemo/cubiehead/ChattingLite$ChattingLiteCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/liquable/nemo/cubiehead/ChattingLite$ChattingLiteCallback;->onClose()V

    .line 254
    return-void
.end method
