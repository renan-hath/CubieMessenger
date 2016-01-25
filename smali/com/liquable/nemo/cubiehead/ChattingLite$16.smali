.class Lcom/liquable/nemo/cubiehead/ChattingLite$16;
.super Ljava/lang/Object;
.source "ChattingLite.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/cubiehead/ChattingLite;->initialReadMoreBtn()V
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
    .line 617
    iput-object p1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$16;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 620
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$16;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    # invokes: Lcom/liquable/nemo/cubiehead/ChattingLite;->enterChattingActivity()V
    invoke-static {v0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$1700(Lcom/liquable/nemo/cubiehead/ChattingLite;)V

    .line 621
    return-void
.end method
