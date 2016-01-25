.class Lcom/liquable/nemo/chat/paint/ColorSelectorWidget$2;
.super Ljava/lang/Object;
.source "ColorSelectorWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;->initColorBtns()V
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
    .line 72
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget$2;->this$0:Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 75
    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget$2;->this$0:Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;->setColor(I)V

    .line 76
    return-void
.end method
