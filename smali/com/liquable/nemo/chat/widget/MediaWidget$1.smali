.class Lcom/liquable/nemo/chat/widget/MediaWidget$1;
.super Ljava/lang/Object;
.source "MediaWidget.java"

# interfaces
.implements Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/widget/MediaWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/widget/MediaWidget;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/widget/MediaWidget;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/widget/MediaWidget;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/liquable/nemo/chat/widget/MediaWidget$1;->this$0:Lcom/liquable/nemo/chat/widget/MediaWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "oldLeft"    # I
    .param p4, "oldTop"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/MediaWidget$1;->this$0:Lcom/liquable/nemo/chat/widget/MediaWidget;

    # invokes: Lcom/liquable/nemo/chat/widget/MediaWidget;->showHideTabArrow()V
    invoke-static {v0}, Lcom/liquable/nemo/chat/widget/MediaWidget;->access$000(Lcom/liquable/nemo/chat/widget/MediaWidget;)V

    .line 95
    return-void
.end method
