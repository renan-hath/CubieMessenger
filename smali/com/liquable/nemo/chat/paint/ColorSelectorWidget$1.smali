.class Lcom/liquable/nemo/chat/paint/ColorSelectorWidget$1;
.super Ljava/lang/Object;
.source "ColorSelectorWidget.java"

# interfaces
.implements Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget$1;->this$0:Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;

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
    .line 47
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget$1;->this$0:Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;

    # invokes: Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;->showHideTabArrow()V
    invoke-static {v0}, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;->access$000(Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;)V

    .line 48
    return-void
.end method
