.class Lcom/liquable/nemo/status/view/ChatStatusView$1;
.super Ljava/lang/Object;
.source "ChatStatusView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/status/view/ChatStatusView;->clearStatus(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/status/view/ChatStatusView;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/status/view/ChatStatusView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/status/view/ChatStatusView;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/liquable/nemo/status/view/ChatStatusView$1;->this$0:Lcom/liquable/nemo/status/view/ChatStatusView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/liquable/nemo/status/view/ChatStatusView$1;->this$0:Lcom/liquable/nemo/status/view/ChatStatusView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/status/view/ChatStatusView;->setVisibility(I)V

    .line 235
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 240
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 245
    return-void
.end method
